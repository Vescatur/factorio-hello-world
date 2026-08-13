# BeamGraphicsSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [beam](#beam) | [BeamAnimationSet](../types/BeamAnimationSet.md) | yes |
| [desired_segment_length](#desired-segment-length) | [float](../types/float.md) | yes |
| [ground](#ground) | [BeamAnimationSet](../types/BeamAnimationSet.md) | yes |
| [random_end_animation_rotation](#random-end-animation-rotation) | [boolean](../types/boolean.md) | yes |
| [randomize_animation_per_segment](#randomize-animation-per-segment) | [boolean](../types/boolean.md) | yes |
| [transparent_start_end_animations](#transparent-start-end-animations) | [boolean](../types/boolean.md) | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |

### beam

**Type:** [BeamAnimationSet](../types/BeamAnimationSet.md) · _optional_

### desired_segment_length

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be larger than 0.

### ground

**Type:** [BeamAnimationSet](../types/BeamAnimationSet.md) · _optional_

### random_end_animation_rotation

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### randomize_animation_per_segment

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### transparent_start_end_animations

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_

Refer to [EntityPrototype::water_reflection](../prototypes/EntityPrototype.md#water-reflection).
