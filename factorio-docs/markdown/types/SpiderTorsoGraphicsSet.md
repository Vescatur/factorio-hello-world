# SpiderTorsoGraphicsSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation](#animation) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [base_animation](#base-animation) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [base_render_layer](#base-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [shadow_animation](#shadow-animation) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [shadow_base_animation](#shadow-base-animation) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |

### animation

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### base_animation

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### base_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'higher-object-under'}`

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'under-elevated'}`

### shadow_animation

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

If no sprite flags are defined, then this animation is loaded and treated as a shadow by default.

### shadow_base_animation

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

If no sprite flags are defined, then this animation is loaded and treated as a shadow by default.

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_

Refer to [EntityPrototype::water_reflection](../prototypes/EntityPrototype.md#water-reflection).
