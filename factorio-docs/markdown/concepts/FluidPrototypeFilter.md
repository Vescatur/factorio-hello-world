# FluidPrototypeFilter

_concept_

**Definition:** table{filter, invert, mode}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [filter](#filter) | `"hidden"` ∣ `"name"` ∣ `"subgroup"` ∣ `"default-temperature"` ∣ `"max-temperature"` ∣ `"heat-capacity"` ∣ `"fuel-value"` ∣ `"emissions-multiplier"` ∣ `"gas-temperature"` |  |
| [invert](#invert) | [boolean](../concepts/boolean.md) | yes |
| [mode](#mode) | `"or"` ∣ `"and"` | yes |

### filter

**Type:** `"hidden"` ∣ `"name"` ∣ `"subgroup"` ∣ `"default-temperature"` ∣ `"max-temperature"` ∣ `"heat-capacity"` ∣ `"fuel-value"` ∣ `"emissions-multiplier"` ∣ `"gas-temperature"`

The condition to filter on.

### invert

**Type:** [boolean](../concepts/boolean.md) · _optional_

Inverts the condition. Default is `false`.

### mode

**Type:** `"or"` ∣ `"and"` · _optional_

How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
