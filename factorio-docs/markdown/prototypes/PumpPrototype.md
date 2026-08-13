# PumpPrototype

_prototype_

**Prototype type string:** `type = "pump"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

The pump is used to transfer fluids between tanks, fluid wagons and pipes.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animations](#animations) | [Animation4Way](../types/Animation4Way.md) | yes |
| [arm_orienting_sound](#arm-orienting-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [base_lifting_sound](#base-lifting-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [clamp_sound](#clamp-sound) | [Sound](../types/Sound.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [energy_source](#energy-source) | [EnergySource](../types/EnergySource.md) |  |
| [energy_usage](#energy-usage) | [Energy](../types/Energy.md) |  |
| [flow_scaling](#flow-scaling) | [boolean](../types/boolean.md) | yes |
| [fluid_animation](#fluid-animation) | [Animation4Way](../types/Animation4Way.md) | yes |
| [fluid_box](#fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [fluid_wagon_connector_frame_count](#fluid-wagon-connector-frame-count) | [uint8](../types/uint8.md) | yes |
| [fluid_wagon_connector_speed](#fluid-wagon-connector-speed) | [double](../types/double.md) | yes |
| [fluid_wagon_tank_valve_max_distance](#fluid-wagon-tank-valve-max-distance) | [double](../types/double.md) | yes |
| [frozen_patch](#frozen-patch) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [glass_pictures](#glass-pictures) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [pumping_speed](#pumping-speed) | [FluidAmount](../types/FluidAmount.md) |  |
| [show_fluid_visualization_when_in_cursor](#show-fluid-visualization-when-in-cursor) | [boolean](../types/boolean.md) | yes |
| [wagon_connection_graphics](#wagon-connection-graphics) | [PumpWagonConnectionGraphics](../types/PumpWagonConnectionGraphics.md) | yes |

### animations

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

The animation for the pump.

### arm_orienting_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### base_lifting_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### clamp_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### energy_source

**Type:** [EnergySource](../types/EnergySource.md)

The type of energy the pump uses.

### energy_usage

**Type:** [Energy](../types/Energy.md)

The amount of energy the pump uses.

### flow_scaling

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When true, pump will reduce pumping speed based on fullness of the input fluid segment.

### fluid_animation

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

### fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

The area of the entity where fluid travels.

### fluid_wagon_connector_frame_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### fluid_wagon_connector_speed

**Type:** [double](../types/double.md) · _optional_ · **Default:** `1 / 64.0`

### fluid_wagon_tank_valve_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 2.2}`

counts from the "start of the arm", which is `pump's position + wagon_connection_graphics.part1_to_2_shift + wagon_connection_graphics.top_pivot_shift (depending on direction)`

### frozen_patch

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### glass_pictures

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### pumping_speed

**Type:** [FluidAmount](../types/FluidAmount.md)

The amount of fluid this pump transfers per tick.

### show_fluid_visualization_when_in_cursor

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When this is true, fluid pipelines will be visualized when this entity is held in the cursor.

### wagon_connection_graphics

**Type:** [PumpWagonConnectionGraphics](../types/PumpWagonConnectionGraphics.md) · _optional_
