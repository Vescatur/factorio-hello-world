# WallPrototype

_prototype_

**Prototype type string:** `type = "wall"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [wall](https://wiki.factorio.com/Wall).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [connected_gate_visualization](#connected-gate-visualization) | [Sprite](../types/Sprite.md) | yes |
| [default_output_signal](#default-output-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [pictures](#pictures) | [WallPictures](../types/WallPictures.md) | yes |
| [visual_merge_group](#visual-merge-group) | [uint32](../types/uint32.md) | yes |
| [wall_diode_green](#wall-diode-green) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [wall_diode_green_light_bottom](#wall-diode-green-light-bottom) | [LightDefinition](../types/LightDefinition.md) | yes |
| [wall_diode_green_light_left](#wall-diode-green-light-left) | [LightDefinition](../types/LightDefinition.md) | yes |
| [wall_diode_green_light_right](#wall-diode-green-light-right) | [LightDefinition](../types/LightDefinition.md) | yes |
| [wall_diode_green_light_top](#wall-diode-green-light-top) | [LightDefinition](../types/LightDefinition.md) | yes |
| [wall_diode_red](#wall-diode-red) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [wall_diode_red_light_bottom](#wall-diode-red-light-bottom) | [LightDefinition](../types/LightDefinition.md) | yes |
| [wall_diode_red_light_left](#wall-diode-red-light-left) | [LightDefinition](../types/LightDefinition.md) | yes |
| [wall_diode_red_light_right](#wall-diode-red-light-right) | [LightDefinition](../types/LightDefinition.md) | yes |
| [wall_diode_red_light_top](#wall-diode-red-light-top) | [LightDefinition](../types/LightDefinition.md) | yes |

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### connected_gate_visualization

**Type:** [Sprite](../types/Sprite.md) · _optional_

### default_output_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### pictures

**Type:** [WallPictures](../types/WallPictures.md) · _optional_

### visual_merge_group

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Different walls will visually connect to each other if their merge group is the same.

### wall_diode_green

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### wall_diode_green_light_bottom

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### wall_diode_green_light_left

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### wall_diode_green_light_right

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### wall_diode_green_light_top

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### wall_diode_red

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### wall_diode_red_light_bottom

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### wall_diode_red_light_left

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### wall_diode_red_light_right

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### wall_diode_red_light_top

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_
