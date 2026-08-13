# RailSupportGraphicsSet

_type (inline)_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [structure](#structure) | [RotatedSprite](../types/RotatedSprite.md) |  |
| [underwater_layer_offset](#underwater-layer-offset) | [int8](../types/int8.md) | yes |
| [underwater_structure](#underwater-structure) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### structure

**Type:** [RotatedSprite](../types/RotatedSprite.md)

### underwater_layer_offset

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### underwater_structure

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_

Refer to [EntityPrototype::water_reflection](../prototypes/EntityPrototype.md#water-reflection).
