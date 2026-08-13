# FireFlamePrototype

_prototype_

**Prototype type string:** `type = "fire"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

A fire.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [add_fuel_cooldown](#add-fuel-cooldown) | [uint32](../types/uint32.md) | yes |
| [burnt_patch_alpha_default](#burnt-patch-alpha-default) | [float](../types/float.md) | yes |
| [burnt_patch_alpha_variations](#burnt-patch-alpha-variations) | array[[TileAndAlpha](../types/TileAndAlpha.md)] | yes |
| [burnt_patch_lifetime](#burnt-patch-lifetime) | [uint32](../types/uint32.md) | yes |
| [burnt_patch_pictures](#burnt-patch-pictures) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [damage_multiplier_decrease_per_tick](#damage-multiplier-decrease-per-tick) | [float](../types/float.md) | yes |
| [damage_multiplier_increase_per_added_fuel](#damage-multiplier-increase-per-added-fuel) | [float](../types/float.md) | yes |
| [damage_per_tick](#damage-per-tick) | [DamageParameters](../types/DamageParameters.md) |  |
| [delay_between_initial_flames](#delay-between-initial-flames) | [uint32](../types/uint32.md) | yes |
| [fade_in_duration](#fade-in-duration) | [uint32](../types/uint32.md) | yes |
| [fade_out_duration](#fade-out-duration) | [uint32](../types/uint32.md) | yes |
| [flame_alpha](#flame-alpha) | [float](../types/float.md) | yes |
| [flame_alpha_deviation](#flame-alpha-deviation) | [float](../types/float.md) | yes |
| [initial_flame_count](#initial-flame-count) | [uint8](../types/uint8.md) | yes |
| [initial_lifetime](#initial-lifetime) | [uint32](../types/uint32.md) | yes |
| [initial_render_layer](#initial-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [lifetime_increase_by](#lifetime-increase-by) | [uint32](../types/uint32.md) | yes |
| [lifetime_increase_cooldown](#lifetime-increase-cooldown) | [uint32](../types/uint32.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [light_size_modifier_maximum](#light-size-modifier-maximum) | [float](../types/float.md) | yes |
| [light_size_modifier_per_flame](#light-size-modifier-per-flame) | [float](../types/float.md) | yes |
| [limit_overlapping_particles](#limit-overlapping-particles) | [boolean](../types/boolean.md) | yes |
| [maximum_damage_multiplier](#maximum-damage-multiplier) | [float](../types/float.md) | yes |
| [maximum_lifetime](#maximum-lifetime) | [uint32](../types/uint32.md) | yes |
| [maximum_spread_count](#maximum-spread-count) | [uint16](../types/uint16.md) | yes |
| [on_damage_tick_effect](#on-damage-tick-effect) | [Trigger](../types/Trigger.md) | yes |
| [on_fuel_added_action](#on-fuel-added-action) | [Trigger](../types/Trigger.md) | yes |
| [particle_alpha](#particle-alpha) | [float](../types/float.md) | yes |
| [particle_alpha_blend_duration](#particle-alpha-blend-duration) | [uint16](../types/uint16.md) | yes |
| [particle_alpha_deviation](#particle-alpha-deviation) | [float](../types/float.md) | yes |
| [pictures](#pictures) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [secondary_picture_fade_out_duration](#secondary-picture-fade-out-duration) | [uint32](../types/uint32.md) | yes |
| [secondary_picture_fade_out_start](#secondary-picture-fade-out-start) | [uint32](../types/uint32.md) | yes |
| [secondary_pictures](#secondary-pictures) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [secondary_render_layer](#secondary-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [small_tree_fire_pictures](#small-tree-fire-pictures) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [smoke](#smoke) | array[[SmokeSource](../types/SmokeSource.md)] | yes |
| [smoke_fade_in_duration](#smoke-fade-in-duration) | [uint32](../types/uint32.md) | yes |
| [smoke_fade_out_duration](#smoke-fade-out-duration) | [uint32](../types/uint32.md) | yes |
| [smoke_source_pictures](#smoke-source-pictures) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [spawn_entity](#spawn-entity) | [EntityID](../types/EntityID.md) | yes |
| [spread_delay](#spread-delay) | [uint32](../types/uint32.md) |  |
| [spread_delay_deviation](#spread-delay-deviation) | [uint32](../types/uint32.md) |  |
| [tree_dying_factor](#tree-dying-factor) | [float](../types/float.md) | yes |
| [uses_alternative_behavior](#uses-alternative-behavior) | [boolean](../types/boolean.md) | yes |

### add_fuel_cooldown

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 10}`

### burnt_patch_alpha_default

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### burnt_patch_alpha_variations

**Type:** array[[TileAndAlpha](../types/TileAndAlpha.md)] · _optional_

### burnt_patch_lifetime

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1800}`

### burnt_patch_pictures

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

### damage_multiplier_decrease_per_tick

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### damage_multiplier_increase_per_added_fuel

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### damage_per_tick

**Type:** [DamageParameters](../types/DamageParameters.md)

### delay_between_initial_flames

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 10}`

### fade_in_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 30}`

### fade_out_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 30}`

### flame_alpha

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `uses_alternative_behavior` is false.

### flame_alpha_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `uses_alternative_behavior` is false.

### initial_flame_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Spawns this many `secondary_pictures` around the entity when it first spawns. It waits `delay_between_initial_flames` between each spawned `secondary_pictures`. This can be used to make fires look less repetitive.

For example, spitters use this to make several smaller splashes around the main one.

### initial_lifetime

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 300}`

### initial_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### lifetime_increase_by

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

### lifetime_increase_cooldown

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 10}`

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### light_size_modifier_maximum

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### light_size_modifier_per_flame

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### limit_overlapping_particles

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### maximum_damage_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### maximum_lifetime

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `Max uint32`

### maximum_spread_count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 200}`

### on_damage_tick_effect

**Type:** [Trigger](../types/Trigger.md) · _optional_

### on_fuel_added_action

**Type:** [Trigger](../types/Trigger.md) · _optional_

### particle_alpha

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `uses_alternative_behavior` is true.

### particle_alpha_blend_duration

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### particle_alpha_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `uses_alternative_behavior` is true.

### pictures

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### secondary_picture_fade_out_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 30}`

### secondary_picture_fade_out_start

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### secondary_pictures

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### secondary_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### small_tree_fire_pictures

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### smoke

**Type:** array[[SmokeSource](../types/SmokeSource.md)] · _optional_

### smoke_fade_in_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 30}`

### smoke_fade_out_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 30}`

### smoke_source_pictures

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### spawn_entity

**Type:** [EntityID](../types/EntityID.md) · _optional_

### spread_delay

**Type:** [uint32](../types/uint32.md)

### spread_delay_deviation

**Type:** [uint32](../types/uint32.md)

### tree_dying_factor

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### uses_alternative_behavior

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `false`, then all animations loop. If `true`, they run once and stay on the final frame. Also changes the behavior of several other fire properties as mentioned in their descriptions.

For example, spitters use alternate behavior, flamethrower flames don't.
