-- entrance_limit.lua -- only one Entrance may exist: an extra placement is refused
-- and refunded, and the Entrance already running is never touched.

local refuse = require("services.logistics.refuse")

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

function limit.on_built(event)
    -- on_entity_cloned names the new entity `destination`, everything else `entity`.
    local entity = event.entity or event.destination
    if not (entity and entity.valid) then
        return
    end

    local existing = tracked()
    if existing and existing ~= entity then
        refuse.build(entity, event, { "profitorio.entrance-limit" })
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
                refuse.spill(entity)
                removed = removed + 1
            else
                storage.entrance = entity
            end
        end
    end
    return removed
end

return limit
