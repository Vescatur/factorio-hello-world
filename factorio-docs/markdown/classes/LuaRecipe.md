# LuaRecipe

_class_

A crafting recipe. Recipes belong to forces (see [LuaForce](../classes/LuaForce.md)) because some recipes are unlocked by research, and researches are per-force.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [categories](#categories) | array[[string](../concepts/string.md)] |  |
| [enabled](#enabled) | [boolean](../concepts/boolean.md) |  |
| [energy](#energy) | [double](../concepts/double.md) |  |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [group](#group) | [LuaGroup](../classes/LuaGroup.md) |  |
| [hidden](#hidden) | [boolean](../concepts/boolean.md) |  |
| [hidden_from_flow_stats](#hidden-from-flow-stats) | [boolean](../concepts/boolean.md) |  |
| [ingredients](#ingredients) | array[[Ingredient](../concepts/Ingredient.md)] |  |
| [localised_description](#localised-description) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [localised_name](#localised-name) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [order](#order) | [string](../concepts/string.md) |  |
| [productivity_bonus](#productivity-bonus) | [EffectValue](../concepts/EffectValue.md) |  |
| [products](#products) | array[[Product](../concepts/Product.md)] |  |
| [prototype](#prototype) | [LuaRecipePrototype](../classes/LuaRecipePrototype.md) |  |
| [subgroup](#subgroup) | [LuaGroup](../classes/LuaGroup.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### categories

**Read:** array[[string](../concepts/string.md)] · _read-only_

Categories of the recipe.

### enabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Can the recipe be used?

### energy

**Read:** [double](../concepts/double.md) · _read-only_

Energy required to execute this recipe. This directly affects the crafting time: Recipe's energy is exactly its crafting time in seconds, when crafted in an assembling machine with crafting speed exactly equal to one.

### force

**Read:** [LuaForce](../classes/LuaForce.md) · _read-only_

The force that owns this recipe.

### group

**Read:** [LuaGroup](../classes/LuaGroup.md) · _read-only_

Group of this recipe.

### hidden

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is the recipe hidden? Hidden recipes don't show up in the crafting menu.

### hidden_from_flow_stats

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Is the recipe hidden from flow statistics?

### ingredients

**Read:** array[[Ingredient](../concepts/Ingredient.md)] · _read-only_

The ingredients to this recipe.

**Example:**

```
-- The ingredients of "advanced-oil-processing" would look like this:
{{type="fluid", name="crude-oil", amount=100}, {type="fluid", name="water", amount=50}}
```

### localised_description

**Read:** [LocalisedString](../concepts/LocalisedString.md) · _read-only_

### localised_name

**Read:** [LocalisedString](../concepts/LocalisedString.md) · _read-only_

Localised name of the recipe.

### name

**Read:** [string](../concepts/string.md) · _read-only_

Name of the recipe. This can be different than the name of the result items as there could be more recipes to make the same item.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### order

**Read:** [string](../concepts/string.md) · _read-only_

The string used to alphabetically sort these prototypes. It is a simple string that has no additional semantic meaning.

### productivity_bonus

**Read:** [EffectValue](../concepts/EffectValue.md) · **Write:** [EffectValue](../concepts/EffectValue.md)

The productivity bonus for this recipe.

### products

**Read:** array[[Product](../concepts/Product.md)] · _read-only_

The results/products of this recipe.

**Example:**

```
-- The products of "advanced-oil-processing" would look like this:
{{type="fluid", name="heavy-oil", amount=25}, {type="fluid", name="light-oil", amount=45}, {type="fluid", name="petroleum-gas", amount=55}}
```

### prototype

**Read:** [LuaRecipePrototype](../classes/LuaRecipePrototype.md) · _read-only_

The prototype for this recipe.

### subgroup

**Read:** [LuaGroup](../classes/LuaGroup.md) · _read-only_

Subgroup of this recipe.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [has_category](#has-category) | Checks if recipe has given category |
| [reload](#reload) | Reload the recipe from the prototype. |

### has_category

`has_category(category)`

Checks if recipe has given category

#### Parameters

##### category

**Type:** [RecipeCategoryID](../concepts/RecipeCategoryID.md)

#### Return values

- [boolean](../concepts/boolean.md) — `true` if recipe has this category.

### reload

`reload()`

Reload the recipe from the prototype.
