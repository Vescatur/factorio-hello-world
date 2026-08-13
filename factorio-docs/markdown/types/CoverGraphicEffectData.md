# CoverGraphicEffectData

_type_

Clips the CoverGraphicProcessionLayer.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [distance_traveled_strength](#distance-traveled-strength) | [Vector](../types/Vector.md) | yes |
| [pod_movement_strength](#pod-movement-strength) | [Vector](../types/Vector.md) | yes |
| [relative_to](#relative-to) | [EffectRelativeTo](../types/EffectRelativeTo.md) | yes |
| [style](#style) | [CloudEffectStyle](../types/CloudEffectStyle.md) | yes |

### distance_traveled_strength

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `{0,0}`

How much the pod's distance traveled moves the effect

### pod_movement_strength

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `{0,0}`

How much the pod's position moves the effect

### relative_to

**Type:** [EffectRelativeTo](../types/EffectRelativeTo.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'pod'}`

Where the effect mask is centered.

### style

**Type:** [CloudEffectStyle](../types/CloudEffectStyle.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'none'}`
