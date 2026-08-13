# LuaRecipePrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

A crafting recipe prototype.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [allow_as_intermediate](#allow-as-intermediate) | [boolean](../concepts/boolean.md) |  |
| [allow_decomposition](#allow-decomposition) | [boolean](../concepts/boolean.md) |  |
| [allow_inserter_overload](#allow-inserter-overload) | [boolean](../concepts/boolean.md) |  |
| [allow_intermediates](#allow-intermediates) | [boolean](../concepts/boolean.md) |  |
| [allowed_effects](#allowed-effects) | dictionary[[string](../concepts/string.md) → [boolean](../concepts/boolean.md)] | yes |
| [allowed_module_categories](#allowed-module-categories) | dictionary[[string](../concepts/string.md) → `true`] | yes |
| [alternative_unlock_methods](#alternative-unlock-methods) | array[[LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md)] | yes |
| [always_show_made_in](#always-show-made-in) | [boolean](../concepts/boolean.md) |  |
| [can_set_quality](#can-set-quality) | [boolean](../concepts/boolean.md) |  |
| [categories](#categories) | array[[string](../concepts/string.md)] |  |
| [crafting_machine_tints](#crafting-machine-tints) | array[[Color](../concepts/Color.md)] |  |
| [effect_limitation_messages](#effect-limitation-messages) | array[[LocalisedString](../concepts/LocalisedString.md)] | yes |
| [emissions_multiplier](#emissions-multiplier) | [double](../concepts/double.md) |  |
| [enabled](#enabled) | [boolean](../concepts/boolean.md) |  |
| [energy](#energy) | [double](../concepts/double.md) |  |
| [factoriopedia_alternative](#factoriopedia-alternative) | [LuaRecipePrototype](../classes/LuaRecipePrototype.md) | yes |
| [hidden_from_flow_stats](#hidden-from-flow-stats) | [boolean](../concepts/boolean.md) |  |
| [hidden_from_player_crafting](#hidden-from-player-crafting) | [boolean](../concepts/boolean.md) |  |
| [hide_from_bonus_gui](#hide-from-bonus-gui) | [boolean](../concepts/boolean.md) |  |
| [hide_from_flow_stats](#hide-from-flow-stats) | [boolean](../concepts/boolean.md) |  |
| [hide_from_player_crafting](#hide-from-player-crafting) | [boolean](../concepts/boolean.md) |  |
| [hide_from_signal_gui](#hide-from-signal-gui) | [boolean](../concepts/boolean.md) |  |
| [ingredients](#ingredients) | array[[Ingredient](../concepts/Ingredient.md)] |  |
| [main_product](#main-product) | [Product](../concepts/Product.md) | yes |
| [maximum_productivity](#maximum-productivity) | [double](../concepts/double.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [on_crafted_event](#on-crafted-event) | [LuaEventType](../concepts/LuaEventType.md) | yes |
| [overload_multiplier](#overload-multiplier) | [uint32](../concepts/uint32.md) |  |
| [preserve_products_in_machine_output](#preserve-products-in-machine-output) | [boolean](../concepts/boolean.md) |  |
| [products](#products) | array[[Product](../concepts/Product.md)] |  |
| [request_paste_multiplier](#request-paste-multiplier) | [uint32](../concepts/uint32.md) |  |
| [surface_conditions](#surface-conditions) | array[[SurfaceCondition](../concepts/SurfaceCondition.md)] | yes |
| [trash](#trash) | array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] | yes |
| [unlock_results](#unlock-results) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### allow_as_intermediate

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this recipe is enabled for the purpose of intermediate hand-crafting.

### allow_decomposition

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this recipe is allowed to be broken down for the recipe tooltip "Total raw" calculations.

### allow_inserter_overload

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If the recipe is allowed to have the extra inserter overload bonus applied (4 * stack inserter stack size).

### allow_intermediates

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this recipe is allowed to use intermediate recipes when hand-crafting.

### allowed_effects

**Read:** dictionary[[string](../concepts/string.md) → [boolean](../concepts/boolean.md)] · _read-only_ · _optional_

The allowed module effects for this recipe, if any.

### allowed_module_categories

**Read:** dictionary[[string](../concepts/string.md) → `true`] · _read-only_ · _optional_

The allowed module categories for this recipe, if any.

### alternative_unlock_methods

**Read:** array[[LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md)] · _read-only_ · _optional_

Additional technologies listed under "Unlocked by" on a recipe's Factoriopedia page.

### always_show_made_in

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Should this recipe always show "Made in" in the tooltip?

### can_set_quality

**Read:** [boolean](../concepts/boolean.md) · _read-only_

True if a player can set quality of the recipe to craft. False when only normal quality recipes can be crafted.

### categories

**Read:** array[[string](../concepts/string.md)] · _read-only_

Categories of the recipe.

### crafting_machine_tints

**Read:** array[[Color](../concepts/Color.md)] · _read-only_

### effect_limitation_messages

**Read:** array[[LocalisedString](../concepts/LocalisedString.md)] · _read-only_ · _optional_

### emissions_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

The emissions multiplier for this recipe.

### enabled

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this recipe prototype is enabled by default (enabled at the beginning of a game).

### energy

**Read:** [double](../concepts/double.md) · _read-only_

Energy required to execute this recipe. This directly affects the crafting time: Recipe's energy is exactly its crafting time in seconds, when crafted in an assembling machine with crafting speed exactly equal to one.

### factoriopedia_alternative

**Read:** [LuaRecipePrototype](../classes/LuaRecipePrototype.md) · _read-only_ · _optional_

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### hidden_from_flow_stats

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is the recipe hidden from flow statistics (item/fluid production statistics)?

### hidden_from_player_crafting

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is the recipe hidden from player crafting? The recipe will still show up for selection in machines.

### hide_from_bonus_gui

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### hide_from_flow_stats

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### hide_from_player_crafting

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### hide_from_signal_gui

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this recipe is marked to be hidden from the signal GUI.

### ingredients

**Read:** array[[Ingredient](../concepts/Ingredient.md)] · _read-only_

The ingredients to this recipe.

**Example:**

```
-- The ingredients of "advanced-oil-processing" would look like this
{{type="fluid", name="crude-oil", amount=100}, {type="fluid", name="water", amount=50}}
```

### main_product

**Read:** [Product](../concepts/Product.md) · _read-only_ · _optional_

The main product of this recipe, if any.

### maximum_productivity

**Read:** [double](../concepts/double.md) · _read-only_

The maximal productivity bonus that can be achieved with this recipe.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### on_crafted_event

**Read:** [LuaEventType](../concepts/LuaEventType.md) · _read-only_ · _optional_

Event raised when this recipe is crafted. Only available if [RecipePrototype::raise_on_crafted](../prototypes/RecipePrototype.md#raise-on-crafted) was set to true.

### overload_multiplier

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Used to determine how many extra items are put into an assembling machine before it's considered "full enough".

### preserve_products_in_machine_output

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### products

**Read:** array[[Product](../concepts/Product.md)] · _read-only_

The results/products of this recipe.

**Example:**

```
-- The products of "advanced-oil-processing" would look like this:
{{type="fluid", name="heavy-oil", amount=25}, {type="fluid", name="light-oil", amount=45}, {type="fluid", name="petroleum-gas", amount=55}}
```

### request_paste_multiplier

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The multiplier used when this recipe is copied from an assembling machine to a requester chest. For each item in the recipe the item count * this value is set in the requester chest.

### surface_conditions

**Read:** array[[SurfaceCondition](../concepts/SurfaceCondition.md)] · _read-only_ · _optional_

The surface conditions required to craft this recipe.

### trash

**Read:** array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] · _read-only_ · _optional_

The 'trash' items that this recipe might produce as a result of spoiling.

### unlock_results

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this recipe unlocks the result item(s) so they're shown in filter-select GUIs.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [get_ingredient_quality](#get-ingredient-quality) | Ingredient materials required to craft recipe when configured to a specific quality. |
| [get_product_amount](#get-product-amount) | Average amount of the product given. |
| [get_product_quality](#get-product-quality) | Quality of the product given when recipe is configured to a specific quality. |
| [has_category](#has-category) | Checks if recipe has given category |

### get_ingredient_quality

`get_ingredient_quality(ingredient_index, recipe_quality)`

Ingredient materials required to craft recipe when configured to a specific quality.

#### Parameters

##### ingredient_index

**Type:** [uint32](../concepts/uint32.md)

##### recipe_quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

Defaults to `normal`.

#### Return values

- [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

### get_product_amount

`get_product_amount(product_index, productivity)`

Average amount of the product given.

#### Parameters

##### product_index

**Type:** [uint32](../concepts/uint32.md)

##### productivity

**Type:** [double](../concepts/double.md) · _optional_

#### Return values

- [double](../concepts/double.md)

### get_product_quality

`get_product_quality(product_index, recipe_quality)`

Quality of the product given when recipe is configured to a specific quality.

#### Parameters

##### product_index

**Type:** [uint32](../concepts/uint32.md)

##### recipe_quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

Defaults to `normal`.

#### Return values

- [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

### has_category

`has_category(category)`

Checks if recipe has given category

#### Parameters

##### category

**Type:** [RecipeCategoryID](../concepts/RecipeCategoryID.md)

#### Return values

- [boolean](../concepts/boolean.md) — `true` if recipe has this category.
