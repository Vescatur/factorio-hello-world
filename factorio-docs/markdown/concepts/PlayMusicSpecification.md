# PlayMusicSpecification

_concept_

**Definition:** table{delay_duration, dont_transition_from, fade_in_duration, fade_out_duration, name, pause_duration, skip_natural_pause}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [delay_duration](#delay-duration) | [uint32](../concepts/uint32.md) | yes |
| [dont_transition_from](#dont-transition-from) | [boolean](../concepts/boolean.md) | yes |
| [fade_in_duration](#fade-in-duration) | [uint32](../concepts/uint32.md) | yes |
| [fade_out_duration](#fade-out-duration) | [uint32](../concepts/uint32.md) | yes |
| [name](#name) | [string](../concepts/string.md) |  |
| [pause_duration](#pause-duration) | [uint32](../concepts/uint32.md) | yes |
| [skip_natural_pause](#skip-natural-pause) | [boolean](../concepts/boolean.md) | yes |

### delay_duration

**Type:** [uint32](../concepts/uint32.md) · _optional_

Number of ticks for the music transition delay.

### dont_transition_from

**Type:** [boolean](../concepts/boolean.md) · _optional_

Don't transition from this music track on surface change. Defaults to `false`.

### fade_in_duration

**Type:** [uint32](../concepts/uint32.md) · _optional_

Number of ticks for the music transition fade in.

### fade_out_duration

**Type:** [uint32](../concepts/uint32.md) · _optional_

Number of ticks for the music transition fade out.

### name

**Type:** [string](../concepts/string.md)

The name of ambient sound to play.

### pause_duration

**Type:** [uint32](../concepts/uint32.md) · _optional_

Number of ticks for the music transition pause.

### skip_natural_pause

**Type:** [boolean](../concepts/boolean.md) · _optional_

Skip the natural pause between music tracks. If there is currently a track playing, this has no effect. Defaults to `false`.
