-- Who walks in, what they order, and what they decay into.
--
-- This module owns the tier table and the item prototype for each tier. The
-- recipes that consume them live with the machine that crafts them:
-- `customer-new` in entrance.lua, `customer_<x>_deliver` in export.lua. What
-- it returns is a plain data map -- the tier list, plus the item name of every
-- tier -- so nothing else has to know that a customer item is spelled
-- "customer_" .. whatever they ordered.

-- 30 seconds * 60 ticks
local spoil_fast = 30 * 60


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
local tiers = {
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

-- Every name a customer item exists under, mapped to that item. Built before
-- the loop so `spoils_into` can be resolved against it: a typo fails at load
-- instead of silently producing an unknown-item reference.
local item_by_tier = {}
for token in pairs(terminal_tokens) do
    item_by_tier[token] = "customer_" .. token
end
for _, customer in ipairs(tiers) do
    item_by_tier[customer.item_to_deliver] = "customer_" .. customer.item_to_deliver
end

for _, customer in ipairs(tiers) do
    assert(customer.spoils_into == nil or item_by_tier[customer.spoils_into],
        "Customer_" .. customer.item_to_deliver .. " spoils_into '" .. tostring(customer.spoils_into)
            .. "', which is neither a customer type nor a terminal token")

    -- export.lua turns these chances into contiguous shared_probability bands,
    -- which only spawns exactly one successor if they cover 0..1 with no gap.
    local total_chance = 0
    for _, new_customer in ipairs(customer.new_customers) do
        total_chance = total_chance + new_customer.chance
    end
    assert(total_chance == 1,
        "Customer_" .. customer.item_to_deliver .. " new_customers probabilities do not sum to 1")

    data:extend({
        {
            type = "item",
            name = item_by_tier[customer.item_to_deliver],
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
            spoil_result = customer.spoils_into and item_by_tier[customer.spoils_into] or nil,
        }
    })
end

-- The tier the Entrance spawns, and so the bottom of the whole economy.
local entry_tier = "wood"
assert(item_by_tier[entry_tier], "customers: entry tier '" .. entry_tier .. "' is not a customer type")

return {
    tiers = tiers,
    item = item_by_tier,
    entry = entry_tier,
}
