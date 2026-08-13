# FeatureFlags

_type_ · **abstract**

A dictionary of feature flags and their status. It can be used to adjust prototypes based on whether the feature flags are enabled. It is accessible through the global object named `feature_flags`.

See the [mod structure](../auxiliary/mod-structure.md) documentation for more information on what each feature flag affects.

**Example:**

```
-- sets coal to spoil only when the spoiling feature flag is enabled
if feature_flags["spoiling"] then
  data.raw.item.coal.spoil_ticks = 600
end
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [expansion](#expansion) | [boolean](../types/boolean.md) |  |
| [expansion_shaders](#expansion-shaders) | [boolean](../types/boolean.md) |  |
| [freezing](#freezing) | [boolean](../types/boolean.md) |  |
| [quality](#quality) | [boolean](../types/boolean.md) |  |
| [rail_bridges](#rail-bridges) | [boolean](../types/boolean.md) |  |
| [segmented_units](#segmented-units) | [boolean](../types/boolean.md) |  |
| [space_travel](#space-travel) | [boolean](../types/boolean.md) |  |
| [spoiling](#spoiling) | [boolean](../types/boolean.md) |  |

### expansion

**Type:** [boolean](../types/boolean.md)

### expansion_shaders

**Type:** [boolean](../types/boolean.md)

### freezing

**Type:** [boolean](../types/boolean.md)

### quality

**Type:** [boolean](../types/boolean.md)

### rail_bridges

**Type:** [boolean](../types/boolean.md)

### segmented_units

**Type:** [boolean](../types/boolean.md)

### space_travel

**Type:** [boolean](../types/boolean.md)

### spoiling

**Type:** [boolean](../types/boolean.md)
