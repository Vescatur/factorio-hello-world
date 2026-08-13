# RocketSiloRocketPrototype

_prototype_

**Prototype type string:** `type = "rocket-silo-rocket"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

The rocket inside the rocket silo.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [cargo_attachment_offset](#cargo-attachment-offset) | [Vector](../types/Vector.md) | yes |
| [cargo_pod_entity](#cargo-pod-entity) | [EntityID](../types/EntityID.md) |  |
| [dying_explosion](#dying-explosion) | [EntityID](../types/EntityID.md) | yes |
| [effects_fade_in_end_distance](#effects-fade-in-end-distance) | [double](../types/double.md) |  |
| [effects_fade_in_start_distance](#effects-fade-in-start-distance) | [double](../types/double.md) |  |
| [engine_starting_speed](#engine-starting-speed) | [double](../types/double.md) |  |
| [flying_acceleration](#flying-acceleration) | [double](../types/double.md) |  |
| [flying_sound](#flying-sound) | [Sound](../types/Sound.md) | yes |
| [flying_speed](#flying-speed) | [double](../types/double.md) |  |
| [flying_trigger](#flying-trigger) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [full_render_layer_switch_distance](#full-render-layer-switch-distance) | [double](../types/double.md) |  |
| [glow_light](#glow-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [rising_speed](#rising-speed) | [double](../types/double.md) |  |
| [rocket_above_wires_slice_offset_from_center](#rocket-above-wires-slice-offset-from-center) | [float](../types/float.md) | yes |
| [rocket_air_object_slice_offset_from_center](#rocket-air-object-slice-offset-from-center) | [float](../types/float.md) | yes |
| [rocket_flame_animation](#rocket-flame-animation) | [Animation](../types/Animation.md) | yes |
| [rocket_flame_left_animation](#rocket-flame-left-animation) | [Animation](../types/Animation.md) | yes |
| [rocket_flame_left_rotation](#rocket-flame-left-rotation) | [float](../types/float.md) |  |
| [rocket_flame_right_animation](#rocket-flame-right-animation) | [Animation](../types/Animation.md) | yes |
| [rocket_flame_right_rotation](#rocket-flame-right-rotation) | [float](../types/float.md) |  |
| [rocket_fog_mask](#rocket-fog-mask) | [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) | yes |
| [rocket_glare_overlay_sprite](#rocket-glare-overlay-sprite) | [Sprite](../types/Sprite.md) | yes |
| [rocket_initial_offset](#rocket-initial-offset) | [Vector](../types/Vector.md) | yes |
| [rocket_launch_offset](#rocket-launch-offset) | [Vector](../types/Vector.md) |  |
| [rocket_render_layer_switch_distance](#rocket-render-layer-switch-distance) | [double](../types/double.md) |  |
| [rocket_rise_offset](#rocket-rise-offset) | [Vector](../types/Vector.md) |  |
| [rocket_shadow_sprite](#rocket-shadow-sprite) | [Sprite](../types/Sprite.md) | yes |
| [rocket_smoke_bottom1_animation](#rocket-smoke-bottom1-animation) | [Animation](../types/Animation.md) | yes |
| [rocket_smoke_bottom2_animation](#rocket-smoke-bottom2-animation) | [Animation](../types/Animation.md) | yes |
| [rocket_smoke_top1_animation](#rocket-smoke-top1-animation) | [Animation](../types/Animation.md) | yes |
| [rocket_smoke_top2_animation](#rocket-smoke-top2-animation) | [Animation](../types/Animation.md) | yes |
| [rocket_smoke_top3_animation](#rocket-smoke-top3-animation) | [Animation](../types/Animation.md) | yes |
| [rocket_sprite](#rocket-sprite) | [Sprite](../types/Sprite.md) | yes |
| [rocket_visible_distance_from_center](#rocket-visible-distance-from-center) | [float](../types/float.md) |  |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [shadow_fade_out_end_ratio](#shadow-fade-out-end-ratio) | [double](../types/double.md) |  |
| [shadow_fade_out_start_ratio](#shadow-fade-out-start-ratio) | [double](../types/double.md) |  |
| [shadow_slave_entity](#shadow-slave-entity) | [EntityID](../types/EntityID.md) | yes |

### cargo_attachment_offset

**Type:** [Vector](../types/Vector.md) · _optional_

### cargo_pod_entity

**Type:** [EntityID](../types/EntityID.md)

Name of a [CargoPodPrototype](../prototypes/CargoPodPrototype.md).

### dying_explosion

**Type:** [EntityID](../types/EntityID.md) · _optional_

### effects_fade_in_end_distance

**Type:** [double](../types/double.md)

### effects_fade_in_start_distance

**Type:** [double](../types/double.md)

### engine_starting_speed

**Type:** [double](../types/double.md)

### flying_acceleration

**Type:** [double](../types/double.md)

### flying_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### flying_speed

**Type:** [double](../types/double.md)

### flying_trigger

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### full_render_layer_switch_distance

**Type:** [double](../types/double.md)

### glow_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

### rising_speed

**Type:** [double](../types/double.md)

### rocket_above_wires_slice_offset_from_center

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -3}`

### rocket_air_object_slice_offset_from_center

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -6}`

### rocket_flame_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### rocket_flame_left_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### rocket_flame_left_rotation

**Type:** [float](../types/float.md)

### rocket_flame_right_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### rocket_flame_right_rotation

**Type:** [float](../types/float.md)

### rocket_fog_mask

**Type:** [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) · _optional_ · **Default:** ``{rect={{-30, -30}, {30, rocket_above_wires_slice_offset_from_center}}, falloff=1}``

### rocket_glare_overlay_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### rocket_initial_offset

**Type:** [Vector](../types/Vector.md) · _optional_

### rocket_launch_offset

**Type:** [Vector](../types/Vector.md)

### rocket_render_layer_switch_distance

**Type:** [double](../types/double.md)

### rocket_rise_offset

**Type:** [Vector](../types/Vector.md)

### rocket_shadow_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### rocket_smoke_bottom1_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### rocket_smoke_bottom2_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### rocket_smoke_top1_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### rocket_smoke_top2_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### rocket_smoke_top3_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### rocket_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### rocket_visible_distance_from_center

**Type:** [float](../types/float.md)

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### shadow_fade_out_end_ratio

**Type:** [double](../types/double.md)

### shadow_fade_out_start_ratio

**Type:** [double](../types/double.md)

### shadow_slave_entity

**Type:** [EntityID](../types/EntityID.md) · _optional_
