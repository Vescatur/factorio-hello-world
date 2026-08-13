# CargoBayConnectableGraphicsSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation](#animation) | [Animation](../types/Animation.md) | yes |
| [animation_render_layer](#animation-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [connections](#connections) | [CargoBayConnections](../types/CargoBayConnections.md) | yes |
| [picture](#picture) | [LayeredSprite4Way](../types/LayeredSprite4Way.md) | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |

### animation

**Type:** [Animation](../types/Animation.md) · _optional_

### animation_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `object`

### connections

**Type:** [CargoBayConnections](../types/CargoBayConnections.md) · _optional_

### picture

**Type:** [LayeredSprite4Way](../types/LayeredSprite4Way.md) · _optional_

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_

Only loaded if this graphics set is used in a property called `graphics_set`, refer to [EntityPrototype::water_reflection](../prototypes/EntityPrototype.md#water-reflection).
