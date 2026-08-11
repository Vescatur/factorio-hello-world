-- Hello World mod: adds a hand-craftable recipe that produces iron ore.
--
-- Recipes with no "category" field default to the "crafting" category,
-- which is craftable directly in the player's inventory (no assembler needed).

data:extend({
  {
    type = "recipe",
    name = "hello-world-iron-ore",

    -- Craftable from the start, no research required.
    enabled = true,

    -- How long it takes to craft, in seconds (before any speed bonuses).
    energy_required = 1,

    ingredients = {
      { type = "item", name = "wood", amount = 1 }
    },

    results = {
      { type = "item", name = "iron-ore", amount = 1 }
    }

    -- No icon/subgroup specified: the recipe automatically inherits
    -- the icon of its single result item (iron ore) and lives in
    -- iron ore's normal crafting menu group.
  }
})
