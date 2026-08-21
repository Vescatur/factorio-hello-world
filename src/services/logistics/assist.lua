-- assist.lua -- put a hand-placed loader into the mode the player meant.
--
-- Which side a loader binds to is not a thing you set: it falls out of the mode.
-- `input` binds the tile the arrow points AT, `output` the tile behind. A fresh
-- loader is always `output`, so aiming at the thing you want filled binds the belt
-- instead and the loader does nothing. Vanilla's 1x2 loader behaves the same way; it
-- is worth fixing because R cannot undo it -- both states R cycles between keep the
-- same bound side, so a wrongly bound loader must be mined and rebuilt.
--
-- SETTING THE MODE TAKES TWO WRITES. Assigning `loader_type` does not move the bound
-- side, it PRESERVES it by swinging the arrow 180 degrees. Measured, from
-- south/output (bound north):
--
--   loader_type = "input"                     -> north/input, STILL bound north
--   loader_type = "input"; direction = south  -> south/input, bound south
--
-- Writing `direction` is the only lever that moves the binding. So verify a change
-- here by asserting items MOVED: read `loader_type` back and a broken loader looks
-- correct.

local assist = {}

-- Inventories a loader can insert into. Probed on the entity rather than matched
-- against a list of prototype types, so Profitorio's own entrance/import/export --
-- which are assembling machines -- and anything a later Factorio version adds are
-- covered for free. `character_main` is pointedly absent: the player is usually
-- standing next to what they just built, and a character is not a target.
local CONTAINER_INVENTORIES = {
    defines.inventory.chest,
    defines.inventory.crafter_input,
    defines.inventory.fuel,
    defines.inventory.lab_input,
    defines.inventory.car_trunk,
    defines.inventory.cargo_wagon,
    defines.inventory.spider_trunk,
    defines.inventory.turret_ammo,
    defines.inventory.artillery_turret_ammo,
    defines.inventory.artillery_wagon_ammo,
    defines.inventory.roboport_material,
    defines.inventory.linked_container_main,
}

-- Everything that can hand an item to the tile in front of it.
local BELT_TYPES = { "transport-belt", "underground-belt", "splitter", "loader-1x1" }

local OFFSET = {
    [defines.direction.north] = { 0, -1 },
    [defines.direction.east]  = { 1, 0 },
    [defines.direction.south] = { 0, 1 },
    [defines.direction.west]  = { -1, 0 },
}


-- A box just inside one tile: inset so it cannot clip a neighbour, an area rather
-- than a point so multi-tile entities -- a 3x3 assembler, a 2-tile splitter -- are
-- found by whichever part overlaps.
local function tile_area(position)
    return {
        { position.x - 0.4, position.y - 0.4 },
        { position.x + 0.4, position.y + 0.4 },
    }
end


local function has_container(surface, position)
    for _, entity in pairs(surface.find_entities_filtered({ area = tile_area(position) })) do
        for _, index in pairs(CONTAINER_INVENTORIES) do
            if entity.get_inventory(index) then
                return true
            end
        end
    end
    return false
end


local function belt_at(surface, position)
    return surface.find_entities_filtered({ area = tile_area(position), type = BELT_TYPES })[1]
end


-- Is this belt handing items forward, in `direction`? Facing the right way is not
-- enough for two of them: an underground belt's entry end swallows items in the
-- direction it faces, and a loader in input mode is taking items off its belt
-- rather than putting them on.
local function feeds(belt, direction)
    if belt.direction ~= direction then
        return false
    end
    if belt.type == "underground-belt" then
        return belt.belt_to_ground_type == "output"
    end
    if belt.type == "loader-1x1" then
        return belt.loader_type == "output"
    end
    return true
end


-- Does the container belong on the tile this loader faces?
local function wants_input(loader, ahead, behind)
    local surface = loader.surface

    -- A container behind is the placement working as built -- output binds the
    -- tile behind, so this is a deliberate unloader. Leave it. This is also what
    -- lets a blueprint that unloads machines survive being revived by hand.
    if has_container(surface, behind) then
        return false
    end

    -- Aimed at something that holds items. Unambiguous: a container ahead can
    -- only be filled, never emptied -- emptying needs it behind -- so `input` is
    -- the only mode that does anything.
    if has_container(surface, ahead) then
        return true
    end

    -- No container either side, so read the belt instead: one feeding us from
    -- behind puts the container on the far side, once there is one. Unless that
    -- side is a belt too, in which case this is a loader dropped mid belt line,
    -- useless in either mode and not ours to announce a fix for.
    local feeder = belt_at(surface, behind)
    return feeder ~= nil and feeds(feeder, loader.direction) and belt_at(surface, ahead) == nil
end


function assist.on_built(event)
    local loader = event.entity
    if not (loader and loader.valid and loader.type == "loader-1x1") then
        return
    end
    local offset = OFFSET[loader.direction]
    if not offset or loader.loader_type == "input" then
        return
    end

    local x, y = loader.position.x, loader.position.y
    local ahead = { x = x + offset[1], y = y + offset[2] }
    local behind = { x = x - offset[1], y = y - offset[2] }
    if not wants_input(loader, ahead, behind) then
        return
    end

    local aimed = loader.direction
    loader.loader_type = "input"
    loader.direction = aimed
end


return assist
