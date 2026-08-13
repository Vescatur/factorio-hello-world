# CraftingMachineGraphicsSet

_type_

**Inherits from:** [WorkingVisualisations](../types/WorkingVisualisations.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation_progress](#animation-progress) | [float](../types/float.md) | yes |
| [circuit_connector_layer](#circuit-connector-layer) | [RenderLayer](../types/RenderLayer.md) ∣ [CircuitConnectorLayer](../types/CircuitConnectorLayer.md) | yes |
| [circuit_connector_secondary_draw_order](#circuit-connector-secondary-draw-order) | [int8](../types/int8.md) ∣ [CircuitConnectorSecondaryDrawOrder](../types/CircuitConnectorSecondaryDrawOrder.md) | yes |
| [frozen_patch](#frozen-patch) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [reset_animation_when_frozen](#reset-animation-when-frozen) | [boolean](../types/boolean.md) | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |

### animation_progress

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

### circuit_connector_layer

**Type:** [RenderLayer](../types/RenderLayer.md) ∣ [CircuitConnectorLayer](../types/CircuitConnectorLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

Render layer(s) for all directions of the circuit connectors.

### circuit_connector_secondary_draw_order

**Type:** [int8](../types/int8.md) ∣ [CircuitConnectorSecondaryDrawOrder](../types/CircuitConnectorSecondaryDrawOrder.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 100}`

Secondary draw order(s) for all directions of the circuit connectors.

### frozen_patch

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### reset_animation_when_frozen

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_

Only loaded if this graphics set is used in a property called `graphics_set`, refer to [EntityPrototype::water_reflection](../prototypes/EntityPrototype.md#water-reflection).
