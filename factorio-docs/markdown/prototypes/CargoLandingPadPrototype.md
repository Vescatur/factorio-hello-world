# CargoLandingPadPrototype

_prototype_

**Prototype type string:** `type = "cargo-landing-pad"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [cargo_station_parameters](#cargo-station-parameters) | [CargoStationParameters](../types/CargoStationParameters.md) |  |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [graphics_set](#graphics-set) | [CargoBayConnectableGraphicsSet](../types/CargoBayConnectableGraphicsSet.md) | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [radar_range](#radar-range) | [uint32](../types/uint32.md) | yes |
| [radar_visualisation_color](#radar-visualisation-color) | [Color](../types/Color.md) | yes |
| [radius_visualisation_picture](#radius-visualisation-picture) | [Sprite](../types/Sprite.md) | yes |
| [robot_door](#robot-door) | [RobotDoorSpecification](../types/RobotDoorSpecification.md) | yes |
| [trash_inventory_size](#trash-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |

### cargo_station_parameters

**Type:** [CargoStationParameters](../types/CargoStationParameters.md)

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### graphics_set

**Type:** [CargoBayConnectableGraphicsSet](../types/CargoBayConnectableGraphicsSet.md) · _optional_

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

### radar_range

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

In chunks. The radius of how many chunks this cargo landing pad charts around itself.

### radar_visualisation_color

**Type:** [Color](../types/Color.md) · _optional_

The visualisation used when showing cargo bay unloading distance limits.

### radius_visualisation_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### robot_door

**Type:** [RobotDoorSpecification](../types/RobotDoorSpecification.md) · _optional_

### trash_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
