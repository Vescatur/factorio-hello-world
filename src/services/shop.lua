-- shop.lua -- one buy recipe per resource, crafted by the Import machine.
--
-- The only way raw materials enter the factory, now that nothing can be mined.
-- The shop stocks raw material only: ore, not plates. Smelting them is the
-- player's job, which is what gives the furnace a reason to exist and what makes
-- the iron and copper plate customers worth serving rather than reselling.
--
-- Everything is bought with pennies for now; higher denominations get their own
-- price lists when the upper customer tiers land.
--
-- WHY THIS RUNS IN data-updates AND NOT data: crude oil arrives barrelled, and
-- base generates every barrel item and its fill/empty recipes in its OWN
-- data-updates.lua. During the data stage `crude-oil-barrel` does not exist yet,
-- so a shop that stocks it cannot be built until a stage later. The Import
-- machine itself stays in services/import.lua at the data stage; only the price
-- list moved.
--
-- PRICES are the tuning knob for the whole early economy. Ore sits below what
-- plates used to cost, so the mandatory smelting step is not a straight tax on
-- what the player could previously buy ready-made.

-- Denomination item names, so the price list doesn't have to know that money is
-- really a re-skinned science pack. See services/currency.lua.
local currency = require("services.currency")

local resources = {
    {
        item = "wood",
        amount = 10,
        price = 1,
        currency = currency.penny
    },
    {
        item = "iron-ore",
        amount = 10,
        price = 6,
        currency = currency.penny
    },
    {
        item = "copper-ore",
        amount = 10,
        price = 6,
        currency = currency.penny
    },
    {
        item = "coal",
        amount = 10,
        price = 6,
        currency = currency.penny
    },
    {
        item = "stone",
        amount = 10,
        price = 4,
        currency = currency.penny
    },
    {
        -- Unbarrelling hands back a reusable empty barrel, so the only ongoing
        -- cost is the oil itself.
        item = "crude-oil-barrel",
        amount = 1,
        price = 10,
        currency = currency.penny
    }
}

-- The buy recipe wears the icon of what it sells. Read it off the item rather
-- than assembling a path into __base__/graphics/icons/: a barrel has no file of
-- its own, it is a three-layer composite, and a future shop good could be the
-- same.
local function icons_for(item_name)
    local item = data.raw.item[item_name]
    assert(item, "shop: no item prototype named '" .. item_name .. "' to sell")

    if item.icons then
        return util.table.deepcopy(item.icons)
    end
    return { { icon = item.icon, icon_size = item.icon_size or 64 } }
end

for _, resource in ipairs(resources) do
    data:extend({
        {
            type = "recipe",
            name = "buy_" .. resource.item,
            enabled = true,
            ingredients = {
                { type = "item", name = resource.currency, amount = resource.price }
            },
            results = {
                { type = "item", name = resource.item, amount = resource.amount }
            },
            icons = icons_for(resource.item),
            categories = { "import" },
            energy_required = 1,
            subgroup = "currency-buy",
            order = "a[" .. resource.item .. "]",
        }
    })
end
