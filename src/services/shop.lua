-- shop.lua -- one buy recipe per resource, crafted by the Import machine.
--
-- The only way raw materials enter the factory, now that nothing can be mined.
-- The shop stocks raw material only: ore, not plates. Smelting them is the
-- player's job, which is what gives the furnace a reason to exist and what makes
-- the finished-goods orders worth serving rather than reselling.
--
-- ============================================================
-- EACH GOOD IS PRICED IN THE DENOMINATION OF THE ERA THAT NEEDS IT
--
-- Wood, iron and stone are penny goods: they are what the opening band of
-- customers wants, and they are all a new game can afford. Copper costs Silver,
-- and coal and crude oil cost Banknotes -- so a resource is not merely
-- expensive before its era, it is unbuyable.
--
-- Copper is the load-bearing one. Electronic circuits need copper, a lab needs
-- circuits, and every technology needs a lab -- so the whole tech tree now sits
-- behind earning the first Silver Coin, and the only thing that mints one is the
-- penny band's hard order. The opening of the game reads: chop wood, serve
-- wooden chests, buy stone and iron, serve belts and iron chests, earn a Silver,
-- buy copper, build a lab.
--
-- The lot size grows with the denomination so the unit prices stay in the same
-- range across the whole ladder -- you buy coal by the hundred, not by the ten.
--
-- WHY THIS RUNS IN data-updates AND NOT data: crude oil arrives barrelled, and
-- base generates every barrel item and its fill/empty recipes in its OWN
-- data-updates.lua. During the data stage `crude-oil-barrel` does not exist yet,
-- so a shop that stocks it cannot be built until a stage later. The Import
-- machine itself stays in services/import.lua at the data stage; only the price
-- list moved.
-- ============================================================

local prototypes = require("lib.prototypes")
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
        item = "stone",
        amount = 10,
        price = 4,
        currency = currency.penny
    },
    {
        item = "copper-ore",
        amount = 10,
        price = 1,
        currency = currency.silver_coin
    },
    {
        item = "coal",
        amount = 100,
        price = 1,
        currency = currency.banknote
    },
    {
        -- Unbarrelling hands back a reusable empty barrel, so the only ongoing
        -- cost is the oil itself.
        item = "crude-oil-barrel",
        amount = 10,
        price = 1,
        currency = currency.banknote
    }
}

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
            -- The buy recipe wears the icon of what it sells.
            icons = prototypes.icons_of(resource.item),
            categories = { "import" },
            energy_required = 1,
            subgroup = "currency-buy",
            order = "a[" .. resource.item .. "]",
        }
    })
end

return resources
