-- loader_binding.lua -- a loader may only ever be bound to an Import or an Export.
-- Anything else is refused and the item handed back.
--
-- The only state here is `storage.loader_watch`, which exists solely to notice a
-- bound machine going away. Every other question about a loader is answered by the
-- two tiles either side of it, so never add a table tracking them.

local refuse = require("services.logistics.refuse")

local binding = {}

-- The single source of truth for what a loader may bind to. control.lua generates
-- its event filters from this table in a loop, so adding a third machine cannot
-- leave a removal filter behind.
binding.machines = { "import", "export" }

-- Same reason: control.lua filters build events on this type.
binding.loader = "loader-1x1"

local LOADER = binding.loader

local OFFSET = {
    [defines.direction.north] = { 0, -1 },
    [defines.direction.east]  = { 1, 0 },
    [defines.direction.south] = { 0, 1 },
    [defines.direction.west]  = { -1, 0 },
}

local OPPOSITE = {
    [defines.direction.north] = defines.direction.south,
    [defines.direction.east]  = defines.direction.west,
    [defines.direction.south] = defines.direction.north,
    [defines.direction.west]  = defines.direction.east,
}


-- Inset so it cannot clip a neighbour, an area rather than a point so a 3x3 body is
-- found by whichever part overlaps. Not `find_entities_filtered{position=}`: the
-- docs never say which box `position` tests, and it is unverified for ghosts.
local function tile_area(x, y)
    return { { x - 0.4, y - 0.4 }, { x + 0.4, y + 0.4 } }
end


-- A ghost counts. Construction bots revive a blueprint in arbitrary order, so a
-- loader routinely comes up before its machine, and refusing it there would cost
-- roughly half of all bot-built blueprints their loader. `force` is not optional:
-- without it another force's ghost validates your loader.
local function machine_at(loader, direction)
    local offset = OFFSET[direction]
    if not offset then
        return nil
    end
    local surface = loader.surface
    local area = tile_area(loader.position.x + offset[1], loader.position.y + offset[2])
    local force = loader.force
    return surface.find_entities_filtered({ area = area, name = binding.machines, force = force })[1]
        or surface.find_entities_filtered({ area = area, ghost_name = binding.machines, force = force })[1]
end


local function bound_direction(loader)
    if loader.loader_type == "input" then
        return loader.direction
    end
    return OPPOSITE[loader.direction]
end


-- Which side a loader binds to is not a thing you set: it falls out of the mode.
-- `input` binds the tile the arrow points AT, `output` the tile behind, and a fresh
-- loader is always `output`.
--
-- SO SETTING THE MODE TAKES TWO WRITES. Assigning `loader_type` does not move the
-- bound side, it PRESERVES it by swinging the arrow 180 degrees. Measured, from
-- south/output (bound north):
--
--   loader_type = "input"                     -> north/input, STILL bound north
--   loader_type = "input"; direction = south  -> south/input, bound south
--
-- Writing `direction` is the only lever that moves the binding, so verify a change
-- here by asserting items MOVED: read `loader_type` back and a broken loader looks
-- correct.
--
-- Preserve-first, so this is a fixpoint: an already-valid binding returns before
-- anything is written. bind runs on paths no hand ever triggers -- bot revive,
-- upgrade planner, blueprint paste, the sweep -- and "whatever is ahead wins" would
-- silently flip a deliberate unloader on every one of them.
local function bind(loader)
    if machine_at(loader, bound_direction(loader)) then
        return true
    end
    local aimed = loader.direction
    local mode = machine_at(loader, aimed) and "input"
        or machine_at(loader, OPPOSITE[aimed]) and "output"
    if not mode then
        return false
    end
    if loader.loader_type ~= mode then
        loader.loader_type = mode
    end
    if loader.direction ~= aimed then
        loader.direction = aimed
    end
    return true
end


-- on_object_destroyed fires for a ghost REVIVE as well as for a removal -- measured,
-- along with overbuild and deconstruction-planner cancel. So the handler re-binds
-- instead of refunding on sight: on a revive the real machine is standing exactly
-- where the ghost was, and refunding there would confiscate a loader on the ordinary
-- blueprint path. Registering the same object twice returns the same number, so
-- re-watching is idempotent, and a registration survives save/load.
local function watch(loader)
    local machine = machine_at(loader, bound_direction(loader))
    if not machine then
        return
    end
    storage.loader_watch[script.register_on_object_destroyed(machine)] = {
        surface = machine.surface.index,
        x = machine.position.x,
        y = machine.position.y,
    }
end


local function keep(loader)
    if not bind(loader) then
        return false
    end
    watch(loader)
    return true
end


function binding.on_built(event)
    local loader = event.entity
    if not (loader and loader.valid and loader.type == LOADER) then
        return
    end
    if not keep(loader) then
        refuse.build(loader, event, { "profitorio.loader-needs-machine" })
    end
end


-- This event has no filter table, so it arrives for every pasted entity and ghost
-- and has to early-out here.
function binding.on_pasted(event)
    local loader = event.entity
    if not (loader and loader.valid and loader.type == LOADER) then
        return
    end
    if keep(loader) then
        return
    end
    -- Reverting the paste's rotation is a far smaller surprise than confiscating a
    -- Bond-priced express loader.
    if event.previous_direction then
        loader.direction = event.previous_direction
        if keep(loader) then
            return
        end
    end
    refuse.build(loader, event, { "profitorio.loader-needs-machine" })
end


-- A UX fast path over the watch below, which catches this case anyway: mining the
-- machine puts the loader in the miner's inventory rather than on the ground.
function binding.on_machine_mined(event)
    local machine = event.entity
    if not (machine and machine.valid) then
        return
    end
    -- The selection box, not the collision box: adjacent tile centres sit at +-2 and
    -- the collision box would leave a 0.2 margin.
    local box = machine.selection_box
    local area = {
        { box.left_top.x - 1, box.left_top.y - 1 },
        { box.right_bottom.x + 1, box.right_bottom.y + 1 },
    }
    for _, loader in pairs(machine.surface.find_entities_filtered({ area = area, type = LOADER })) do
        if machine_at(loader, bound_direction(loader)) == machine then
            refuse.into(loader, event.buffer)
        end
    end
end


-- One handler covering ghost cancellation, ghost overbuild, ghost revival, script
-- destroys, editor deletion and entity death, from one filtered registration.
function binding.on_machine_destroyed(event)
    local site = storage.loader_watch and storage.loader_watch[event.registration_number]
    if not site then
        return
    end
    storage.loader_watch[event.registration_number] = nil
    local surface = game.surfaces[site.surface]
    if not surface then
        return
    end
    local area = { { site.x - 2.5, site.y - 2.5 }, { site.x + 2.5, site.y + 2.5 } }
    for _, loader in pairs(surface.find_entities_filtered({ area = area, type = LOADER })) do
        if not keep(loader) then
            refuse.spill(loader)
        end
    end
end


-- Every loader on every surface, at load. Calls bind rather than merely validating,
-- so a loader that IS beside an Import in the wrong mode is fixed rather than
-- confiscated. The watch table is rebuilt from scratch: a registration left over
-- from the previous load fires once, finds no entry and returns.
function binding.sweep()
    storage.loader_watch = {}
    local removed = 0
    for _, surface in pairs(game.surfaces) do
        for _, loader in pairs(surface.find_entities_filtered({ type = LOADER })) do
            if not keep(loader) then
                refuse.spill(loader)
                removed = removed + 1
            end
        end
    end
    return removed
end


return binding
