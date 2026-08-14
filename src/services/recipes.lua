-- Denomination item names, so nothing below has to know that money is really
-- a re-skinned science pack. See services/currency.lua.
local currency = require("services.currency")

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
        icon = "__tycoon__/graphics/icons/penny.png",
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
        name = "currency-buy",
        group = "customer-group",
        order = "z"
    },
    -- The seven denominations, ordered penny-first by currency.lua.
    {
        type = "item-subgroup",
        name = "currency",
        group = "customer-group",
        order = "y"
    }
})

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


-- What a customer leaves behind when nobody serves even the simplest order.
-- No order to fill, no recipe, and no spoil timer: once a ghost exists it lasts
-- the rest of the save, so ghosts only ever pile up. One that spoils inside a
-- machine's ingredient slot jams that machine for good -- routing wood
-- customers so they never time out mid-slot is the player's problem to solve.
data:extend({
    {
        type = "item",
        name = "customer_ghost",
        icon = "__tycoon__/graphics/icons/ghost.png",
        icon_size = 64,
        stack_size = 1,
    }
})


-- `spoils_into` downgrades an impatient customer to a simpler order instead of
-- losing them outright, so a factory that can't fill the top tiers yet still
-- earns something. The bottom tier spoils into `ghost`, which ends the chain.
local customers = {
    {
        item_to_deliver = "wood",
        amount = 5,
        cost = 1,
        spoils_into = "ghost",
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
        amount = 2,
        cost = 2,
        reward = 1,
        reward_percentage = 1,
        spoils_into = "wood",
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
        amount = 2,
        cost = 2,
        reward = 1,
        reward_percentage = 1,
        spoils_into = "wood",
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
        amount = 5,
        cost = 15,
        reward = 3,
        reward_percentage = 1,
        spoils_into = "iron-plate",
        new_customers = {
            {
                item="iron-plate",
                chance = 0.25,
            },
            {
                item="copper-cable",
                chance = 0.5,
            },
            {
                item="electronic-circuit",
                chance = 0.25,
            }
        }
    },
    {
        item_to_deliver = "copper-cable",
        amount = 15,
        cost = 15,
        reward = 3,
        reward_percentage = 1,
        spoils_into = "copper-plate",
        new_customers = {
            {
                item="copper-plate",
                chance = 0.25,
            },
            {
                item="iron-gear-wheel",
                chance = 0.5,
            },
            {
                item="electronic-circuit",
                chance = 0.25,
            }
        }
    },
    {
        item_to_deliver = "electronic-circuit",
        amount = 20,
        cost = 100,
        reward = 5,
        reward_percentage = 1,
        spoils_into = "copper-cable",
        new_customers = {
            {
                item="iron-gear-wheel",
                chance = 0.5,
            },
            {
                item="copper-cable",
                chance = 0.5,
            },
        }
    }
}

-- Valid `spoils_into` targets that are not customers: they have no order to
-- fill, so the loop below generates nothing for them and their item prototype
-- is written by hand above.
local terminal_tokens = { ghost = true }

-- spoils_into is resolved against this set so a typo fails at load instead of
-- silently producing an unknown-item reference.
local spoil_target_exists = {}
for token in pairs(terminal_tokens) do
    spoil_target_exists[token] = true
end
for _, customer in ipairs(customers) do
    spoil_target_exists[customer.item_to_deliver] = true
end

for _, customer in ipairs(customers) do
    assert(customer.spoils_into == nil or spoil_target_exists[customer.spoils_into],
        "Customer_" .. customer.item_to_deliver .. " spoils_into '" .. tostring(customer.spoils_into)
            .. "', which is neither a customer type nor a terminal token")

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
            spoil_result = customer.spoils_into and ("customer_" .. customer.spoils_into) or nil,
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
                    { type = "item", name = currency.penny, amount = customer.cost },
                    { type = "item", name = currency.penny, amount = customer.reward, independent_probability = customer.reward_percentage },
                } or {
                    { type = "item", name = currency.penny, amount = customer.cost },
                },
                new_customers
            ),
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


-- Everything is bought with pennies for now; higher denominations get their
-- own price lists when the upper customer tiers land.
local resources = {
    {
        item = "wood",
        amount = 10,
        price = 1,
        currency = currency.penny
    },
    {
        item = "iron-plate",
        amount = 10,
        price = 10,
        currency = currency.penny
    },
    {
        item = "copper-plate",
        amount = 10,
        price = 10,
        currency = currency.penny
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
            subgroup = "currency-buy",
            order = "a["..resource.item.."]",
        }
    })
end