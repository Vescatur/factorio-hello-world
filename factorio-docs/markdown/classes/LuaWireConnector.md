# LuaWireConnector

_class_

A wire connector of a given entity. Allows to find wires, add or remove wires and do some basic operations specific to those connectors.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [connection_count](#connection-count) | [uint32](../concepts/uint32.md) |  |
| [connections](#connections) | array[[WireConnection](../concepts/WireConnection.md)] |  |
| [electric_network](#electric-network) | [LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md) | yes |
| [is_ghost](#is-ghost) | [boolean](../concepts/boolean.md) |  |
| [network_id](#network-id) | [uint32](../concepts/uint32.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [owner](#owner) | [LuaEntity](../classes/LuaEntity.md) |  |
| [real_connection_count](#real-connection-count) | [uint32](../concepts/uint32.md) |  |
| [real_connections](#real-connections) | array[[WireConnection](../concepts/WireConnection.md)] |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [wire_connector_id](#wire-connector-id) | [defines.wire_connector_id](../defines/defines.md) |  |
| [wire_type](#wire-type) | [defines.wire_type](../defines/defines.md) |  |

### connection_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Amount of wires going out of this connector. It includes all wires (ghost wires and real wires).

### connections

**Read:** array[[WireConnection](../concepts/WireConnection.md)] · _read-only_

All wire connectors this connector is connected to. It includes all wires (ghost wires and real wires).

### electric_network

**Read:** [LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md) · _read-only_ · _optional_

The electric sub network this copper wire connector provides.

No value will be provided if this is not a copper wire connector. May be `nil` in case of a copper wire connector when it belongs to a ghost or its from a power switch when there are no real wires connecting it to other entities.

### is_ghost

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this connector is owned by an entity inside of a ghost. If any of 2 ends of a wire attaches to a ghost connector, then a wire is considered to be a ghost.

### network_id

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Index of a CircuitNetwork or ElectricSubNetwork which is going through this wire connector. Returns 0 if there is no network associated with this wire connector right now. CircuitNetwork indexes are independent of indexes of ElectricSubNetwork so they may collide with each other.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### owner

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_

The entity this wire connector belongs to. May return entity ghost instead if this wire connector belongs to inner entity.

### real_connection_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Amount of real wires going out of this connector. It only includes wires for which both wire connectors are real (not ghosts).

### real_connections

**Read:** array[[WireConnection](../concepts/WireConnection.md)] · _read-only_

All wire connectors this connector is connected to with real wires. It only includes wires that are between two non-ghost entities.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### wire_connector_id

**Read:** [defines.wire_connector_id](../defines/defines.md) · _read-only_

Identifier of this connector in the entity this connector belongs to.

### wire_type

**Read:** [defines.wire_type](../defines/defines.md) · _read-only_

The type of wires that can be connected to this connector.

## Methods

| Method | Summary |
| --- | --- |
| [can_wire_reach](#can-wire-reach) | Checks if a wire can reach from this connector to the other connector. |
| [connect_to](#connect-to) | Connects this connector to other wire connector. |
| [disconnect_all](#disconnect-all) | Removes all wires going out of this wire connector. |
| [disconnect_from](#disconnect-from) | Disconnects this connector from other wire connector. |
| [have_common_neighbour](#have-common-neighbour) | Checks if this and other wire connector have a common neighbour. |
| [is_connected_to](#is-connected-to) | Checks if this connector has any wire going to the other connector. |

### can_wire_reach

`can_wire_reach(other_connector)`

Checks if a wire can reach from this connector to the other connector.

#### Parameters

##### other_connector

**Type:** [LuaWireConnector](../classes/LuaWireConnector.md) ∣ [LuaEntity](../classes/LuaEntity.md)

Target to which a wire reach is to be checked.

#### Return values

- [boolean](../concepts/boolean.md)

### connect_to

`connect_to(origin, reach_check, target)`

Connects this connector to other wire connector.

#### Parameters

##### origin

**Type:** [defines.wire_origin](../defines/defines.md) · _optional_

Origin of the wire. Defaults to `defines.wire_origin.player`.

##### reach_check

**Type:** [boolean](../concepts/boolean.md) · _optional_

True by default. For wires out of reach or on different surfaces, `false` must be provided.

##### target

**Type:** [LuaWireConnector](../classes/LuaWireConnector.md)

Other connector to which a wire should be added.

#### Return values

- [boolean](../concepts/boolean.md) — Whether a connection was made.

### disconnect_all

`disconnect_all(origin)`

Removes all wires going out of this wire connector.

#### Parameters

##### origin

**Type:** [defines.wire_origin](../defines/defines.md) · _optional_

Origin of the wires to remove. Defaults to `defines.wire_origin.player`.

#### Return values

- [boolean](../concepts/boolean.md) — True if any wire was removed.

### disconnect_from

`disconnect_from(origin, target)`

Disconnects this connector from other wire connector.

#### Parameters

##### origin

**Type:** [defines.wire_origin](../defines/defines.md) · _optional_

Origin of the wire. Defaults to `defines.wire_origin.player`.

##### target

**Type:** [LuaWireConnector](../classes/LuaWireConnector.md)

Other connector to which wire to be removed should be removed.

#### Return values

- [boolean](../concepts/boolean.md) — Whether a connection was removed.

### have_common_neighbour

`have_common_neighbour(ignore_ghost_neighbours, other_connector)`

Checks if this and other wire connector have a common neighbour.

#### Parameters

##### ignore_ghost_neighbours

**Type:** [boolean](../concepts/boolean.md) · _optional_

##### other_connector

**Type:** [LuaWireConnector](../classes/LuaWireConnector.md)

Other connector to check for common neighbour.

#### Return values

- [boolean](../concepts/boolean.md)

### is_connected_to

`is_connected_to(origin, target)`

Checks if this connector has any wire going to the other connector.

#### Parameters

##### origin

**Type:** [defines.wire_origin](../defines/defines.md) · _optional_

Origin of the wire. Defaults to `defines.wire_origin.player`.

##### target

**Type:** [LuaWireConnector](../classes/LuaWireConnector.md)

Other connector to check for a connection to.

#### Return values

- [boolean](../concepts/boolean.md)
