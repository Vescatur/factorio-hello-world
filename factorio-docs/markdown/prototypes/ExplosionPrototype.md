# ExplosionPrototype

_prototype_

**Prototype type string:** `type = "explosion"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

Used to play an animation and a sound.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animations](#animations) | [AnimationVariations](../types/AnimationVariations.md) |  |
| [beam](#beam) | [boolean](../types/boolean.md) | yes |
| [correct_rotation](#correct-rotation) | [boolean](../types/boolean.md) | yes |
| [delay](#delay) | [MapTick](../types/MapTick.md) | yes |
| [delay_deviation](#delay-deviation) | [MapTick](../types/MapTick.md) | yes |
| [explosion_effect](#explosion-effect) | [Trigger](../types/Trigger.md) | yes |
| [fade_in_duration](#fade-in-duration) | [uint8](../types/uint8.md) | yes |
| [fade_out_duration](#fade-out-duration) | [uint8](../types/uint8.md) | yes |
| [height](#height) | [float](../types/float.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [light_intensity_factor_final](#light-intensity-factor-final) | [float](../types/float.md) | yes |
| [light_intensity_factor_initial](#light-intensity-factor-initial) | [float](../types/float.md) | yes |
| [light_intensity_peak_end_progress](#light-intensity-peak-end-progress) | [float](../types/float.md) | yes |
| [light_intensity_peak_start_progress](#light-intensity-peak-start-progress) | [float](../types/float.md) | yes |
| [light_size_factor_final](#light-size-factor-final) | [float](../types/float.md) | yes |
| [light_size_factor_initial](#light-size-factor-initial) | [float](../types/float.md) | yes |
| [light_size_peak_end_progress](#light-size-peak-end-progress) | [float](../types/float.md) | yes |
| [light_size_peak_start_progress](#light-size-peak-start-progress) | [float](../types/float.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [rotate](#rotate) | [boolean](../types/boolean.md) | yes |
| [scale](#scale) | [float](../types/float.md) | yes |
| [scale_animation_speed](#scale-animation-speed) | [boolean](../types/boolean.md) | yes |
| [scale_deviation](#scale-deviation) | [float](../types/float.md) | yes |
| [scale_end](#scale-end) | [float](../types/float.md) | yes |
| [scale_in_duration](#scale-in-duration) | [uint8](../types/uint8.md) | yes |
| [scale_increment_per_tick](#scale-increment-per-tick) | [float](../types/float.md) | yes |
| [scale_initial](#scale-initial) | [float](../types/float.md) | yes |
| [scale_initial_deviation](#scale-initial-deviation) | [float](../types/float.md) | yes |
| [scale_out_duration](#scale-out-duration) | [uint8](../types/uint8.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [smoke](#smoke) | [TrivialSmokeID](../types/TrivialSmokeID.md) | yes |
| [smoke_count](#smoke-count) | [uint16](../types/uint16.md) | yes |
| [smoke_slow_down_factor](#smoke-slow-down-factor) | [float](../types/float.md) | yes |
| [sound](#sound) | [Sound](../types/Sound.md) | yes |

### animations

**Type:** [AnimationVariations](../types/AnimationVariations.md)

### beam

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### correct_rotation

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### delay

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Number of ticks to delay the explosion effects by.

### delay_deviation

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum number of ticks to randomly delay the explosion effects by. In addition to the number of ticks defined by `delay`, the explosion will be delayed by a random number of ticks between 0 and `delay_deviation` (inclusive).

### explosion_effect

**Type:** [Trigger](../types/Trigger.md) · _optional_

The effect/trigger that happens when the explosion effect triggers after the initial delay as defined by `delay` and `delay_deviation`.

### fade_in_duration

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### fade_out_duration

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### height

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### light_intensity_factor_final

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

Silently clamped to be between 0 and 1.

### light_intensity_factor_initial

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

Silently clamped to be between 0 and 1.

### light_intensity_peak_end_progress

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.9}`

### light_intensity_peak_start_progress

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### light_size_factor_final

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

Silently clamped to be between 0 and 1.

### light_size_factor_initial

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.05}`

Silently clamped to be between 0 and 1.

### light_size_peak_end_progress

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

### light_size_peak_start_progress

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'explosion'}`

### rotate

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### scale_animation_speed

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### scale_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### scale_end

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### scale_in_duration

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### scale_increment_per_tick

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### scale_initial

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### scale_initial_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### scale_out_duration

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### smoke

**Type:** [TrivialSmokeID](../types/TrivialSmokeID.md) · _optional_

Mandatory if `smoke_count` > 0.

### smoke_count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### smoke_slow_down_factor

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### sound

**Type:** [Sound](../types/Sound.md) · _optional_
