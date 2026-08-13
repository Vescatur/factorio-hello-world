# ProgrammableSpeakerNote

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [cyclic_sound](#cyclic-sound) | [CyclicSound](../types/CyclicSound.md) | yes |
| [name](#name) | [string](../types/string.md) |  |
| [sound](#sound) | [Sound](../types/Sound.md) | yes |

### cyclic_sound

**Type:** [CyclicSound](../types/CyclicSound.md) · _optional_

Cannot contain aggregations.

One of `sound` or `cyclic_sound` must be defined. Both cannot be defined together.

### name

**Type:** [string](../types/string.md)

### sound

**Type:** [Sound](../types/Sound.md) · _optional_

Cannot contain aggregation.

One of `sound` or `cyclic_sound` must be defined. Both cannot be defined together.
