# PodMovementProcessionLayer

_type_

**Example:**

```
{
  type = "pod-movement",
  frames =
  {
    { timestamp = 700 , tilt = 0.0               , tilt_t = 0 },
    { timestamp = 700 , offset = {0, 0 - 500}    , offset_t = {0, -40} },
    { timestamp = 900 , offset = {15, -60 - 500} , offset_t = {-10, -10} },
    { timestamp = 900 , opacity = 1.0 },
    { timestamp = 960 , tilt = 0.05              , tilt_t = -0.03 },
    { timestamp = 1050, tilt = 0.25              , tilt_t = 0 },
    { timestamp = 1050, offset = {40, -70 - 500} , offset_t = {-1, 0} },
    { timestamp = 1050, opacity = 0.0 },
    { timestamp = 700 , offset_rate = 0 },
    { timestamp = 1050, offset_rate = 1.0 }
  }
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [contribute_to_distance_traveled](#contribute-to-distance-traveled) | [boolean](../types/boolean.md) | yes |
| [distance_traveled_contribution](#distance-traveled-contribution) | [float](../types/float.md) | yes |
| [frames](#frames) | array[[PodMovementProcessionBezierControlPoint](../types/PodMovementProcessionBezierControlPoint.md)] |  |
| [inherit_from](#inherit-from) | [ProcessionLayerInheritanceGroupID](../types/ProcessionLayerInheritanceGroupID.md) | yes |
| [reference_group](#reference-group) | [ProcessionLayerInheritanceGroupID](../types/ProcessionLayerInheritanceGroupID.md) | yes |
| [type](#type) | `"pod-movement"` |  |

### contribute_to_distance_traveled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### distance_traveled_contribution

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### frames

**Type:** array[[PodMovementProcessionBezierControlPoint](../types/PodMovementProcessionBezierControlPoint.md)]

### inherit_from

**Type:** [ProcessionLayerInheritanceGroupID](../types/ProcessionLayerInheritanceGroupID.md) · _optional_

Adds the final position value from given layer to this one.

### reference_group

**Type:** [ProcessionLayerInheritanceGroupID](../types/ProcessionLayerInheritanceGroupID.md) · _optional_

The group this layer belongs to, for inheritance.

### type

**Type:** `"pod-movement"`
