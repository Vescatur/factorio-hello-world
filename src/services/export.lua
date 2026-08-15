-- The orders to fill and what they pay. See services/customers.lua, and
-- services/currency.lua for why the payout is really a science pack.
local customers = require("services.customers")
local currency = require("services.currency")

local export_tint = {r=0.6, g=0.7, b=1}
local export_graphics = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"].graphics_set)
for _, layer in pairs(export_graphics.animation.layers) do
    if not layer.draw_as_shadow then
        layer.tint = export_tint
    end
end

data:extend({
    {
        type = "recipe-category",
        name = "export",
    },
    {
        type = "item",
        name = "export",
        icons = {
            {
                icon = "__base__/graphics/icons/assembling-machine-1.png",
                icon_size = 64,
                tint = export_tint,
            }
        },
        subgroup = "production-machine",
        order = "a[export]",
        place_result = "export",
        stack_size = 50,
    },
    {
        type = "recipe",
        name = "export",
        enabled = true,
        ingredients = {
            { type = "item", name = "wood", amount = 10 },
        },
        results = {
            { type = "item", name = "export", amount = 1 },
        },
    },
    {
        type = "assembling-machine",
        name = "export",
        icons = {
            {
                icon = "__base__/graphics/icons/assembling-machine-1.png",
                icon_size = 64,
                tint = export_tint,
            }
        },
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "export" },
        max_health = 300,
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        graphics_set = export_graphics,
        icon_draw_specification = data.raw["assembling-machine"]["assembling-machine-1"].icon_draw_specification,
        crafting_categories = { "export" },
        crafting_speed = 1,
        energy_source = { type = "void" },
        energy_usage = "1kW",
    },
})


-- ==== One delivery recipe per customer tier ====
--
-- This is where money enters the game: hand a customer the goods they asked
-- for and they pay `cost`, plus `reward` on an independent roll. The same
-- results list also carries the customers they bring in behind them, as
-- contiguous shared_probability bands so exactly one successor arrives.
for _, customer in ipairs(customers.tiers) do
    local results = {
        { type = "item", name = currency.penny, amount = customer.cost },
    }
    if customer.reward then
        table.insert(results, {
            type = "item", name = currency.penny, amount = customer.reward,
            independent_probability = customer.reward_percentage
        })
    end

    local min_probability = 0
    for _, new_customer in ipairs(customer.new_customers) do
        table.insert(results, {
            type = "item", name = customers.item[new_customer.item], amount = 1,
            shared_probability = { min = min_probability, max = min_probability + new_customer.chance },
            always_fresh = true
        })
        min_probability = min_probability + new_customer.chance
    end

    data:extend({
        {
            type = "recipe",
            name = customers.item[customer.item_to_deliver] .. "_deliver",
            enabled = true,
            ingredients = {
                { type = "item", name = customers.item[customer.item_to_deliver], amount = 1 },
                { type = "item", name = customer.item_to_deliver, amount = customer.amount }
            },
            results = results,
            icons = {
                {
                    icon = "__tycoon__/graphics/icons/penny.png",
                    icon_size = 64,
                    icon_mipmaps = 4
                },
                {
                    icon = "__base__/graphics/icons/" .. customer.item_to_deliver .. ".png",
                    icon_size = 64,
                    icon_mipmaps = 4,
                    scale = 0.3,
                    shift = { 6, 6 }
                }
            },
            categories = { "export" },
            energy_required = 1,
            subgroup = "customer-deliver",
            order = "z["..customer.item_to_deliver.."]",
        }
    })
end
