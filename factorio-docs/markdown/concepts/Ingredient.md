# Ingredient

_concept_

**Definition:** table{amount, ignored_by_stats, name, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [double](../concepts/double.md) |  |
| [ignored_by_stats](#ignored-by-stats) | [uint32](../concepts/uint32.md) ∣ [double](../concepts/double.md) | yes |
| [name](#name) | [string](../concepts/string.md) |  |
| [type](#type) | `"item"` ∣ `"fluid"` |  |

### amount

**Type:** [double](../concepts/double.md)

Amount of the item or fluid.

### ignored_by_stats

**Type:** [uint32](../concepts/uint32.md) ∣ [double](../concepts/double.md) · _optional_

How much of this ingredient is ignored by statistics.

### name

**Type:** [string](../concepts/string.md)

Prototype name of the required item or fluid.

### type

**Type:** `"item"` ∣ `"fluid"`
