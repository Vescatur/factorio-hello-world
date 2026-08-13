# PipeToGroundPrototype

_prototype_

**Prototype type string:** `type = "pipe-to-ground"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [pipe to ground](https://wiki.factorio.com/Pipe_to_ground).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [default_fluid_temperature_signal](#default-fluid-temperature-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [disabled_visualization](#disabled-visualization) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [draw_fluid_icon_override](#draw-fluid-icon-override) | [boolean](../types/boolean.md) | yes |
| [fluid_box](#fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [frozen_patch](#frozen-patch) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [pictures](#pictures) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [show_fluid_visualization_when_in_cursor](#show-fluid-visualization-when-in-cursor) | [boolean](../types/boolean.md) | yes |
| [visualization](#visualization) | [Sprite4Way](../types/Sprite4Way.md) | yes |

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### default_fluid_temperature_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### disabled_visualization

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_fluid_icon_override

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Causes fluid icon to always be drawn, ignoring the usual pair requirement.

### fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

### frozen_patch

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### pictures

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### show_fluid_visualization_when_in_cursor

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When this is true, fluid pipelines will be visualized when this entity is held in the cursor.

### visualization

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_
