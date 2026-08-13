# ItemProduct

_concept_

**Examples:**

```
-- Products of the "steel-chest" recipe (an array of Product)
{{type="item", name="steel-chest", amount=1}}
```

```
-- What a custom recipe would look like that had a probability of 0.5 to return a
-- minimum amount of 1 and a maximum amount of 5
{{type="item", name="custom-item", probability=0.5, amount_min=1, amount_max=5}}
```

**Definition:** table{affected_by_quality, always_fresh, amount, amount_max, amount_min, extra_count_fraction, ignored_by_productivity, ignored_by_stats, independent_probability, name, percent_spoiled, quality_change, quality_max, quality_min, reset_freshness_on_craft, shared_probability, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [affected_by_quality](#affected-by-quality) | [boolean](../concepts/boolean.md) |  |
| [always_fresh](#always-fresh) | [boolean](../concepts/boolean.md) | yes |
| [amount](#amount) | [uint16](../concepts/uint16.md) | yes |
| [amount_max](#amount-max) | [uint16](../concepts/uint16.md) | yes |
| [amount_min](#amount-min) | [uint16](../concepts/uint16.md) | yes |
| [extra_count_fraction](#extra-count-fraction) | [float](../concepts/float.md) | yes |
| [ignored_by_productivity](#ignored-by-productivity) | [uint16](../concepts/uint16.md) | yes |
| [ignored_by_stats](#ignored-by-stats) | [uint16](../concepts/uint16.md) | yes |
| [independent_probability](#independent-probability) | [double](../concepts/double.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [percent_spoiled](#percent-spoiled) | [float](../concepts/float.md) | yes |
| [quality_change](#quality-change) | [int8](../concepts/int8.md) | yes |
| [quality_max](#quality-max) | [QualityID](../concepts/QualityID.md) | yes |
| [quality_min](#quality-min) | [QualityID](../concepts/QualityID.md) | yes |
| [reset_freshness_on_craft](#reset-freshness-on-craft) | [boolean](../concepts/boolean.md) | yes |
| [shared_probability](#shared-probability) | [SharedProbabilityDefinition](../concepts/SharedProbabilityDefinition.md) |  |
| [type](#type) | `"item"` |  |

### affected_by_quality

**Type:** [boolean](../concepts/boolean.md)

### always_fresh

**Type:** [boolean](../concepts/boolean.md) · _optional_

### amount

**Type:** [uint16](../concepts/uint16.md) · _optional_

Amount of the item to give. If not returned, `amount_min` and `amount_max` will be present instead.

### amount_max

**Type:** [uint16](../concepts/uint16.md) · _optional_

Maximum amount of the item to give. Not returned if `amount` is returned.

### amount_min

**Type:** [uint16](../concepts/uint16.md) · _optional_

Minimal amount of the item to give. Not returned if `amount` is returned.

### extra_count_fraction

**Type:** [float](../concepts/float.md) · _optional_

Probability that a craft will yield one additional product. Also applies to bonus crafts caused by productivity.

### ignored_by_productivity

**Type:** [uint16](../concepts/uint16.md) · _optional_

How much of this product is ignored by productivity.

### ignored_by_stats

**Type:** [uint16](../concepts/uint16.md) · _optional_

How much of this product is ignored by statistics.

### independent_probability

**Type:** [double](../concepts/double.md)

A value in range `[0, 1]`. Item is only given with this probability; otherwise no product is produced.

### name

**Type:** [string](../concepts/string.md)

Prototype name of the result.

### percent_spoiled

**Type:** [float](../concepts/float.md) · _optional_

### quality_change

**Type:** [int8](../concepts/int8.md) · _optional_

### quality_max

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

### quality_min

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

### reset_freshness_on_craft

**Type:** [boolean](../concepts/boolean.md) · _optional_

### shared_probability

**Type:** [SharedProbabilityDefinition](../concepts/SharedProbabilityDefinition.md)

### type

**Type:** `"item"`
