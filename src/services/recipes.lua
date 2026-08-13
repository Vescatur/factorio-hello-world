local function mergeTables(t1, t2)
    local result = {}
    for _, v in ipairs(t1) do
        table.insert(result, v)
    end
    for _, v in ipairs(t2) do
        table.insert(result, v)
    end
    return result
end


-- 60 seconds * 60 ticks
local spoil_fast = 30 * 60

data:extend({
    {
        type = "item-group",
        name = "customer-group",
        order = "z",
        icon = "__base__/graphics/icons/coin.png",
        icon_size = 64
    },
    {
        type = "item-subgroup",
        name = "customer-new",
        group = "customer-group",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "customer-deliver",
        group = "customer-group",
        order = "b"
    },
    {
        type = "item-subgroup",
        name = "coin-buy",
        group = "customer-group",
        order = "z"
    },
    {
        type = "item-subgroup",
        name = "coin",
        group = "customer-group",
        order = "y"
    }
})

-- Coin is the mod's currency, so it must be selectable in inserter/logistics
-- filters. Base game hides it, which excludes it from every item-picker list.
data.raw.item.coin.hidden = false
data.raw.item.coin.hidden_in_factoriopedia = false
data.raw.item.coin.subgroup = "coin"
data.raw.item.coin.order = "a[coin]"

data:extend({
    {
        type = "recipe",
        name = "customer-new",
        categories = { "entrance" },
        enabled = true,
        results = {
            { type = "item", name = "customer_wood", amount = 1, always_fresh = true }
        },
        energy_required = 60,
        subgroup = "customer-new",
        order = "a"
    }
})


local customers = {
    {
        item_to_deliver = "wood",
        amount = 10,
        cost = 1,
        reward = 1,
        reward_percentage = 1,
        new_customers = {
            {
                item="iron-plate",
                chance = 0.5,
            },
            {
                item="copper-plate",
                chance = 0.5,
            }
        }
    },
    {
        item_to_deliver = "iron-plate",
        amount = 10,
        cost = 10,
        reward = 5,
        reward_percentage = 1,
        new_customers = {
            {
                item="wood",
                chance = 0.25,
            },
            {
                item="copper-plate",
                chance = 0.5,
            },
            {
                item="iron-gear-wheel",
                chance = 0.25,
            }
        }
    },
    {
        item_to_deliver = "copper-plate",
        amount = 10,
        cost = 10,
        reward = 5,
        reward_percentage = 1,
        new_customers = {
            {
                item="wood",
                chance = 0.25,
            },
            {
                item="iron-plate",
                chance = 0.5,
            },
            {
                item="copper-cable",
                chance = 0.25,
            }
        }
    },
    {
        item_to_deliver = "iron-gear-wheel",
        amount = 20,
        cost = 60,
        reward = 12,
        reward_percentage = 1,
        new_customers = {
            {
                item="wood",
                chance = 0.2,
            },
            {
                item="iron-plate",
                chance = 0.2,
            },
            {
                item="copper-cable",
                chance = 0.5,
            },
            {
                item="electronic-circuit",
                chance = 0.1,
            }
        }
    },
    {
        item_to_deliver = "copper-cable",
        amount = 60,
        cost = 60,
        reward = 12,
        reward_percentage = 1,
        new_customers = {
            {
                item="wood",
                chance = 0.2,
            },
            {
                item="copper-plate",
                chance = 0.2,
            },
            {
                item="iron-gear-wheel",
                chance = 0.5,
            },
            {
                item="electronic-circuit",
                chance = 0.1,
            }
        }
    },
    {
        item_to_deliver = "electronic-circuit",
        amount = 100,
        cost = 500,
        reward = 25,
        reward_percentage = 1,
        new_customers = {
            {
                item="wood",
                chance = 0.1,
            },
            {
                item="iron-plate",
                chance = 0.15,
            },
            {
                item="copper-plate",
                chance = 0.15,
            },
            {
                item="iron-gear-wheel",
                chance = 0.3,
            },
            {
                item="copper-cable",
                chance = 0.3,
            },
        }
    }
}

for i, customer in ipairs(customers) do
    data:extend({
        {
            type = "item",
            name = "customer_" .. customer.item_to_deliver,
            icons = {
                {
                    icon = "__tycoon__/graphics/icons/customer.png",
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
            stack_size = 1,
            spoil_ticks = spoil_fast,
        }
    })

    new_customers = {}
    min_probability = 0
    for _, new_customer in ipairs(customer.new_customers) do
        table.insert(new_customers, { 
            type = "item", name = "customer_" .. new_customer.item, amount = 1,
            shared_probability = {min = min_probability, max = min_probability + new_customer.chance},
            always_fresh = true
        })
        min_probability = min_probability + new_customer.chance
    end
    assert(min_probability == 1, "Customer_".. customer.item_to_deliver .. " new_customers probabilities do not sum to 1")

    data:extend({
        {
            type = "recipe",
            name = "customer_" .. customer.item_to_deliver .. "_deliver",
            enabled = true,
            ingredients = {
                { type = "item", name = "customer_" .. customer.item_to_deliver, amount = 1 },
                { type = "item", name = customer.item_to_deliver, amount = customer.amount }
            },
            results = mergeTables(
                customer.reward and {
                    { type = "item", name = "coin", amount = customer.cost },
                    { type = "item", name = "coin", amount = customer.reward, independent_probability = customer.reward_percentage },
                } or {
                    { type = "item", name = "coin", amount = customer.cost },
                },
                new_customers
            ),
            icons = {
                {
                    icon = "__base__/graphics/icons/coin.png",
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


local resources = {
    {
        item = "wood",
        amount = 10,
        price = 1,
        type = "coin"
    },
    {
        item = "iron-plate",
        amount = 1,
        price = 1,
        type = "coin"
    },
    {
        item = "copper-plate",
        amount = 1,
        price = 1,
        type = "coin"
    }
}
for i,resource in ipairs(resources) do
    data:extend({
        {
            type = "recipe",
            name = "coin_to_" .. resource.item,
            enabled = true,
            ingredients = {
                { type = "item", name = resource.type, amount = resource.price }
            },
            results = {
                { type = "item", name = resource.item, amount = resource.amount }
            },
            icons = {
                {
                    icon = "__base__/graphics/icons/" .. resource.item .. ".png",
                    icon_size = 64,
                    icon_mipmaps = 4,
                    scale = 1
                }
            },
            categories = { "import" },
            energy_required = 1,
            subgroup = "coin-buy",
            order = "a["..resource.item.."]",
        }
    })
end