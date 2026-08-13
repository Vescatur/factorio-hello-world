# RecipePrototype

_prototype_

**Prototype type string:** `type = "recipe"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

A recipe. It can be a crafting recipe, a smelting recipe, or a custom type of recipe, see [RecipeCategory](../prototypes/RecipeCategory.md).

**Examples:**

```
{
  type = "recipe",
  name = "iron-plate",
  categories = {"smelting"},
  energy_required = 3.5,
  ingredients = {{type = "item", name = "iron-ore", amount = 1}},
  results = {{type = "item", name = "iron-plate", amount = 1}}
}
```

```
{
  type = "recipe",
  name = "coal-liquefaction",
  categories = {"oil-processing"},
  subgroup = "fluid-recipes",
  order = "a[oil-processing]-c[coal-liquefaction]",
  enabled = false,
  energy_required = 5,
  icon = "__base__/graphics/icons/fluid/coal-liquefaction.png",
  icon_size = 32,
  ingredients =
  {
    {type = "item", name = "coal", amount = 10},
    {type = "fluid", name = "heavy-oil", amount = 25},
    {type = "fluid", name = "steam", amount = 50}
  },
  results=
  {
    {type = "fluid", name = "heavy-oil", amount = 35},
    {type = "fluid", name = "light-oil", amount = 15},
    {type = "fluid", name = "petroleum-gas", amount = 20}
  },
  allow_decomposition = false
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_as_intermediate](#allow-as-intermediate) | [boolean](../types/boolean.md) | yes |
| [allow_consumption](#allow-consumption) | [boolean](../types/boolean.md) | yes |
| [allow_consumption_message](#allow-consumption-message) | [LocalisedString](../types/LocalisedString.md) | yes |
| [allow_decomposition](#allow-decomposition) | [boolean](../types/boolean.md) | yes |
| [allow_inserter_overload](#allow-inserter-overload) | [boolean](../types/boolean.md) | yes |
| [allow_intermediates](#allow-intermediates) | [boolean](../types/boolean.md) | yes |
| [allow_pollution](#allow-pollution) | [boolean](../types/boolean.md) | yes |
| [allow_pollution_message](#allow-pollution-message) | [LocalisedString](../types/LocalisedString.md) | yes |
| [allow_productivity](#allow-productivity) | [boolean](../types/boolean.md) | yes |
| [allow_productivity_message](#allow-productivity-message) | [LocalisedString](../types/LocalisedString.md) | yes |
| [allow_quality](#allow-quality) | [boolean](../types/boolean.md) | yes |
| [allow_quality_message](#allow-quality-message) | [LocalisedString](../types/LocalisedString.md) | yes |
| [allow_speed](#allow-speed) | [boolean](../types/boolean.md) | yes |
| [allow_speed_message](#allow-speed-message) | [LocalisedString](../types/LocalisedString.md) | yes |
| [allowed_module_categories](#allowed-module-categories) | array[[ModuleCategoryID](../types/ModuleCategoryID.md)] | yes |
| [alternative_unlock_methods](#alternative-unlock-methods) | array[[TechnologyID](../types/TechnologyID.md)] | yes |
| [always_show_made_in](#always-show-made-in) | [boolean](../types/boolean.md) | yes |
| [auto_recycle](#auto-recycle) | [boolean](../types/boolean.md) | yes |
| [can_set_quality](#can-set-quality) | [boolean](../types/boolean.md) | yes |
| [categories](#categories) | array[[RecipeCategoryID](../types/RecipeCategoryID.md)] | yes |
| [crafting_machine_tint](#crafting-machine-tint) | [RecipeTints](../types/RecipeTints.md) | yes |
| [emissions_multiplier](#emissions-multiplier) | [double](../types/double.md) | yes |
| [enabled](#enabled) | [boolean](../types/boolean.md) | yes |
| [energy_required](#energy-required) | [double](../types/double.md) | yes |
| [hidden](#hidden) | [boolean](../types/boolean.md) | yes |
| [hide_from_bonus_gui](#hide-from-bonus-gui) | [boolean](../types/boolean.md) | yes |
| [hide_from_player_crafting](#hide-from-player-crafting) | [boolean](../types/boolean.md) | yes |
| [hide_from_signal_gui](#hide-from-signal-gui) | [boolean](../types/boolean.md) | yes |
| [hide_from_stats](#hide-from-stats) | [boolean](../types/boolean.md) | yes |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [ingredients](#ingredients) | array[[IngredientPrototype](../types/IngredientPrototype.md)] | yes |
| [main_product](#main-product) | [string](../types/string.md) | yes |
| [maximum_productivity](#maximum-productivity) | [double](../types/double.md) | yes |
| [overload_multiplier](#overload-multiplier) | [uint32](../types/uint32.md) | yes |
| [preserve_products_in_machine_output](#preserve-products-in-machine-output) | [boolean](../types/boolean.md) | yes |
| [raise_on_crafted](#raise-on-crafted) | [boolean](../types/boolean.md) | yes |
| [requester_paste_multiplier](#requester-paste-multiplier) | [uint32](../types/uint32.md) | yes |
| [requires_ingredients_to_unlock_results](#requires-ingredients-to-unlock-results) | [boolean](../types/boolean.md) | yes |
| [results](#results) | array[[ProductPrototype](../types/ProductPrototype.md)] | yes |
| [sort_item_ingredients](#sort-item-ingredients) | [boolean](../types/boolean.md) | yes |
| [surface_conditions](#surface-conditions) | array[[SurfaceCondition](../types/SurfaceCondition.md)] | yes |
| [unlock_results](#unlock-results) | [boolean](../types/boolean.md) | yes |

### allow_as_intermediate

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the recipe can be used as an intermediate recipe in hand-crafting.

### allow_consumption

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### allow_consumption_message

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_ · **Default:** ``{"item-limitation.consumption-effect"}``

### allow_decomposition

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this recipe is allowed to be broken down for the recipe tooltip "Total raw" calculations.

### allow_inserter_overload

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the recipe is allowed to have the extra inserter overload bonus applied (4 * stack inserter stack size).

### allow_intermediates

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the recipe is allowed to use intermediate recipes when hand-crafting.

### allow_pollution

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### allow_pollution_message

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_ · **Default:** ``{"item-limitation.pollution-effect"}``

### allow_productivity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### allow_productivity_message

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_ · **Default:** ``{"item-limitation.productivity-effect"}``

### allow_quality

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### allow_quality_message

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_ · **Default:** ``{"item-limitation.quality-effect"}``

### allow_speed

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### allow_speed_message

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_ · **Default:** ``{"item-limitation.speed-effect"}``

### allowed_module_categories

**Type:** array[[ModuleCategoryID](../types/ModuleCategoryID.md)] · _optional_ · **Default:** `All module categories are allowed`

Sets the [module categories](../prototypes/ModuleCategory.md) that are allowed to be used with this recipe.

### alternative_unlock_methods

**Type:** array[[TechnologyID](../types/TechnologyID.md)] · _optional_

Additional technologies to list under "Unlocked by" on a recipe's Factoriopedia page.

### always_show_made_in

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the "Made in: <Machine>" part of the tool-tip should always be present, and not only when the recipe can't be hand-crafted.

### auto_recycle

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the recipe should be included in the recycling recipes automatically generated by the quality mod.

This property is not read by the game engine itself, but the quality mod's recycling.lua file. This means it is discarded by the game engine after loading finishes.

### can_set_quality

**Type:** [boolean](../types/boolean.md) · _optional_

When set to `true`, player can set quality of this recipe to craft. If set to `false` then this recipe can only be crafted at normal quality.

Defaults to `true` if recipe is a parameter, or has at least one item ingredient that does not have any of [quality_min](../types/ItemIngredientPrototype.md#quality-min), [quality_max](../types/ItemIngredientPrototype.md#quality-max),  or [quality_change](../types/ItemIngredientPrototype.md#quality-change) set.

This property also influences the automatic [Furnace Recipe Selection](../auxiliary/furnace-recipe-selection.md).

### categories

**Type:** array[[RecipeCategoryID](../types/RecipeCategoryID.md)] · _optional_ · **Default:** ``{"crafting"}``

The [categories](../prototypes/RecipeCategory.md) of this recipe. Controls which machines can craft this recipe.

The built-in categories can be found [here](https://wiki.factorio.com/Data.raw#recipe-category). The base `"crafting"` category can not contain recipes with fluid ingredients or products.

The array must contain at least one category, it cannot be empty.

**Example:**

```
categories = {"smelting"}
```

### crafting_machine_tint

**Type:** [RecipeTints](../types/RecipeTints.md) · _optional_

Used by [WorkingVisualisations::working_visualisations](../types/WorkingVisualisations.md#working-visualisations) to tint certain layers with the recipe color. [WorkingVisualisation::apply_recipe_tint](../types/WorkingVisualisation.md#apply-recipe-tint) determines which of the four colors is used for that layer, if any.

### emissions_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

This can be `false` to disable the recipe at the start of the game, or `true` to leave it enabled.

If a recipe is unlocked via technology, this should be set to `false`.

### energy_required

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

The amount of time it takes to make this recipe. Must be `> 0.001`. Equals the number of seconds it takes to craft at crafting speed `1`.

### hidden

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Hides the recipe from crafting menus and other recipe selection lists.

### hide_from_bonus_gui

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### hide_from_player_crafting

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Hides the recipe from the player's crafting screen. The recipe will still show up for selection in machines.

### hide_from_signal_gui

**Type:** [boolean](../types/boolean.md) · _optional_

If left unset, this property will be determined automatically: If the recipe is not `hidden`, and no item, fluid, or virtual signal has the same icon as this recipe, this property will be set to `false`. It'll be `true` otherwise.

### hide_from_stats

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Hides the recipe from item/fluid production statistics.

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

If given, this determines the recipe's icon. Otherwise, the icon of `main_product` or the singular product is used.

Only loaded if `icons` is not defined.

Mandatory if `icons` is not defined for a recipe with more than one product and no `main_product`, or no product.

**Example:**

```
icon = "__base__/graphics/icons/fluid/heavy-oil.png"
```

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

### ingredients

**Type:** array[[IngredientPrototype](../types/IngredientPrototype.md)] · _optional_

A table containing ingredient names and amounts. Can also contain information about fluid temperature and whether some of the amount is ignored by production statistics.

Can be set to an empty table to create a recipe that needs no ingredients. [Assembling machines](../prototypes/AssemblingMachinePrototype.md#ingredient-count) do not support recipes with more than 65 535 different item ingredients.

Duplicate ingredients, e.g. two entries with the same name, are *not* allowed. In-game, the item ingredients are ordered by [ItemGroup::order_in_recipe](../prototypes/ItemGroup.md#order-in-recipe) if [RecipePrototype::sort_item_ingredients](../prototypes/RecipePrototype.md#sort-item-ingredients) is set to `true`.

**Examples:**

```
-- Recipe with items
ingredients =
{
  {type = "item", name = "iron-stick", amount = 2},
  {type = "item", name = "iron-plate", amount = 3}
}
```

```
-- Recipe with fluids
ingredients =
{
  {type = "fluid", name = "water", amount = 50},
  {type = "fluid", name = "crude-oil", amount = 100}
}
```

### main_product

**Type:** [string](../types/string.md) · _optional_

For recipes with one or more products: Subgroup, localised_name and icon default to the values of the singular/main product, but can be overwritten by the recipe. Setting the main_product to an empty string (`""`) forces the title in the recipe tooltip to use the recipe's name (not that of the product) and shows the products in the tooltip.

If 1) there are multiple products and this property is nil, 2) this property is set to an empty string (`""`), or 3) there are no products, the recipe will use the localised_name, icon, and subgroup of the recipe. icon and subgroup become non-optional.

### maximum_productivity

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3.0}`

Must be >= 0.

### overload_multiplier

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Used to determine how many extra items are put into an assembling machine before it's considered "full enough". See [insertion limits](https://wiki.factorio.com/Inserters#Insertion_limits).

If set to `0`, it instead uses the following formula: `1.166 / (energy_required / the assembler's crafting_speed)`, rounded up, and clamped to be between`2` and `100`. The numbers used in this formula can be changed by the [UtilityConstants](../prototypes/UtilityConstants.md) properties `dynamic_recipe_overload_factor`, `minimum_recipe_overload_multiplier`, and `maximum_recipe_overload_multiplier`.

### preserve_products_in_machine_output

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### raise_on_crafted

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set to true, an event with identifier of [LuaRecipePrototype::on_crafted_event](../classes/LuaRecipePrototype.md#on-crafted-event) will be raised when this recipe is crafted. Currently this is only raised when recipe is crafted by a crafting machine.

Event raised will be given data as described by [OnRecipeCraftedData](../concepts/OnRecipeCraftedData.md).

**Example:**

```
-- in data stage:
data.raw.recipe["iron-plate"].raise_on_crafted = true
-- in control stage:
script.on_event(prototypes.recipe["iron-plate"].on_crafted_event, function(event)
  game.print("Iron plate was crafted by ".. event.entity.name .. " at " .. event.entity.gps_tag)
end)
```

### requester_paste_multiplier

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 30}`

### requires_ingredients_to_unlock_results

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `Value of `hidden``

Whether enabling this recipe requires the ingredients be unlocked before the products are marked as unlocked.

### results

**Type:** array[[ProductPrototype](../types/ProductPrototype.md)] · _optional_

A table containing result names and amounts. Products also contain information such as fluid temperature, probability of results and whether some of the amount is ignored by productivity.

Can be set to an empty table to create a recipe that produces nothing. [Assembling machines](../prototypes/AssemblingMachinePrototype.md#max-item-product-count) do not support recipes with more than 65 535 different item products.

Duplicate results, e.g. two entries with the same name, are allowed.

**Examples:**

```
results =
{
  {type = "fluid", name= "heavy-oil", amount = 3},
  {type = "fluid", name= "light-oil", amount = 3},
  {type = "fluid", name= "petroleum-gas", amount = 4}
}
```

```
results =
{
  {type = "item", name = "iron-plate", amount = 9},
  {type = "item", name = "copper-plate", amount = 1}
}
```

```
results = {{type = "fluid", name = "steam", amount = 1, temperature = 165}}
```

### sort_item_ingredients

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When set to `true`, item ingredients will be sorted based on [ItemGroup::order_in_recipe](../prototypes/ItemGroup.md#order-in-recipe).

### surface_conditions

**Type:** array[[SurfaceCondition](../types/SurfaceCondition.md)] · _optional_

### unlock_results

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether enabling this recipe unlocks its item products to show in selection lists (item filters, logistic requests, etc.).
