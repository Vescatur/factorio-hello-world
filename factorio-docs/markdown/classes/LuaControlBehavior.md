# LuaControlBehavior

_class_ · **abstract**

The control behavior for an entity. Inserters have logistic network and circuit network behavior logic, lamps have circuit logic and so on. This is an abstract base class that concrete control behaviors inherit.

An control reference becomes invalid once the control behavior is removed or the entity (see [LuaEntity](../classes/LuaEntity.md)) it resides in is destroyed.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [input_networks](#input-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [output_networks](#output-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [type](#type) | [defines.control_behavior.type](../defines/defines.md) |  |

### entity

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_

The entity this control behavior belongs to.

### input_networks

**Read:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · **Write:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

Which circuit networks (red/green) to read signals from. Defaults to both wire colors.

`nil` if this control behavior does not allow selecting the input networks.

### output_networks

**Read:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · **Write:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

Which circuit networks (red/green) to send signals to. Defaults to both wire colors.

`nil` if this control behavior does not allow selecting the output networks.

### type

**Read:** [defines.control_behavior.type](../defines/defines.md) · _read-only_

The concrete type of this control behavior.

## Methods

| Method | Summary |
| --- | --- |
| [get_circuit_network](#get-circuit-network) |  |

### get_circuit_network

`get_circuit_network(wire_connector_id)`

#### Parameters

##### wire_connector_id

**Type:** [defines.wire_connector_id](../defines/defines.md)

Wire connector to get circuit network for.

#### Return values

- [LuaCircuitNetwork](../classes/LuaCircuitNetwork.md) _(optional)_ — The circuit network or nil.
