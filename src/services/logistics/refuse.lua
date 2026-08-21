-- refuse.lua -- hand a rejected building back to whoever placed it, then remove it.
--
-- Shared by both placement rules in this folder. Three shapes of one ladder,
-- because where the item has to go depends on who is holding the event.

local refuse = {}

-- Every building these rules refuse places an item of its own name -- `entrance`,
-- `import`, `export` and all three loaders. Asserted rather than defaulted: an
-- entity whose name is not an item would be destroyed and refund nothing, which
-- reads in game as the building simply vanishing.
local function item_of(entity)
    local name = entity.name
    assert(prototypes.item[name],
        "refuse: no item named '" .. name .. "' to hand back for a refused " .. name)
    return name
end


-- Drop the item on the ground. The last resort of the ladder below, and the only
-- option when nobody is holding the event.
--
-- Destroy BEFORE spilling, and pass `allow_belts = false`. Both are load-bearing and
-- both fail silently: spilling first lands the item on the refused loader's own
-- transport line, and destroying the loader then deletes it -- the building vanishes
-- and refunds nothing. `allow_belts` defaults to TRUE, so a neighbouring belt
-- swallows it the same way. No `force` either: that flag does not mean "give it to
-- this force", it marks the item for deconstruction.
function refuse.spill(entity)
    local surface, position = entity.surface, entity.position
    local stack = { name = item_of(entity), count = 1 }
    entity.destroy()
    surface.spill_item_stack({ position = position, stack = stack, allow_belts = false })
end


-- Into a mined-entity event's buffer. LuaEntity.mine cannot take it -- its
-- `inventory` must be a created or entity-owned inventory and the mined buffer is
-- neither -- and mining inside a mining event nests, so insert and destroy instead.
function refuse.into(entity, inventory)
    if inventory.insert({ name = item_of(entity), count = 1 }) > 0 then
        entity.destroy()
    else
        refuse.spill(entity)
    end
end


-- The build-time ladder: back into the player's hands, else the robot's cargo,
-- else the ground.
function refuse.build(entity, event, message)
    local player = event.player_index and game.get_player(event.player_index)
    if player then
        player.create_local_flying_text({ text = message, create_at_cursor = true })
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
        refuse.spill(entity)
    end
end


return refuse
