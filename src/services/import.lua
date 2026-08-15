
local prototypes = require("lib.prototypes")

local import_tint = {r=1, g=0.6, b=0.3}
local import_graphics = prototypes.tinted_machine_graphics("assembling-machine-1", import_tint)
local circuit_connector, circuit_wire_max_distance =
    prototypes.machine_circuit_connection("assembling-machine-1")

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
        circuit_connector = circuit_connector,
        circuit_wire_max_distance = circuit_wire_max_distance,
        crafting_categories = { "import" },
        crafting_speed = 1,
        energy_source = { type = "void" },
        energy_usage = "1kW",
    },
})

table.insert(data.raw["character"]["character"].crafting_categories, "import")

