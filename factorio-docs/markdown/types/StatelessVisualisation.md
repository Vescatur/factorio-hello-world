# StatelessVisualisation

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [acceleration_x](#acceleration-x) | [float](../types/float.md) | yes |
| [acceleration_y](#acceleration-y) | [float](../types/float.md) | yes |
| [acceleration_z](#acceleration-z) | [float](../types/float.md) | yes |
| [adjust_animation_speed_by_base_scale](#adjust-animation-speed-by-base-scale) | [boolean](../types/boolean.md) | yes |
| [affected_by_wind](#affected-by-wind) | [boolean](../types/boolean.md) | yes |
| [animation](#animation) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [begin_scale](#begin-scale) | [float](../types/float.md) | yes |
| [can_lay_on_the_ground](#can-lay-on-the-ground) | [boolean](../types/boolean.md) | yes |
| [count](#count) | [uint16](../types/uint16.md) | yes |
| [end_scale](#end-scale) | [float](../types/float.md) | yes |
| [fade_in_progress_duration](#fade-in-progress-duration) | [float](../types/float.md) | yes |
| [fade_out_progress_duration](#fade-out-progress-duration) | [float](../types/float.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [max_count](#max-count) | [uint16](../types/uint16.md) | yes |
| [min_count](#min-count) | [uint16](../types/uint16.md) | yes |
| [movement_slowdown_factor_x](#movement-slowdown-factor-x) | [float](../types/float.md) | yes |
| [movement_slowdown_factor_y](#movement-slowdown-factor-y) | [float](../types/float.md) | yes |
| [movement_slowdown_factor_z](#movement-slowdown-factor-z) | [float](../types/float.md) | yes |
| [nested_visualisations](#nested-visualisations) | [StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)] | yes |
| [offset_x](#offset-x) | [RangedValue](../types/RangedValue.md) | yes |
| [offset_y](#offset-y) | [RangedValue](../types/RangedValue.md) | yes |
| [offset_z](#offset-z) | [RangedValue](../types/RangedValue.md) | yes |
| [particle_tick_offset](#particle-tick-offset) | [float](../types/float.md) | yes |
| [period](#period) | [uint16](../types/uint16.md) | yes |
| [positions](#positions) | array[[Vector](../types/Vector.md)] | yes |
| [probability](#probability) | [float](../types/float.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [scale](#scale) | [RangedValue](../types/RangedValue.md) | yes |
| [shadow](#shadow) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [speed_x](#speed-x) | [RangedValue](../types/RangedValue.md) | yes |
| [speed_y](#speed-y) | [RangedValue](../types/RangedValue.md) | yes |
| [speed_z](#speed-z) | [RangedValue](../types/RangedValue.md) | yes |
| [spread_progress_duration](#spread-progress-duration) | [float](../types/float.md) | yes |

### acceleration_x

**Type:** [float](../types/float.md) · _optional_

### acceleration_y

**Type:** [float](../types/float.md) · _optional_

### acceleration_z

**Type:** [float](../types/float.md) · _optional_

### adjust_animation_speed_by_base_scale

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### affected_by_wind

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### animation

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

One of `nested_visualisations`, `animation` and `light` needs to be defined.

### begin_scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### can_lay_on_the_ground

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### count

**Type:** [uint16](../types/uint16.md) · _optional_

### end_scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### fade_in_progress_duration

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### fade_out_progress_duration

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

One of `nested_visualisations`, `animation` and `light` needs to be defined.

### max_count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `Value of `min_count``

Only loaded if `count` is not defined.

### min_count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `count` is not defined.

### movement_slowdown_factor_x

**Type:** [float](../types/float.md) · _optional_

Silently clamped to be between 0 and 1.

### movement_slowdown_factor_y

**Type:** [float](../types/float.md) · _optional_

Silently clamped to be between 0 and 1.

### movement_slowdown_factor_z

**Type:** [float](../types/float.md) · _optional_

Silently clamped to be between 0 and 1.

### nested_visualisations

**Type:** [StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)] · _optional_

One of `nested_visualisations`, `animation` and `light` needs to be defined.

### offset_x

**Type:** [RangedValue](../types/RangedValue.md) · _optional_

### offset_y

**Type:** [RangedValue](../types/RangedValue.md) · _optional_

### offset_z

**Type:** [RangedValue](../types/RangedValue.md) · _optional_

### particle_tick_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### period

**Type:** [uint16](../types/uint16.md) · _optional_

### positions

**Type:** array[[Vector](../types/Vector.md)] · _optional_

Array may be at most 32 elements.

### probability

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Silently clamped to be between 0 and 1.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### scale

**Type:** [RangedValue](../types/RangedValue.md) · _optional_

### shadow

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

Shadow variation count must be equal to animation variation count.

Only loaded if `animation` is defined.

### speed_x

**Type:** [RangedValue](../types/RangedValue.md) · _optional_

### speed_y

**Type:** [RangedValue](../types/RangedValue.md) · _optional_

### speed_z

**Type:** [RangedValue](../types/RangedValue.md) · _optional_

### spread_progress_duration

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`
