# TrainStopPrototype

_prototype_

**Prototype type string:** `type = "train-stop"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [train stop](https://wiki.factorio.com/Train_stop).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation_ticks_per_frame](#animation-ticks-per-frame) | [uint32](../types/uint32.md) |  |
| [animations](#animations) | [Animation4Way](../types/Animation4Way.md) | yes |
| [build_grid_size](#build-grid-size) | `2` | yes |
| [chart_name](#chart-name) | [boolean](../types/boolean.md) | yes |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [color](#color) | [Color](../types/Color.md) | yes |
| [default_priority_signal](#default-priority-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_train_stopped_signal](#default-train-stopped-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_trains_count_signal](#default-trains-count-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_trains_limit_signal](#default-trains-limit-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [drawing_boxes](#drawing-boxes) | [TrainStopDrawingBoxes](../types/TrainStopDrawingBoxes.md) | yes |
| [light1](#light1) | [TrainStopLight](../types/TrainStopLight.md) | yes |
| [light2](#light2) | [TrainStopLight](../types/TrainStopLight.md) | yes |
| [rail_overlay_animations](#rail-overlay-animations) | [Animation4Way](../types/Animation4Way.md) | yes |
| [top_animations](#top-animations) | [Animation4Way](../types/Animation4Way.md) | yes |

### animation_ticks_per_frame

**Type:** [uint32](../types/uint32.md)

### animations

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

### build_grid_size

**Type:** `2` · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 2}`

Has to be 2 for 2x2 grid.

### chart_name

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### color

**Type:** [Color](../types/Color.md) · _optional_

### default_priority_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_train_stopped_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_trains_count_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_trains_limit_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### drawing_boxes

**Type:** [TrainStopDrawingBoxes](../types/TrainStopDrawingBoxes.md) · _optional_

### light1

**Type:** [TrainStopLight](../types/TrainStopLight.md) · _optional_

### light2

**Type:** [TrainStopLight](../types/TrainStopLight.md) · _optional_

### rail_overlay_animations

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

### top_animations

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_
