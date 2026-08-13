# TrivialSmokePrototype

_prototype_

**Prototype type string:** `type = "trivial-smoke"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

Smoke, but it's not an entity for optimization purposes.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [affected_by_wind](#affected-by-wind) | [boolean](../types/boolean.md) | yes |
| [animation](#animation) | [Animation](../types/Animation.md) |  |
| [color](#color) | [Color](../types/Color.md) | yes |
| [cyclic](#cyclic) | [boolean](../types/boolean.md) | yes |
| [duration](#duration) | [uint32](../types/uint32.md) |  |
| [end_scale](#end-scale) | [float](../types/float.md) | yes |
| [fade_away_duration](#fade-away-duration) | [uint32](../types/uint32.md) | yes |
| [fade_in_duration](#fade-in-duration) | [uint32](../types/uint32.md) | yes |
| [glow_animation](#glow-animation) | [Animation](../types/Animation.md) | yes |
| [glow_fade_away_duration](#glow-fade-away-duration) | [uint32](../types/uint32.md) | yes |
| [movement_slow_down_factor](#movement-slow-down-factor) | [double](../types/double.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [show_when_smoke_off](#show-when-smoke-off) | [boolean](../types/boolean.md) | yes |
| [spread_duration](#spread-duration) | [uint32](../types/uint32.md) | yes |
| [start_scale](#start-scale) | [float](../types/float.md) | yes |

### affected_by_wind

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Smoke always moves randomly unless `movement_slow_down_factor` is 0. If `affected_by_wind` is true, the smoke will also be moved by wind.

### animation

**Type:** [Animation](../types/Animation.md)

### color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{r=0.375, g=0.375, b=0.375, a=0.375}``

### cyclic

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### duration

**Type:** [uint32](../types/uint32.md)

Can't be 0 - the smoke will never render.

### end_scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### fade_away_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

`fade_in_duration` + `fade_away_duration` must be <= `duration`.

### fade_in_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

`fade_in_duration` + `fade_away_duration` must be <= `duration`.

### glow_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### glow_fade_away_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `Value of `fade_away_duration``

### movement_slow_down_factor

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.995}`

Value between 0 and 1, with 1 being no slowdown and 0 being no movement.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'smoke'}`

### show_when_smoke_off

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### spread_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### start_scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`
