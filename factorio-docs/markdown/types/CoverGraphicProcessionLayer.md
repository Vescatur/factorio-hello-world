# CoverGraphicProcessionLayer

_type_

Draws a layer of cloud texture covering the screen. It can fade in an out based on opacity and using the picture mask as gradient of areas which fade in soon or later.

There are two important concepts to understand:

- `mask` refers to something like a depth texture. It is applied across the whole screen and determines how the entire graphic fades in and out.

- `effect` in this context refers to clipping out portion of the cover graphic. It can use an effect_graphic. `is_cloud_effect_advanced` makes the `effect` modify opacity threshold of the `mask` rather than multiplying alpha.

Additionally an area can be masked out by range or effect mask.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alt_effect](#alt-effect) | [CoverGraphicEffectData](../types/CoverGraphicEffectData.md) | yes |
| [distance_traveled_strength](#distance-traveled-strength) | [Vector](../types/Vector.md) | yes |
| [effect](#effect) | [CoverGraphicEffectData](../types/CoverGraphicEffectData.md) | yes |
| [effect_graphic](#effect-graphic) | [ProcessionGraphic](../types/ProcessionGraphic.md) | yes |
| [frames](#frames) | array[[CoverGraphicProcessionLayerBezierControlPoint](../types/CoverGraphicProcessionLayerBezierControlPoint.md)] |  |
| [graphic](#graphic) | [ProcessionGraphic](../types/ProcessionGraphic.md) | yes |
| [inherit_from](#inherit-from) | [ProcessionLayerInheritanceGroupID](../types/ProcessionLayerInheritanceGroupID.md) | yes |
| [is_cloud_effect_advanced](#is-cloud-effect-advanced) | [boolean](../types/boolean.md) | yes |
| [is_quad_texture](#is-quad-texture) | [boolean](../types/boolean.md) | yes |
| [mask_graphic](#mask-graphic) | [ProcessionGraphic](../types/ProcessionGraphic.md) | yes |
| [pod_movement_strength](#pod-movement-strength) | [Vector](../types/Vector.md) | yes |
| [reference_group](#reference-group) | [ProcessionLayerInheritanceGroupID](../types/ProcessionLayerInheritanceGroupID.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [rotate_with_pod](#rotate-with-pod) | [boolean](../types/boolean.md) | yes |
| [secondary_draw_order](#secondary-draw-order) | [int8](../types/int8.md) | yes |
| [texture_relative_to](#texture-relative-to) | [EffectRelativeTo](../types/EffectRelativeTo.md) | yes |
| [type](#type) | `"cover-graphic"` |  |
| [world_size](#world-size) | [Vector](../types/Vector.md) | yes |

### alt_effect

**Type:** [CoverGraphicEffectData](../types/CoverGraphicEffectData.md) · _optional_

Clips the graphic.

### distance_traveled_strength

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `{0,0}`

How much the pod's distance traveled moves the cloud coordinates

### effect

**Type:** [CoverGraphicEffectData](../types/CoverGraphicEffectData.md) · _optional_

Clips the graphic.

### effect_graphic

**Type:** [ProcessionGraphic](../types/ProcessionGraphic.md) · _optional_

Used by certain effects.

### frames

**Type:** array[[CoverGraphicProcessionLayerBezierControlPoint](../types/CoverGraphicProcessionLayerBezierControlPoint.md)]

Default values if unspecified:

- opacity : 1.0

- rotation : 0.0

- effect_scale_min : 0.0

- effect_scale_max : 1.0

- effect_shift : {0, 0}

- alt_effect_scale_min : 0.0

- alt_effect_scale_max : 1.0

- alt_effect_shift : {0, 0}

- offset : {0, 0}

### graphic

**Type:** [ProcessionGraphic](../types/ProcessionGraphic.md) · _optional_

Main texture of the layer.

### inherit_from

**Type:** [ProcessionLayerInheritanceGroupID](../types/ProcessionLayerInheritanceGroupID.md) · _optional_

Adds the final position value from given layer to this one.

### is_cloud_effect_advanced

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Advanced cloud effect mask modifies the regular mask thresholds instead of being a flat multiplication of the resulting opacity.

### is_quad_texture

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

The texture and mask are interpreted as four smaller textures that are randomly tiled.

### mask_graphic

**Type:** [ProcessionGraphic](../types/ProcessionGraphic.md) · _optional_

Opacity gradient of the layer.

### pod_movement_strength

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `{1,1}`

How much the pod's position moves the cloud coordinates

### reference_group

**Type:** [ProcessionLayerInheritanceGroupID](../types/ProcessionLayerInheritanceGroupID.md) · _optional_

The group this layer belongs to, for inheritance.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### rotate_with_pod

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Add rotation of the pod to the cloud rotation.

### secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### texture_relative_to

**Type:** [EffectRelativeTo](../types/EffectRelativeTo.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'ground-origin'}`

Where the tiled texture is centered and rotated.

### type

**Type:** `"cover-graphic"`

### world_size

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `{512, 512}`

Size the textures are scaled to in the world.
