-- The customer item the Entrance spawns. See services/economy/customers/orders.lua.
local customers = require("services.economy.customers.orders")

local prototypes = require("lib.prototypes")

local entrance_tint = {r=0.5, g=1, b=0.5}
local entrance_graphics = prototypes.tinted_machine_graphics("assembling-machine-1", entrance_tint)
local circuit_connector, circuit_wire_max_distance =
    prototypes.machine_circuit_connection("assembling-machine-1")

data:extend({
    {
        type = "recipe-category",
        name = "entrance",
    },
    {
        type = "item",
        name = "entrance",
        icons = {
            {
                icon = "__base__/graphics/icons/assembling-machine-1.png",
                icon_size = 64,
                tint = entrance_tint,
            }
        },
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
        icons = {
            {
                icon = "__base__/graphics/icons/assembling-machine-1.png",
                icon_size = 64,
                tint = entrance_tint,
            }
        },
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "entrance" },
        max_health = 300,
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        graphics_set = entrance_graphics,
        icon_draw_specification = data.raw["assembling-machine"]["assembling-machine-1"].icon_draw_specification,
        circuit_connector = circuit_connector,
        circuit_wire_max_distance = circuit_wire_max_distance,
        crafting_categories = { "entrance" },
        crafting_speed = 1,
        energy_source = { type = "void" },
        energy_usage = "1kW",
    },
})


-- ==== The only recipe the Entrance crafts ====
--
-- One Entrance may exist, so this recipe is the sole tap the whole economy
-- runs from. `energy_required` below and `crafting_speed` above are the two
-- knobs that set how fast customers arrive -- retune those, never the building
-- count. Customers arrive at the bottom tier and work their way up from there.
data:extend({
    {
        type = "recipe",
        name = "customer-new",
        categories = { "entrance" },
        enabled = true,
        results = {
            { type = "item", name = customers.item[customers.entry], amount = 1, always_fresh = true }
        },
        energy_required = 60,
        subgroup = "customer-new",
        order = "a"
    }
})
