# ItemPrototypeFilter

_concept_

**Definition:** table{filter, invert, mode}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [filter](#filter) | `"tool"` ∣ `"mergeable"` ∣ `"hidden"` ∣ `"hidden-in-factoriopedia"` ∣ `"is-parameter"` ∣ `"item-with-inventory"` ∣ `"selection-tool"` ∣ `"item-with-label"` ∣ `"has-rocket-launch-products"` ∣ `"fuel"` ∣ `"used-by-labs"` ∣ `"place-result"` ∣ `"burnt-result"` ∣ `"place-as-tile"` ∣ `"placed-as-equipment-result"` ∣ `"plant-result"` ∣ `"spoil-result"` ∣ `"name"` ∣ `"type"` ∣ `"flag"` ∣ `"subgroup"` ∣ `"fuel-category"` ∣ `"stack-size"` ∣ `"fuel-value"` ∣ `"fuel-acceleration-multiplier"` ∣ `"fuel-top-speed-multiplier"` ∣ `"fuel-emissions-multiplier"` |  |
| [invert](#invert) | [boolean](../concepts/boolean.md) | yes |
| [mode](#mode) | `"or"` ∣ `"and"` | yes |

### filter

**Type:** `"tool"` ∣ `"mergeable"` ∣ `"hidden"` ∣ `"hidden-in-factoriopedia"` ∣ `"is-parameter"` ∣ `"item-with-inventory"` ∣ `"selection-tool"` ∣ `"item-with-label"` ∣ `"has-rocket-launch-products"` ∣ `"fuel"` ∣ `"used-by-labs"` ∣ `"place-result"` ∣ `"burnt-result"` ∣ `"place-as-tile"` ∣ `"placed-as-equipment-result"` ∣ `"plant-result"` ∣ `"spoil-result"` ∣ `"name"` ∣ `"type"` ∣ `"flag"` ∣ `"subgroup"` ∣ `"fuel-category"` ∣ `"stack-size"` ∣ `"fuel-value"` ∣ `"fuel-acceleration-multiplier"` ∣ `"fuel-top-speed-multiplier"` ∣ `"fuel-emissions-multiplier"`

The condition to filter on.

### invert

**Type:** [boolean](../concepts/boolean.md) · _optional_

Inverts the condition. Default is `false`.

### mode

**Type:** `"or"` ∣ `"and"` · _optional_

How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
