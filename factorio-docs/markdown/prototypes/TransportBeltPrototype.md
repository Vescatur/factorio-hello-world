# TransportBeltPrototype

_prototype_

**Prototype type string:** `type = "transport-belt"`

**Inherits from:** [TransportBeltConnectablePrototype](../prototypes/TransportBeltConnectablePrototype.md)

A [transport belt](https://wiki.factorio.com/Transport_belt).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [belt_animation_set](#belt-animation-set) | [TransportBeltAnimationSetWithCorners](../types/TransportBeltAnimationSetWithCorners.md) | yes |
| [circuit_connector](#circuit-connector) | array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [connector_frame_sprites](#connector-frame-sprites) | [TransportBeltConnectorFrame](../types/TransportBeltConnectorFrame.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [related_underground_belt](#related-underground-belt) | [EntityID](../types/EntityID.md) | yes |

### belt_animation_set

**Type:** [TransportBeltAnimationSetWithCorners](../types/TransportBeltAnimationSetWithCorners.md) · _optional_ · _overrides parent_

### circuit_connector

**Type:** array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

Set of 7 [circuit connector definitions](../types/CircuitConnectorDefinition.md) in order: X, H, V, SE, SW, NE and NW.

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### connector_frame_sprites

**Type:** [TransportBeltConnectorFrame](../types/TransportBeltConnectorFrame.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### related_underground_belt

**Type:** [EntityID](../types/EntityID.md) · _optional_

The name of the [UndergroundBeltPrototype](../prototypes/UndergroundBeltPrototype.md) which is used in quick-replace fashion when the smart belt dragging behavior is triggered.
