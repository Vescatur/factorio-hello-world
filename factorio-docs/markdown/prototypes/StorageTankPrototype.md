# StorageTankPrototype

_prototype_

**Prototype type string:** `type = "storage-tank"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [storage tank](https://wiki.factorio.com/Storage_tank).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [default_fluid_temperature_signal](#default-fluid-temperature-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [flow_length_in_ticks](#flow-length-in-ticks) | [uint32](../types/uint32.md) |  |
| [fluid_box](#fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [pictures](#pictures) | [StorageTankPictures](../types/StorageTankPictures.md) | yes |
| [show_fluid_icon](#show-fluid-icon) | [boolean](../types/boolean.md) | yes |
| [show_fluid_visualization_when_in_cursor](#show-fluid-visualization-when-in-cursor) | [boolean](../types/boolean.md) | yes |
| [two_direction_only](#two-direction-only) | [boolean](../types/boolean.md) | yes |
| [window_bounding_box](#window-bounding-box) | [BoundingBox](../types/BoundingBox.md) |  |

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

### flow_length_in_ticks

**Type:** [uint32](../types/uint32.md)

Must be positive.

Used for determining the x position inside the `flow_sprite` when drawing the storage tank. Does not affect gameplay.

The x position of the sprite will be `((game.tick % flow_length_in_ticks) ÷ flow_length_in_ticks) × (flow_sprite.width - 32)`. This means, that over `flow_length_in_ticks` ticks, the part of the `flow_sprite` that is drawn in-game is incrementally moved from most-left to most-right inside the actual sprite, that part always has a width of 32px. After `flow_length_in_ticks`, the part of the `flow_sprite` that is drawn will start from the left again.

### fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

### pictures

**Type:** [StorageTankPictures](../types/StorageTankPictures.md) · _optional_

### show_fluid_icon

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the "alt-mode icon" should be drawn at all.

### show_fluid_visualization_when_in_cursor

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When this is true, fluid pipelines will be visualized when this entity is held in the cursor.

### two_direction_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### window_bounding_box

**Type:** [BoundingBox](../types/BoundingBox.md)

The location of the window showing the contents. Note that for `window_background` the width and height are determined by the sprite and window_bounding_box only determines the drawing location. For `fluid_background` the width is determined by the sprite and the height and drawing location are determined by window_bounding_box.
