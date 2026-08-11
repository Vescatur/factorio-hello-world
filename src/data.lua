-- 60 seconds * 60 ticks
local spoil_slow = 5 * 60 * 60
local spoil_fast = 5 * 60 * 60

data:extend({
    {
        type = "item",
        name = "customer",
        icon = "__base__/graphics/icons/coin.png",
        icon_size = 64,
        subgroup = "raw-material",
        order = "g[customer]",
        stack_size = 50,
        spoil_ticks = spoil_slow,
    }
})
data:extend({
    {
        type = "item",
        name = "customer_iron_gear",
        icons = {
            {
                icon = "__base__/graphics/icons/coin.png",
                icon_size = 64,
                icon_mipmaps = 4
            },
            {
                icon = "__base__/graphics/icons/iron-gear-wheel.png",
                icon_size = 64,
                icon_mipmaps = 4,
                scale = 0.3,
                shift = { 6, 6 }
            }
        },
        subgroup = "raw-material",
        order = "g[customer]",
        stack_size = 50,
        spoil_ticks = spoil_fast,
    }
})
data:extend({
    {
        type = "item",
        name = "customer_copper",
        icons = {
            {
                icon = "__base__/graphics/icons/coin.png",
                icon_size = 64,
                icon_mipmaps = 4
            },
            {
                icon = "__base__/graphics/icons/copper-plate.png",
                icon_size = 64,
                icon_mipmaps = 4,
                scale = 0.3,
                shift = { 6, 6 }
            }
        },
        subgroup = "raw-material",
        order = "g[customer]",
        stack_size = 50,
        spoil_ticks = spoil_fast,
    }
})

data:extend({
    {
        type = "recipe",
        name = "customer-new",
        enabled = true,
        results = {
            { type = "item", name = "customer", amount = 1 }
        },
        energy_required = 2
    }
})

data:extend({
    {
        type = "recipe",
        name = "customer-ask",
        enabled = true,
        ingredients = {
            { type = "item", name = "customer", amount = 1 }
        },
        results = {
            { type = "item", name = "customer_iron_gear", amount = 1, shared_probability = { min = 0.0, max = 0.5 } },
            { type = "item", name = "customer_copper", amount = 1, shared_probability = { min = 0.5, max = 1.0 } }
        },
        icon = "__base__/graphics/icons/coin.png",
        energy_required = 1
    }
})

data:extend({
    {
        type = "recipe",
        name = "customer-iron-to-science",
        enabled = true,
        ingredients = {
            { type = "item", name = "customer_iron_gear", amount = 1 },
            { type = "item", name = "iron-gear-wheel", amount = 1 }
        },
        results = {
            { type = "item", name = "automation-science-pack", amount = 4 },
            { type = "item", name = "customer", amount = 1 }
        },
        icons = {
            {
                icon = "__base__/graphics/icons/coin.png",
                icon_size = 64,
                icon_mipmaps = 4
            },
            {
                icon = "__base__/graphics/icons/iron-gear-wheel.png",
                icon_size = 64,
                icon_mipmaps = 4,
                scale = 0.3,
                shift = { 6, 6 }
            }
        },
        energy_required = 3
    }
})

data:extend({
    {
        type = "recipe",
        name = "customer-copper-to-science",
        enabled = true,
        ingredients = {
            { type = "item", name = "customer_copper", amount = 1 },
            { type = "item", name = "copper-plate", amount = 1 }
        },
        results = {
            { type = "item", name = "automation-science-pack", amount = 2 },
            { type = "item", name = "customer", amount = 1 }
        },
        icons = {
            {
                icon = "__base__/graphics/icons/coin.png",
                icon_size = 64,
                icon_mipmaps = 4
            },
            {
                icon = "__base__/graphics/icons/copper-plate.png",
                icon_size = 64,
                icon_mipmaps = 4,
                scale = 0.3,
                shift = { 6, 6 }
            }
        },
        energy_required = 3
    }
})

data:extend({
    {
        type = "recipe",
        name = "science-to-wood",
        enabled = true,
        ingredients = {
            { type = "item", name = "automation-science-pack", amount = 1 },
        },
        results = {
            { type = "item", name = "wood", amount = 1 }
        },
        icons = {
            {
                icon = "__base__/graphics/icons/wood.png",
                icon_size = 64,
                icon_mipmaps = 4
            }
        },
        energy_required = 1
    }
})

data:extend({
    {
        type = "recipe",
        name = "science-to-iron",
        enabled = true,
        ingredients = {
            { type = "item", name = "automation-science-pack", amount = 1 },
        },
        results = {
            { type = "item", name = "iron-ore", amount = 1 }
        },
        icons = {
            {
                icon = "__base__/graphics/icons/iron-ore.png",
                icon_size = 64,
                icon_mipmaps = 4
            }
        },
        energy_required = 1
    }
})

data:extend({
    {
        type = "recipe",
        name = "science-to-copper",
        enabled = true,
        ingredients = {
            { type = "item", name = "automation-science-pack", amount = 1 },
        },
        results = {
            { type = "item", name = "copper-ore", amount = 1 }
        },
        icons = {
            {
                icon = "__base__/graphics/icons/copper-ore.png",
                icon_size = 64,
                icon_mipmaps = 4
            }
        },
        energy_required = 1
    }
})

data:extend({
    {
        type = "recipe",
        name = "science-to-stone",
        enabled = true,
        ingredients = {
            { type = "item", name = "automation-science-pack", amount = 1 },
        },
        results = {
            { type = "item", name = "stone", amount = 1 }
        },
        icons = {
            {
                icon = "__base__/graphics/icons/stone.png",
                icon_size = 64,
                icon_mipmaps = 4
            }
        },
        energy_required = 1
    }
})
