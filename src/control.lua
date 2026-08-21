-- control.lua -- the runtime entry point, and the only place that calls
-- script.on_event (see the registrations at the bottom for why).

local entrance_limit = require("services.logistics.entrance_limit")
local starter_inventory = require("services.economy.shop.starter_inventory")
local binding = require("services.logistics.loader_binding")

local ENTRANCE = entrance_limit.name

-- One handler each, so adoption, the loader sweep and the starter inventory share
-- one. on_configuration_changed covers an older save: freeplay only backfills its
-- item list when it is nil, so an old save would otherwise keep the vanilla kit,
-- and a save predating the loader rule holds loaders bound to chests.
local function on_setup()
    local entrances = entrance_limit.adopt()
    if entrances > 0 then
        -- The bundled definitions type a localised string as a tuple ending in a
        -- LocalisedString vararg, and the language server resolves nothing for that
        -- vararg: every parameter after the key mismatches whatever its type is, so
        -- there is no spelling of this call that satisfies it. A number is legal here.
        --
        -- Never quote an example localised string in a comment: translations.py
        -- greps the source for that idiom and reports the example as a missing key.
        ---@diagnostic disable-next-line: assign-type-mismatch
        game.print({ "profitorio.entrance-removed", entrances })
    end
    starter_inventory.apply()
    local loaders = binding.sweep()
    if loaders > 0 then
        ---@diagnostic disable-next-line: assign-type-mismatch
        game.print({ "profitorio.loader-swept", loaders })
    end
end

script.on_init(on_setup)
script.on_configuration_changed(on_setup)

-- ONE handler per event, ever: a second script.on_event for the same event replaces
-- the first rather than adding to it, and raises no error. So the Entrance limit and
-- the loader rule share one handler with the union of their filters (entries are
-- OR-ed). Never call script.on_event from a runtime module.
--
-- Blueprint ghosts are deliberately allowed through: a ghost is neither a working
-- Entrance nor a placed loader, so blueprints still stamp. Both rules act when a bot
-- revives one.
local entrance_filter = { { filter = "name", name = ENTRANCE } }

local built_filter = {
    { filter = "name", name = ENTRANCE },
    { filter = "type", type = binding.loader },
}

-- Generated from binding.machines rather than written out, so adding a third machine
-- cannot leave a removal filter naming only the first two.
local machine_filter = {}
for _, machine in pairs(binding.machines) do
    machine_filter[#machine_filter + 1] = { filter = "name", name = machine }
end

local function on_built(event)
    local entity = event.entity
    if not (entity and entity.valid) then
        return
    end
    if entity.name == ENTRANCE then
        entrance_limit.on_built(event)
    else
        binding.on_built(event)
    end
end

-- Robot and script builds are not optional for the loader rule: they are how a bot
-- revive and the upgrade planner get validated at all.
script.on_event(defines.events.on_built_entity, on_built, built_filter)
script.on_event(defines.events.on_robot_built_entity, on_built, built_filter)
script.on_event(defines.events.script_raised_built, on_built, built_filter)
script.on_event(defines.events.script_raised_revive, on_built, built_filter)

-- Entrance only. A clone has no ordering guarantee and no ghost to fall back on, so
-- a cloned loader would be refused for a machine that has not been cloned yet. The
-- same holds for on_area_cloned and on_brush_cloned, which nothing registers.
script.on_event(defines.events.on_entity_cloned, entrance_limit.on_built, entrance_filter)

script.on_event(defines.events.on_player_mined_entity, binding.on_machine_mined, machine_filter)
script.on_event(defines.events.on_robot_mined_entity, binding.on_machine_mined, machine_filter)

-- No filter table exists for this event, so it arrives for everything and the
-- handler early-outs on the entity type.
script.on_event(defines.events.on_blueprint_settings_pasted, binding.on_pasted)

script.on_event(defines.events.on_object_destroyed, binding.on_machine_destroyed)

-- Deliberately not registered:
--
--   on_player_rotated_entity -- measured: R on a loader swings direction 180 degrees
--     and flips the mode together, so the bound side never moves, and there is no
--     90-degree rotation for a loader. Every state R can produce is one bind already
--     accepts, so the handler could only ever be a no-op.
--   on_player_flipped_entity -- mirroring flips over the axis pointing ALONG
--     direction, so direction is invariant and the bound tile cannot move.
--   on_entity_died -- there is no combat, so this is only reachable via die().
--   script_raised_destroy -- the on_object_destroyed watch already covers it.
