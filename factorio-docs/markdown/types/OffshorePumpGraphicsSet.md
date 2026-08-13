# OffshorePumpGraphicsSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation](#animation) | [Animation4Way](../types/Animation4Way.md) | yes |
| [base_pictures](#base-pictures) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [base_render_layer](#base-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [fluid_animation](#fluid-animation) | [Animation4Way](../types/Animation4Way.md) | yes |
| [glass_pictures](#glass-pictures) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [underwater_layer_offset](#underwater-layer-offset) | [int8](../types/int8.md) | yes |
| [underwater_pictures](#underwater-pictures) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |

### animation

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

Rendered in "object" layer, with secondary draw order 0.

### base_pictures

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

Rendered in layer specified by `base_render_layer`, with secondary draw order 0.

### base_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'ground-patch'}`

### fluid_animation

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

Rendered in "object" layer, with secondary draw order 20.

### glass_pictures

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

Rendered in "object" layer, with secondary draw order 40.

### underwater_layer_offset

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### underwater_pictures

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

Drawn by tile renderer when water animation is enabled.

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_

Refer to [EntityPrototype::water_reflection](../prototypes/EntityPrototype.md#water-reflection).
