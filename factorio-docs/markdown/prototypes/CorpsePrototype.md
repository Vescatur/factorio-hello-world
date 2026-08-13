# CorpsePrototype

_prototype_

**Prototype type string:** `type = "corpse"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

Used for corpses, for example the remnants when destroying buildings.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation](#animation) | [RotatedAnimationVariations](../types/RotatedAnimationVariations.md) | yes |
| [animation_overlay](#animation-overlay) | [RotatedAnimationVariations](../types/RotatedAnimationVariations.md) | yes |
| [animation_overlay_final_render_layer](#animation-overlay-final-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [animation_overlay_render_layer](#animation-overlay-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [animation_render_layer](#animation-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [auto_setup_collision_box](#auto-setup-collision-box) | [boolean](../types/boolean.md) | yes |
| [decay_animation](#decay-animation) | [RotatedAnimationVariations](../types/RotatedAnimationVariations.md) | yes |
| [decay_frame_transition_duration](#decay-frame-transition-duration) | [float](../types/float.md) | yes |
| [direction_shuffle](#direction-shuffle) | array[array[[uint16](../types/uint16.md)]] | yes |
| [dying_speed](#dying-speed) | [float](../types/float.md) | yes |
| [expires](#expires) | [boolean](../types/boolean.md) | yes |
| [final_render_layer](#final-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [ground_patch](#ground-patch) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [ground_patch_decay](#ground-patch-decay) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [ground_patch_fade_in_delay](#ground-patch-fade-in-delay) | [float](../types/float.md) | yes |
| [ground_patch_fade_in_speed](#ground-patch-fade-in-speed) | [float](../types/float.md) | yes |
| [ground_patch_fade_out_duration](#ground-patch-fade-out-duration) | [float](../types/float.md) | yes |
| [ground_patch_fade_out_start](#ground-patch-fade-out-start) | [float](../types/float.md) | yes |
| [ground_patch_higher](#ground-patch-higher) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [ground_patch_render_layer](#ground-patch-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [protected_from_tile_building](#protected-from-tile-building) | [boolean](../types/boolean.md) | yes |
| [remove_on_entity_placement](#remove-on-entity-placement) | [boolean](../types/boolean.md) | yes |
| [remove_on_tile_placement](#remove-on-tile-placement) | [boolean](../types/boolean.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [shuffle_directions_at_frame](#shuffle-directions-at-frame) | [uint8](../types/uint8.md) | yes |
| [splash](#splash) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [splash_render_layer](#splash-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [splash_speed](#splash-speed) | [float](../types/float.md) | yes |
| [time_before_removed](#time-before-removed) | [uint32](../types/uint32.md) | yes |
| [time_before_shading_off](#time-before-shading-off) | [uint32](../types/uint32.md) | yes |
| [underwater_layer_offset](#underwater-layer-offset) | [int8](../types/int8.md) | yes |
| [underwater_patch](#underwater-patch) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [use_decay_layer](#use-decay-layer) | [boolean](../types/boolean.md) | yes |
| [use_tile_color_for_ground_patch_tint](#use-tile-color-for-ground-patch-tint) | [boolean](../types/boolean.md) | yes |

### animation

**Type:** [RotatedAnimationVariations](../types/RotatedAnimationVariations.md) · _optional_

The dying animation.

### animation_overlay

**Type:** [RotatedAnimationVariations](../types/RotatedAnimationVariations.md) · _optional_

Variation count must be the same as `animation` variation count. Direction count must be the same as `animation` direction count. Frame count must be the same as `animation` frame count.

### animation_overlay_final_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'corpse'}`

### animation_overlay_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### animation_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### auto_setup_collision_box

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If true, and the collision box is unset, this will take the collision box of the first entity that uses this corpse.

### decay_animation

**Type:** [RotatedAnimationVariations](../types/RotatedAnimationVariations.md) · _optional_

### decay_frame_transition_duration

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### direction_shuffle

**Type:** array[array[[uint16](../types/uint16.md)]] · _optional_ · **Default:** `No direction shuffle`

May not be an empty array. May not be used if there is no `animation` defined.

The inner arrays are called "groups" and must all have the same size.

The indices map to the directions of `animation` and they are 1-indexed. After the `shuffle_directions_at_frame` frame of the `animation`, these indices are used as the direction when choosing which frame to render. The chosen shuffled direction can be any direction in the same group as the non-shuffled direction. Which direction is chosen from the group depends on the shuffle variation which is `dying_graphics_variation % group_size`.

### dying_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Multiplier for `time_before_shading_off` and `time_before_removed`. Must be positive.

Controls the speed of the animation: `1 ÷ dying_speed = duration of the animation`

### expires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### final_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'corpse'}`

### ground_patch

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### ground_patch_decay

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### ground_patch_fade_in_delay

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### ground_patch_fade_in_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### ground_patch_fade_out_duration

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### ground_patch_fade_out_start

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### ground_patch_higher

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### ground_patch_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'ground-patch'}`

### protected_from_tile_building

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### remove_on_entity_placement

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### remove_on_tile_placement

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### shuffle_directions_at_frame

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Defines after which frame in the `animation` the `direction_shuffle` should be applied. Can be set to `0`, frames are 1-indexed.

### splash

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### splash_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### splash_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Controls the speed of the splash animation: `1 ÷ splash_speed = duration of the splash animation`

### time_before_removed

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `60 * 120 (120 seconds)`

Time in ticks this corpse lasts. May not be 0.

### time_before_shading_off

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `60 * 15 (15 seconds)`

Controls how long the corpse takes to fade, as in how long it takes to get from no transparency to full transparency/removed. This time is *not* added to `time_before_removed`, it is instead subtracted from it. So by default, the corpse starts fading about 15 seconds before it gets removed.

### underwater_layer_offset

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### underwater_patch

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

### use_decay_layer

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### use_tile_color_for_ground_patch_tint

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`
