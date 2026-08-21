-- starter_inventory.lua -- the kit a new game opens with.

local starter = {}

-- All three machines cost wood, which can only be bought with coin, so without one
-- of each in hand a new game cannot start. The stone furnace is here because the shop
-- sells ore and the character cannot hand-craft a `smelting` recipe.
local items = {
    ["entrance"] = 1,
    ["import"] = 3,
    ["export"] = 3,
    ["assembling-machine-1"] = 5,
    ["burner-inserter"] = 10,
    ["stone-furnace"] = 3,
}

-- The vanilla freeplay kit is replaced rather than extended: its burner mining drill
-- has nothing to work with. Freeplay owns the list, so this goes through its remote
-- interface; its on_init runs before ours, so this override is the one that survives.
function starter.apply()
    if not remote.interfaces["freeplay"] then return end
    remote.call("freeplay", "set_created_items", items)
end

return starter
