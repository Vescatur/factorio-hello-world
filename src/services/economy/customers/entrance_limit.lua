-- entrance_limit.lua -- only one Entrance may exist: an extra placement is refused
-- and refunded, and the Entrance already running is never touched.

local ENTRANCE = "entrance"

local limit = {}

-- Nothing in this module reads it: control.lua builds its event filters and its
-- on_built_entity dispatch from this name.
limit.name = ENTRANCE

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
        player.create_local_flying_text({ text = { "profitorio.entrance-limit" }, create_at_cursor = true })
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

function limit.on_built(event)
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

-- A save can already hold several Entrances. Keep the first one found and drop the
-- rest as items so the invariant holds.
function limit.adopt()
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
        -- The bundled definitions type a localised string as a tuple ending in a
        -- LocalisedString vararg, and the language server resolves nothing for that
        -- vararg: every parameter after the key mismatches whatever its type is, so
        -- there is no spelling of this call that satisfies it. A number is legal here.
        --
        -- Never quote an example localised string in a comment: find-missing-locale.py
        -- greps the source for that idiom and reports the example as a missing key.
        ---@diagnostic disable-next-line: assign-type-mismatch
        game.print({ "profitorio.entrance-removed", removed })
    end
end

return limit
