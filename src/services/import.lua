local import_tint = {r=1, g=0.6, b=0.3}
local import_graphics = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"].graphics_set)
for _, layer in pairs(import_graphics.animation.layers) do
    if not layer.draw_as_shadow then
        layer.tint = import_tint
    end
end

data:extend({
    {
        type = "recipe-category",
        name = "import",
    },
    {
        type = "item",
        name = "import",
        icons = {
            {
                icon = "__base__/graphics/icons/assembling-machine-1.png",
                icon_size = 64,
                tint = import_tint,
            }
        },
        subgroup = "production-machine",
        order = "a[import]",
        place_result = "import",
        stack_size = 50,
    },
    {
        type = "recipe",
        name = "import",
        enabled = true,
        ingredients = {
            { type = "item", name = "wood", amount = 10 },
        },
        results = {
            { type = "item", name = "import", amount = 1 },
        },
    },
    {
        type = "assembling-machine",
        name = "import",
        icons = {
            {
                icon = "__base__/graphics/icons/assembling-machine-1.png",
                icon_size = 64,
                tint = import_tint,
            }
        },
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "import" },
        max_health = 300,
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        graphics_set = import_graphics,
        icon_draw_specification = data.raw["assembling-machine"]["assembling-machine-1"].icon_draw_specification,
        crafting_categories = { "import" },
        crafting_speed = 1,
        energy_source = { type = "void" },
        energy_usage = "1kW",
    },
})

table.insert(data.raw["character"]["character"].crafting_categories, "import")
