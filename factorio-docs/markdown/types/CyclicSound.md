# CyclicSound

_type_

Used by [BaseAttackParameters](../types/BaseAttackParameters.md) to play a sound during the attack.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [begin_sound](#begin-sound) | [Sound](../types/Sound.md) | yes |
| [end_sound](#end-sound) | [Sound](../types/Sound.md) | yes |
| [middle_sound](#middle-sound) | [Sound](../types/Sound.md) | yes |

### begin_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played once at the beginning of the overall cyclic sound.

### end_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played once when the overall cyclic sound is requested to end.

### middle_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played repeatedly after the begin_sound was played.
