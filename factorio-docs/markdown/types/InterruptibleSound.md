# InterruptibleSound

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [fade_ticks](#fade-ticks) | [uint32](../types/uint32.md) | yes |
| [minimal_change_per_tick](#minimal-change-per-tick) | [float](../types/float.md) | yes |
| [minimal_sound_duration_for_stopped_sound](#minimal-sound-duration-for-stopped-sound) | [uint16](../types/uint16.md) | yes |
| [sound](#sound) | [Sound](../types/Sound.md) | yes |
| [stopped_sound](#stopped-sound) | [Sound](../types/Sound.md) | yes |

### fade_ticks

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### minimal_change_per_tick

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### minimal_sound_duration_for_stopped_sound

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Has to be greater or equal to `1`.

### sound

**Type:** [Sound](../types/Sound.md) · _optional_

At least one of sound and stopped_sound has to be defined.

### stopped_sound

**Type:** [Sound](../types/Sound.md) · _optional_

At least one of sound and stopped_sound has to be defined.
