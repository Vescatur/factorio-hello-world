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
local spoil_fast = 60 * 60

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
    }
})

data:extend({
    {
        type = "recipe",
        name = "customer-new",
        enabled = true,
        results = {
            { type = "item", name = "customer_wood", amount = 1 }
        },
        energy_required = 2,
        subgroup = "customer-new",
         order = "a"
    }
})


local customers = {
    {
        item_to_deliver = "wood",
        amount = 10,
        cost = 10,
        reward = 1,
        reward_percentage = 0.1,
        new_customers = {
            {
                item="wood",
                chance = 0.5,
            },
            {
                item="iron-plate",
                chance = 0.5,
            }
        }
    },
    {
        item_to_deliver = "iron-plate",
        amount = 10,
        cost = 10,
        reward = 1,
        reward_percentage = 0.2,
        new_customers = {
            {
                item="wood",
                chance = 0.5,
            },
            {
                item="iron-plate",
                chance = 0.5,
            }
        }
    },
    {
        item_to_deliver = "copper-plate",
        amount = 10,
        cost = 10,
        reward = 1,
        reward_percentage = 0.2,
        new_customers = {
            {
                item="wood",
                chance = 0.5,
            },
            {
                item="iron-plate",
                chance = 0.5,
            }
        }
    },
    {
        item_to_deliver = "iron-gear-wheel",
        amount = 20,
        cost = 10,
        reward = 3,
        reward_percentage = 1,
        new_customers = {
            {
                item="wood",
                chance = 0.5,
            },
            {
                item="iron-plate",
                chance = 0.5,
            }
        }
    },
    {
        item_to_deliver = "copper-cable",
        amount = 60,
        cost = 10,
        reward = 3,
        reward_percentage = 1,
        new_customers = {
            {
                item="wood",
                chance = 0.5,
            },
            {
                item="iron-plate",
                chance = 0.5,
            }
        }
    },
    {
        item_to_deliver = "electronic-circuit",
        amount = 100,
        cost = 500,
        reward = 100,
        reward_percentage = 1,
        new_customers = {
            {
                item="wood",
                chance = 0.5,
            },
            {
                item="iron-plate",
                chance = 0.5,
            }
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
            shared_probability = {min = min_probability, max = min_probability + new_customer.chance}
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
            results = mergeTables({
                { type = "item", name = "coin", amount = customer.cost },
                { type = "item", name = "coin", amount = customer.reward, independent_probability = customer.reward_percentage },
            }, new_customers),
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
            energy_required = 1,
            subgroup = "customer-deliver",
            order = "z["..customer.item_to_deliver.."]",
        }
    })
end


local resources = {
    {
        item = "wood",
        price = 1,
        type = "coin"
    },
    {
        item = "iron-plate",
        price = 1,
        type = "coin"
    },
    {
        item = "copper-plate",
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
                { type = "item", name = resource.item, amount = 1 }
            },
            icons = {
                {
                    icon = "__base__/graphics/icons/" .. resource.item .. ".png",
                    icon_size = 64,
                    icon_mipmaps = 4,
                    scale = 1
                }
            },
            energy_required = 1,
            subgroup = "coin-buy",
            order = "a["..resource.item.."]",
        }
    })
end