# LuaCircuitNetwork

_class_

A circuit network associated with a given entity, connector, and wire type.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [connected_circuit_count](#connected-circuit-count) | [uint32](../concepts/uint32.md) |  |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [network_id](#network-id) | [uint32](../concepts/uint32.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [signals](#signals) | array[[Signal](../concepts/Signal.md)] | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [wire_connector_id](#wire-connector-id) | [defines.wire_connector_id](../defines/defines.md) |  |
| [wire_type](#wire-type) | [defines.wire_type](../defines/defines.md) |  |

### connected_circuit_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The number of circuits connected to this network.

### entity

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_

The entity this circuit network reference is associated with.

### network_id

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The circuit networks ID.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### signals

**Read:** array[[Signal](../concepts/Signal.md)] · _read-only_ · _optional_

The circuit network signals last tick. `nil` if there were no signals last tick.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### wire_connector_id

**Read:** [defines.wire_connector_id](../defines/defines.md) · _read-only_

Wire connector ID on associated entity this network was gotten from.

### wire_type

**Read:** [defines.wire_type](../defines/defines.md) · _read-only_

The wire type this network is associated with.

## Methods

| Method | Summary |
| --- | --- |
| [get_signal](#get-signal) |  |

### get_signal

`get_signal(signal)`

#### Parameters

##### signal

**Type:** [SignalID](../concepts/SignalID.md)

The signal to read.

#### Return values

- [int32](../concepts/int32.md) — The current value of the signal.
