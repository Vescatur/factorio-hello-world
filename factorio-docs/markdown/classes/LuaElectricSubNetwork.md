# LuaElectricSubNetwork

_class_

A LuaElectricSubNetwork represents an electricity supply group.

When a supply group is related to electric poles, it spans over all poles that are connected with real (non ghost) wires and connects entities with an electric energy source in range of those poles.

When a supply group is related to a global electric network, it connects entities with an electric energy source on the same surface.

Implicit connections (when a power switch is closed, or when an electric pole is built on a surface with global network) do not cause supply groups to merge since they are not copper wire connections. Those connections will cause sub networks to have the same parent electric network causing electricity to be allowed to flow freely between multiple sub networks (electricity produced inside of one sub network that is connected through a power switch to a second sub network will be able to flow into a consumer connected to the second sub network).

The electric sub network keeps track of connected entities. It does *not* perform electricity flow as that's the responsibility of the electric network.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [id](#id) | [uint32](../concepts/uint32.md) |  |
| [neighbours](#neighbours) | array[[LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md)] |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [parent_network](#parent-network) | [LuaElectricNetwork](../classes/LuaElectricNetwork.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### id

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Unique identifier of this electric sub network.

### neighbours

**Read:** array[[LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md)] · _read-only_

List of sub networks that are directly connected to this sub network through power switches or because they span over electric poles placed on a surface with global network (all poles on a surface with global network are implicitly connected to global network making their networks neighbour of a global network).

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### parent_network

**Read:** [LuaElectricNetwork](../classes/LuaElectricNetwork.md) · _read-only_

Parent network to this sub network.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [get_accumulators_energy](#get-accumulators-energy) | Gets total energy stored inside of accumulators connected to the electric sub network. |
| [set_accumulators_energy](#set-accumulators-energy) | Changes energy stored inside of accumulators connected to the electric sub network. |

### get_accumulators_energy

`get_accumulators_energy({name, quality})`

Gets total energy stored inside of accumulators connected to the electric sub network.

#### Parameters

##### name

**Type:** [EntityID](../concepts/EntityID.md) · _optional_

When given, only accumulators of this prototype will be considered.

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

When given, only accumulators of this quality will be considered.

#### Return values

- [EnergyAndCapacityPair](../concepts/EnergyAndCapacityPair.md)

### set_accumulators_energy

`set_accumulators_energy({energy, equalize, name, quality})`

Changes energy stored inside of accumulators connected to the electric sub network.

#### Parameters

##### energy

**Type:** [double](../concepts/double.md)

New total energy to be set onto matching accumulators.

##### equalize

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether all accumulators should have the same charge ratio, regardless of whether that means discharging some of them. Defaults to `false`.

##### name

**Type:** [EntityID](../concepts/EntityID.md) · _optional_

When given, only accumulators of this prototype will be considered.

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

When given, only accumulators of this quality will be considered.
