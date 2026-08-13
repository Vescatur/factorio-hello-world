# SplitterPrototype

_prototype_

**Prototype type string:** `type = "splitter"`

**Inherits from:** [TransportBeltConnectablePrototype](../prototypes/TransportBeltConnectablePrototype.md)

A [splitter](https://wiki.factorio.com/Splitter).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [default_input_left_condition](#default-input-left-condition) | [CircuitConditionConnector](../types/CircuitConditionConnector.md) | yes |
| [default_input_right_condition](#default-input-right-condition) | [CircuitConditionConnector](../types/CircuitConditionConnector.md) | yes |
| [default_output_left_condition](#default-output-left-condition) | [CircuitConditionConnector](../types/CircuitConditionConnector.md) | yes |
| [default_output_right_condition](#default-output-right-condition) | [CircuitConditionConnector](../types/CircuitConditionConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [frozen_patch](#frozen-patch) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [related_transport_belt](#related-transport-belt) | [EntityID](../types/EntityID.md) | yes |
| [structure](#structure) | [Animation4Way](../types/Animation4Way.md) | yes |
| [structure_animation_movement_cooldown](#structure-animation-movement-cooldown) | [uint32](../types/uint32.md) | yes |
| [structure_animation_speed_coefficient](#structure-animation-speed-coefficient) | [double](../types/double.md) | yes |
| [structure_patch](#structure-patch) | [Animation4Way](../types/Animation4Way.md) | yes |

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### default_input_left_condition

**Type:** [CircuitConditionConnector](../types/CircuitConditionConnector.md) · _optional_

### default_input_right_condition

**Type:** [CircuitConditionConnector](../types/CircuitConditionConnector.md) · _optional_

### default_output_left_condition

**Type:** [CircuitConditionConnector](../types/CircuitConditionConnector.md) · _optional_

### default_output_right_condition

**Type:** [CircuitConditionConnector](../types/CircuitConditionConnector.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### frozen_patch

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### related_transport_belt

**Type:** [EntityID](../types/EntityID.md) · _optional_

The name of the [TransportBeltPrototype](../prototypes/TransportBeltPrototype.md) which is used for the sound of the underlying belt.

### structure

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

### structure_animation_movement_cooldown

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 10}`

### structure_animation_speed_coefficient

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### structure_patch

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

Drawn 1 tile north of `structure` when the splitter is facing east or west.
