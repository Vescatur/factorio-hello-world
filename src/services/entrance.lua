data:extend({
    {
        type = "recipe-category",
        name = "entrance",
    },
    {
        type = "item",
        name = "entrance",
        icon = "__base__/graphics/icons/assembling-machine-1.png",
        subgroup = "production-machine",
        order = "a[entrance]",
        place_result = "entrance",
        stack_size = 50,
    },
    {
        type = "recipe",
        name = "entrance",
        enabled = true,
        ingredients = {
            { type = "item", name = "wood", amount = 10 },
        },
        results = {
            { type = "item", name = "entrance", amount = 1 },
        },
    },
    {
        type = "assembling-machine",
        name = "entrance",
        icon = "__base__/graphics/icons/assembling-machine-1.png",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "entrance" },
        max_health = 300,
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        graphics_set = data.raw["assembling-machine"]["assembling-machine-1"].graphics_set,
        icon_draw_specification = data.raw["assembling-machine"]["assembling-machine-1"].icon_draw_specification,
        crafting_categories = { "entrance" },
        crafting_speed = 1,
        energy_source = { type = "void" },
        energy_usage = "1kW",
    },
})
