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
