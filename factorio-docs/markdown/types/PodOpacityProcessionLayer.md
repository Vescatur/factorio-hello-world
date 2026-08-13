# PodOpacityProcessionLayer

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [frames](#frames) | array[[PodOpacityProcessionBezierControlPoint](../types/PodOpacityProcessionBezierControlPoint.md)] |  |
| [lut](#lut) | [ColorLookupTable](../types/ColorLookupTable.md) |  |
| [type](#type) | `"pod-opacity"` |  |

### frames

**Type:** array[[PodOpacityProcessionBezierControlPoint](../types/PodOpacityProcessionBezierControlPoint.md)]

Default values if unspecified:

- cutscene_opacity : 1.0

- outside_opacity : 1.0

- lut_blend : 0.0

- environment_volume : 1.0

- environment_muffle_intensity : 0.0

### lut

**Type:** [ColorLookupTable](../types/ColorLookupTable.md)

### type

**Type:** `"pod-opacity"`
