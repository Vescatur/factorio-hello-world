# HeatPipePrototype

_prototype_

**Prototype type string:** `type = "heat-pipe"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [heat pipe](https://wiki.factorio.com/Heat_pipe).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [connection_sprites](#connection-sprites) | [ConnectableEntityGraphics](../types/ConnectableEntityGraphics.md) | yes |
| [default_temperature_signal](#default-temperature-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [heat_buffer](#heat-buffer) | [HeatBuffer](../types/HeatBuffer.md) |  |
| [heat_glow_sprites](#heat-glow-sprites) | [ConnectableEntityGraphics](../types/ConnectableEntityGraphics.md) | yes |
| [heating_radius](#heating-radius) | [float](../types/float.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |

### circuit_connector

**Type:** array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

Set of 16 circuit connector definitions. They correspond to the following sprites in this exact order: [single](../types/ConnectableEntityGraphics.md#single), [ending_up](../types/ConnectableEntityGraphics.md#ending-up), [ending_right](../types/ConnectableEntityGraphics.md#ending-right), [corner_right_up](../types/ConnectableEntityGraphics.md#corner-right-up), [ending_down](../types/ConnectableEntityGraphics.md#ending-down), [straight_vertical](../types/ConnectableEntityGraphics.md#straight-vertical), [corner_right_down](../types/ConnectableEntityGraphics.md#corner-right-down), [t_right](../types/ConnectableEntityGraphics.md#t-right), [ending_left](../types/ConnectableEntityGraphics.md#ending-left), [corner_left_up](../types/ConnectableEntityGraphics.md#corner-left-up), [straight_horizontal](../types/ConnectableEntityGraphics.md#straight-horizontal), [t_up](../types/ConnectableEntityGraphics.md#t-up), [corner_left_down](../types/ConnectableEntityGraphics.md#corner-left-down), [t_left](../types/ConnectableEntityGraphics.md#t-left), [t_down](../types/ConnectableEntityGraphics.md#t-down), [cross](../types/ConnectableEntityGraphics.md#cross).

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### connection_sprites

**Type:** [ConnectableEntityGraphics](../types/ConnectableEntityGraphics.md) · _optional_

### default_temperature_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### heat_buffer

**Type:** [HeatBuffer](../types/HeatBuffer.md)

### heat_glow_sprites

**Type:** [ConnectableEntityGraphics](../types/ConnectableEntityGraphics.md) · _optional_

### heating_radius

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= 0.

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 45}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.
