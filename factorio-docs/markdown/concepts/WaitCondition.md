# WaitCondition

_concept_

**Definition:** table{compare_type, condition, damage, planet, station, ticks, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [compare_type](#compare-type) | `"and"` ∣ `"or"` | yes |
| [condition](#condition) | [CircuitCondition](../concepts/CircuitCondition.md) ∣ [BlueprintItemIDAndQualityIDPair](../concepts/BlueprintItemIDAndQualityIDPair.md) | yes |
| [damage](#damage) | [uint32](../concepts/uint32.md) | yes |
| [planet](#planet) | [string](../concepts/string.md) | yes |
| [station](#station) | [string](../concepts/string.md) | yes |
| [ticks](#ticks) | [uint32](../concepts/uint32.md) | yes |
| [type](#type) | [WaitConditionType](../concepts/WaitConditionType.md) |  |

### compare_type

**Type:** `"and"` ∣ `"or"` · _optional_

Specifies how this condition is to be compared with the preceding conditions in the corresponding `wait_conditions` array. Always present when reading, defaults to `"and"` when writing.

### condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) ∣ [BlueprintItemIDAndQualityIDPair](../concepts/BlueprintItemIDAndQualityIDPair.md) · _optional_

This is a CircuitCondition and only present when `type` is `"item_count"`, `"circuit"`, `"fluid_count"`, `"fuel_item_count_all"`, or `"fuel_item_count_any"`, and a circuit condition is configured. This is a BlueprintItemIDAndQualityIDPair and only present when `type` is `"request_satisfied"` or `"request_not_satisfied"`

### damage

**Type:** [uint32](../concepts/uint32.md) · _optional_

Amount of damage to take when `type` is `"damage_taken"`.

### planet

**Type:** [string](../concepts/string.md) · _optional_

Name of the space location. Only present when `type` is "`any_planet_import_zero`" and a planet is configured.

### station

**Type:** [string](../concepts/string.md) · _optional_

Name of the station. Only present when `type` is "`specific_destination_full`", "`specific_destination_not_full`", "`at_station`", or "`not_at_station`", and a station is configured.

### ticks

**Type:** [uint32](../concepts/uint32.md) · _optional_

Number of ticks to wait when `type` is `"time"`, or number of ticks of inactivity when `type` is `"inactivity"`.

### type

**Type:** [WaitConditionType](../concepts/WaitConditionType.md)
