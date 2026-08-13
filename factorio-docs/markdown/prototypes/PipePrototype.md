# PipePrototype

_prototype_

**Prototype type string:** `type = "pipe"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

An entity to transport fluids over a distance and between machines.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [default_fluid_temperature_signal](#default-fluid-temperature-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [fluid_box](#fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [horizontal_window_bounding_box](#horizontal-window-bounding-box) | [BoundingBox](../types/BoundingBox.md) |  |
| [pictures](#pictures) | [PipePictures](../types/PipePictures.md) | yes |
| [show_fluid_visualization_when_in_cursor](#show-fluid-visualization-when-in-cursor) | [boolean](../types/boolean.md) | yes |
| [vertical_window_bounding_box](#vertical-window-bounding-box) | [BoundingBox](../types/BoundingBox.md) |  |

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### default_fluid_temperature_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

The area of the entity where fluid/gas inputs, and outputs.

### horizontal_window_bounding_box

**Type:** [BoundingBox](../types/BoundingBox.md)

### pictures

**Type:** [PipePictures](../types/PipePictures.md) · _optional_

All graphics for this pipe.

### show_fluid_visualization_when_in_cursor

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When this is true, fluid pipelines will be visualized when this entity is held in the cursor.

### vertical_window_bounding_box

**Type:** [BoundingBox](../types/BoundingBox.md)
