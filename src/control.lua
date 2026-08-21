-- control.lua -- the runtime entry point, and the only place that calls
-- script.on_event (see the registrations at the bottom for why).

local entrance_limit = require("services.economy.customers.entrance_limit")
local starter_inventory = require("services.economy.shop.starter_inventory")
local assist = require("services.logistics.assist")

local ENTRANCE = entrance_limit.name

-- One handler each, so adoption and the starter inventory share one.
-- on_configuration_changed covers an older save: freeplay only backfills its item
-- list when it is nil, so an old save would otherwise keep the vanilla kit.
local function on_setup()
    entrance_limit.adopt()
    starter_inventory.apply()
end

script.on_init(on_setup)
script.on_configuration_changed(on_setup)

-- Blueprint ghosts are deliberately allowed: a ghost is not a working Entrance, so
-- blueprints still stamp. The refusal happens when a bot revives it.
local entrance_filter = { { filter = "name", name = ENTRANCE } }

-- ONE handler per event, ever: a second script.on_event for the same event replaces
-- the first rather than adding to it, and raises no error. So the Entrance limit and
-- the loader assist share a handler with the union of their filters (entries are
-- OR-ed). Never call script.on_event from a runtime module.
--
-- The other four events stay on the Entrance alone: the loader assist is for hand
-- placement only, since a robot or script build carries a deliberate mode.
local hand_built_filter = {
    { filter = "name", name = ENTRANCE },
    { filter = "type", type = "loader-1x1" },
}

local function on_hand_built(event)
    local entity = event.entity
    if not (entity and entity.valid) then
        return
    end
    if entity.name == ENTRANCE then
        entrance_limit.on_built(event)
    else
        assist.on_built(event)
    end
end

script.on_event(defines.events.on_built_entity, on_hand_built, hand_built_filter)
script.on_event(defines.events.on_robot_built_entity, entrance_limit.on_built, entrance_filter)
script.on_event(defines.events.script_raised_built, entrance_limit.on_built, entrance_filter)
script.on_event(defines.events.script_raised_revive, entrance_limit.on_built, entrance_filter)
script.on_event(defines.events.on_entity_cloned, entrance_limit.on_built, entrance_filter)
