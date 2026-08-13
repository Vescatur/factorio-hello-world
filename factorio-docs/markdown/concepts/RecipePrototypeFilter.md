# RecipePrototypeFilter

_concept_

**Definition:** table{filter, invert, mode}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [filter](#filter) | `"enabled"` ∣ `"hidden"` ∣ `"hidden-from-flow-stats"` ∣ `"hidden-from-player-crafting"` ∣ `"allow-as-intermediate"` ∣ `"allow-intermediates"` ∣ `"allow-decomposition"` ∣ `"always-show-made-in"` ∣ `"has-ingredients"` ∣ `"has-products"` ∣ `"has-ingredient-item"` ∣ `"has-ingredient-fluid"` ∣ `"has-product-item"` ∣ `"has-product-fluid"` ∣ `"subgroup"` ∣ `"category"` ∣ `"energy"` ∣ `"emissions-multiplier"` ∣ `"request-paste-multiplier"` ∣ `"overload-multiplier"` |  |
| [invert](#invert) | [boolean](../concepts/boolean.md) | yes |
| [mode](#mode) | `"or"` ∣ `"and"` | yes |

### filter

**Type:** `"enabled"` ∣ `"hidden"` ∣ `"hidden-from-flow-stats"` ∣ `"hidden-from-player-crafting"` ∣ `"allow-as-intermediate"` ∣ `"allow-intermediates"` ∣ `"allow-decomposition"` ∣ `"always-show-made-in"` ∣ `"has-ingredients"` ∣ `"has-products"` ∣ `"has-ingredient-item"` ∣ `"has-ingredient-fluid"` ∣ `"has-product-item"` ∣ `"has-product-fluid"` ∣ `"subgroup"` ∣ `"category"` ∣ `"energy"` ∣ `"emissions-multiplier"` ∣ `"request-paste-multiplier"` ∣ `"overload-multiplier"`

The condition to filter on.

### invert

**Type:** [boolean](../concepts/boolean.md) · _optional_

Inverts the condition. Default is `false`.

### mode

**Type:** `"or"` ∣ `"and"` · _optional_

How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
