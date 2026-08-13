# ParticlePrototype

_prototype_

**Prototype type string:** `type = "optimized-particle"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

An entity with a limited lifetime that can use trigger effects.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [draw_shadow_when_on_ground](#draw-shadow-when-on-ground) | [boolean](../types/boolean.md) | yes |
| [ended_in_water_trigger_effect](#ended-in-water-trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [ended_on_ground_trigger_effect](#ended-on-ground-trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [fade_away_duration](#fade-away-duration) | [uint16](../types/uint16.md) | yes |
| [life_time](#life-time) | [uint16](../types/uint16.md) |  |
| [mining_particle_frame_speed](#mining-particle-frame-speed) | [float](../types/float.md) | yes |
| [movement_modifier](#movement-modifier) | [float](../types/float.md) | yes |
| [movement_modifier_when_on_ground](#movement-modifier-when-on-ground) | [float](../types/float.md) | yes |
| [pictures](#pictures) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [regular_trigger_effect](#regular-trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [regular_trigger_effect_frequency](#regular-trigger-effect-frequency) | [uint32](../types/uint32.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [render_layer_when_on_ground](#render-layer-when-on-ground) | [RenderLayer](../types/RenderLayer.md) | yes |
| [shadows](#shadows) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [vertical_acceleration](#vertical-acceleration) | [float](../types/float.md) | yes |

### draw_shadow_when_on_ground

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### ended_in_water_trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### ended_on_ground_trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### fade_away_duration

**Type:** [uint16](../types/uint16.md) · _optional_

Defaults to `life_time` / 5, but at most 60. If this is 0, it is silently changed to 1.

### life_time

**Type:** [uint16](../types/uint16.md)

Can't be 1.

### mining_particle_frame_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### movement_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### movement_modifier_when_on_ground

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.8}`

### pictures

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

Picture variation count and individual frame count must be equal to shadow variation count.

### regular_trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### regular_trigger_effect_frequency

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Can't be 1.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### render_layer_when_on_ground

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'lower-object'}`

### shadows

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

Shadow variation variation count and individual frame count must be equal to picture variation count.

### vertical_acceleration

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -0.004}`

Has to be >= -0.01 and <= 0.01.
