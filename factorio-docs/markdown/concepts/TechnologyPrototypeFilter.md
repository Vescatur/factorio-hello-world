# TechnologyPrototypeFilter

_concept_

**Definition:** table{filter, invert, mode}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [filter](#filter) | `"enabled"` ∣ `"hidden"` ∣ `"upgrade"` ∣ `"visible-when-disabled"` ∣ `"has-effects"` ∣ `"has-prerequisites"` ∣ `"research-unit-ingredient"` ∣ `"unlocks-recipe"` ∣ `"level"` ∣ `"max-level"` ∣ `"time"` |  |
| [invert](#invert) | [boolean](../concepts/boolean.md) | yes |
| [mode](#mode) | `"or"` ∣ `"and"` | yes |

### filter

**Type:** `"enabled"` ∣ `"hidden"` ∣ `"upgrade"` ∣ `"visible-when-disabled"` ∣ `"has-effects"` ∣ `"has-prerequisites"` ∣ `"research-unit-ingredient"` ∣ `"unlocks-recipe"` ∣ `"level"` ∣ `"max-level"` ∣ `"time"`

The condition to filter on.

### invert

**Type:** [boolean](../concepts/boolean.md) · _optional_

Inverts the condition. Default is `false`.

### mode

**Type:** `"or"` ∣ `"and"` · _optional_

How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
