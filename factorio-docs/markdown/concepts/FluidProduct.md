# FluidProduct

_concept_

**Example:**

```
-- Products of the "advanced-oil-processing" recipe
{{type="fluid", name="heavy-oil", amount=1},
  {type="fluid", name="light-oil", amount=4.5},
  {type="fluid", name="petroleum-gas", amount=5.5}}
```

**Definition:** table{amount, amount_max, amount_min, fluidbox_index, ignored_by_productivity, ignored_by_stats, independent_probability, name, shared_probability, temperature, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [double](../concepts/double.md) | yes |
| [amount_max](#amount-max) | [double](../concepts/double.md) | yes |
| [amount_min](#amount-min) | [double](../concepts/double.md) | yes |
| [fluidbox_index](#fluidbox-index) | [uint32](../concepts/uint32.md) | yes |
| [ignored_by_productivity](#ignored-by-productivity) | [double](../concepts/double.md) | yes |
| [ignored_by_stats](#ignored-by-stats) | [double](../concepts/double.md) | yes |
| [independent_probability](#independent-probability) | [double](../concepts/double.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [shared_probability](#shared-probability) | [SharedProbabilityDefinition](../concepts/SharedProbabilityDefinition.md) |  |
| [temperature](#temperature) | [float](../concepts/float.md) | yes |
| [type](#type) | `"fluid"` |  |

### amount

**Type:** [double](../concepts/double.md) · _optional_

Amount of the fluid to give. If not returned, `amount_min` and `amount_max` will be present instead.

### amount_max

**Type:** [double](../concepts/double.md) · _optional_

Maximum amount of the fluid to give. Not returned if `amount` is returned.

### amount_min

**Type:** [double](../concepts/double.md) · _optional_

Minimal amount of the fluid to give. Not returned if `amount` is returned.

### fluidbox_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

### ignored_by_productivity

**Type:** [double](../concepts/double.md) · _optional_

How much of this product is ignored by productivity.

### ignored_by_stats

**Type:** [double](../concepts/double.md) · _optional_

How much of this product is ignored by statistics.

### independent_probability

**Type:** [double](../concepts/double.md)

A value in range `[0, 1]`. Fluid is only given with this probability; otherwise no product is produced.

### name

**Type:** [string](../concepts/string.md)

Prototype name of the result.

### shared_probability

**Type:** [SharedProbabilityDefinition](../concepts/SharedProbabilityDefinition.md)

### temperature

**Type:** [float](../concepts/float.md) · _optional_

The fluid temperature of this product.

### type

**Type:** `"fluid"`
