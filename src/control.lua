-- Only one Entrance may exist. It is the sole source of customers (the
-- customer-new recipe has no ingredients and every delivery recipe emits
-- exactly one replacement customer), so the Entrance count is what bounds the
-- entire economy. Extra placements are refused and refunded; the Entrance that
-- is already running is never touched.

local ENTRANCE = "entrance"

-- The tracked Entrance is invalidated lazily: mining or destroying it makes the
-- stored reference invalid, which frees the slot for the next placement. No
-- mined/destroyed handlers are needed.
local function tracked()
    local entrance = storage.entrance
    if entrance and entrance.valid then
        return entrance
    end
    return nil
end

local function spill(entity)
    entity.surface.spill_item_stack({
        position = entity.position,
        stack = { name = ENTRANCE, count = 1 },
        force = entity.force,
    })
end

-- Hand the Entrance item back to whoever tried to build it, then remove the
-- building. Falls back to dropping the item on the ground so it is never lost.
local function refund(entity, event)
    local player = event.player_index and game.get_player(event.player_index)
    if player then
        player.create_local_flying_text({ text = { "tycoon.entrance-limit" }, create_at_cursor = true })
        player.play_sound({ path = "utility/cannot_build" })
        if player.mine_entity(entity, true) then
            return
        end
    elseif event.robot and event.robot.valid then
        local cargo = event.robot.get_inventory(defines.inventory.robot_cargo)
        if cargo and entity.mine({ inventory = cargo, force = true, ignore_minable = true }) then
            return
        end
    end

    if entity.valid then
        spill(entity)
        entity.destroy()
    end
end

local function on_built(event)
    -- on_entity_cloned names the new entity `destination`, everything else `entity`.
    local entity = event.entity or event.destination
    if not (entity and entity.valid) then
        return
    end

    local existing = tracked()
    if existing and existing ~= entity then
        refund(entity, event)
    else
        storage.entrance = entity
    end
end

-- Saves made before this rule existed can hold several Entrances. Keep the
-- first one found and drop the rest as items so the invariant holds.
local function adopt()
    storage.entrance = nil
    local removed = 0
    for _, surface in pairs(game.surfaces) do
        for _, entity in pairs(surface.find_entities_filtered({ name = ENTRANCE })) do
            if storage.entrance then
                spill(entity)
                entity.destroy()
                removed = removed + 1
            else
                storage.entrance = entity
            end
        end
    end
    if removed > 0 then
        game.print({ "tycoon.entrance-removed", removed })
    end
end

-- ============================================================
-- Starter inventory
--
-- Tycoon's whole loop runs through three machines -- entrance (customers
-- arrive), import (coin -> goods), export (deliver to a customer for coin) --
-- and all three cost wood, which itself can only be bought with coin. Without
-- one of each in hand a new game cannot start, so they are handed out directly.
--
-- The vanilla freeplay kit is dropped rather than extended: the burner mining
-- drill and stone furnace have nothing to work with (remove_ore.lua strips
-- every resource and both plate smelting recipes), and the iron plate / wood
-- would just be a one-off handout on top of the coin economy.
--
-- Freeplay owns the list, so it has to be set through its remote interface
-- instead of a prototype. Verified ordering: the scenario's on_init runs before
-- ours, so this override is the one that survives. The `if` guard keeps things
-- working in scenarios with no freeplay script at all (sandbox, PvP), where
-- there is nothing to override.
-- ============================================================
local starter_inventory = {
    [ENTRANCE] = 1,
    ["import"] = 1,
    ["export"] = 1,
}

local function apply_starter_inventory()
    if not remote.interfaces["freeplay"] then return end
    remote.call("freeplay", "set_created_items", starter_inventory)
end

-- on_init/on_configuration_changed take a single handler each, so the Entrance
-- adoption and the starter inventory share one. on_configuration_changed covers
-- a save that predates this file: freeplay only backfills its item list when it
-- is nil, so an old save would otherwise keep the vanilla kit.
local function on_setup()
    adopt()
    apply_starter_inventory()
end

script.on_init(on_setup)
script.on_configuration_changed(on_setup)

-- Blueprint ghosts are deliberately allowed: a ghost is not a working Entrance,
-- so blueprints still stamp. The refusal happens when a bot revives it, and the
-- ghost is consumed by that build, so there is no retry loop.
local entrance_filter = { { filter = "name", name = ENTRANCE } }

script.on_event(defines.events.on_built_entity, on_built, entrance_filter)
script.on_event(defines.events.on_robot_built_entity, on_built, entrance_filter)
script.on_event(defines.events.script_raised_built, on_built, entrance_filter)
script.on_event(defines.events.script_raised_revive, on_built, entrance_filter)
script.on_event(defines.events.on_entity_cloned, on_built, entrance_filter)
