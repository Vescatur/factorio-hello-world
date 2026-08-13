# PodDistanceTraveledProcessionLayer

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [contribute_to_distance_traveled](#contribute-to-distance-traveled) | [boolean](../types/boolean.md) | yes |
| [distance_traveled_contribution](#distance-traveled-contribution) | [float](../types/float.md) | yes |
| [frames](#frames) | array[[PodDistanceTraveledProcessionBezierControlPoint](../types/PodDistanceTraveledProcessionBezierControlPoint.md)] |  |
| [reference_group](#reference-group) | [ProcessionLayerInheritanceGroupID](../types/ProcessionLayerInheritanceGroupID.md) | yes |
| [type](#type) | `"pod-distance-traveled"` |  |

### contribute_to_distance_traveled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### distance_traveled_contribution

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### frames

**Type:** array[[PodDistanceTraveledProcessionBezierControlPoint](../types/PodDistanceTraveledProcessionBezierControlPoint.md)]

### reference_group

**Type:** [ProcessionLayerInheritanceGroupID](../types/ProcessionLayerInheritanceGroupID.md) · _optional_

The group this layer belongs to, for inheritance.

### type

**Type:** `"pod-distance-traveled"`
