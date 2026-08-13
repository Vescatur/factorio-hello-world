# SpacePlatformHubPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "space-platform-hub"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [build_grid_size](#build-grid-size) | `256` | yes |
| [cargo_station_parameters](#cargo-station-parameters) | [CargoStationParameters](../types/CargoStationParameters.md) |  |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [default_damage_taken_signal](#default-damage-taken-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_speed_signal](#default-speed-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [graphics_set](#graphics-set) | [CargoBayConnectableGraphicsSet](../types/CargoBayConnectableGraphicsSet.md) | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [persistent_ambient_sounds](#persistent-ambient-sounds) | [PersistentWorldAmbientSoundsDefinition](../types/PersistentWorldAmbientSoundsDefinition.md) | yes |
| [platform_repair_speed_modifier](#platform-repair-speed-modifier) | [float](../types/float.md) | yes |
| [weight](#weight) | [Weight](../types/Weight.md) | yes |

### build_grid_size

**Type:** `256` · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 256}`

Has to be 256 to make blueprints snap to (0, 0) most of the time.

### cargo_station_parameters

**Type:** [CargoStationParameters](../types/CargoStationParameters.md)

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### default_damage_taken_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_speed_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### graphics_set

**Type:** [CargoBayConnectableGraphicsSet](../types/CargoBayConnectableGraphicsSet.md) · _optional_

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

### persistent_ambient_sounds

**Type:** [PersistentWorldAmbientSoundsDefinition](../types/PersistentWorldAmbientSoundsDefinition.md) · _optional_

### platform_repair_speed_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Repair speed of entities is multiplied by this value when they are on a space platform with this hub prototype.

### weight

**Type:** [Weight](../types/Weight.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Mass which this entity adds to total space platform mass when placed.
