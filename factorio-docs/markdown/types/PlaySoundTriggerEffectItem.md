# PlaySoundTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [max_distance](#max-distance) | [float](../types/float.md) | yes |
| [min_distance](#min-distance) | [float](../types/float.md) | yes |
| [play_on_target_position](#play-on-target-position) | [boolean](../types/boolean.md) | yes |
| [sound](#sound) | [Sound](../types/Sound.md) |  |
| [type](#type) | `"play-sound"` |  |

### max_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `1e21`

Negative values are silently clamped to 0.

### min_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Negative values are silently clamped to 0.

### play_on_target_position

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### sound

**Type:** [Sound](../types/Sound.md)

### type

**Type:** `"play-sound"`
