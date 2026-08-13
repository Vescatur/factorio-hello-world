# LuaLogisticCell

_class_

Logistic cell of a particular [LuaEntity](../classes/LuaEntity.md). A "Logistic Cell" is the given name for settings and properties used by what would normally be seen as a "Roboport". A logistic cell however doesn't have to be attached to the roboport entity (the character has one for the personal roboport).

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [charge_approach_distance](#charge-approach-distance) | [float](../concepts/float.md) |  |
| [charging_robot_count](#charging-robot-count) | [uint32](../concepts/uint32.md) |  |
| [charging_robots](#charging-robots) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [construction_radius](#construction-radius) | [float](../concepts/float.md) |  |
| [logistic_network](#logistic-network) | [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) | yes |
| [logistic_radius](#logistic-radius) | [float](../concepts/float.md) |  |
| [logistics_connection_distance](#logistics-connection-distance) | [float](../concepts/float.md) |  |
| [mobile](#mobile) | [boolean](../concepts/boolean.md) |  |
| [neighbours](#neighbours) | array[[LuaLogisticCell](../classes/LuaLogisticCell.md)] |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [owner](#owner) | [LuaEntity](../classes/LuaEntity.md) |  |
| [stationed_construction_robot_count](#stationed-construction-robot-count) | [uint32](../concepts/uint32.md) |  |
| [stationed_logistic_robot_count](#stationed-logistic-robot-count) | [uint32](../concepts/uint32.md) |  |
| [to_charge_robot_count](#to-charge-robot-count) | [uint32](../concepts/uint32.md) |  |
| [to_charge_robots](#to-charge-robots) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [transmitting](#transmitting) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### charge_approach_distance

**Read:** [float](../concepts/float.md) · _read-only_

Radius at which the robots hover when waiting to be charged.

### charging_robot_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Number of robots currently charging.

### charging_robots

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

Robots currently being charged.

### construction_radius

**Read:** [float](../concepts/float.md) · _read-only_

Construction radius of this cell.

### logistic_network

**Read:** [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) · _read-only_ · _optional_

The network that owns this cell, if any.

### logistic_radius

**Read:** [float](../concepts/float.md) · _read-only_

Logistic radius of this cell.

### logistics_connection_distance

**Read:** [float](../concepts/float.md) · _read-only_

Logistic connection distance of this cell.

### mobile

**Read:** [boolean](../concepts/boolean.md) · _read-only_

`true` if this is a mobile cell. The logistic cell created by roboport equipment considered is mobile.

### neighbours

**Read:** array[[LuaLogisticCell](../classes/LuaLogisticCell.md)] · _read-only_

Neighbouring cells.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### owner

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_

This cell's owner.

### stationed_construction_robot_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Number of stationed construction robots in this cell.

### stationed_logistic_robot_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Number of stationed logistic robots in this cell.

### to_charge_robot_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Number of robots waiting to charge.

### to_charge_robots

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

Robots waiting to charge.

### transmitting

**Read:** [boolean](../concepts/boolean.md) · _read-only_

`true` if this cell is active.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [is_in_construction_range](#is-in-construction-range) | Is a given position within the construction range of this cell? |
| [is_in_logistic_range](#is-in-logistic-range) | Is a given position within the logistic range of this cell? |
| [is_neighbour_with](#is-neighbour-with) | Are two cells neighbours? |

### is_in_construction_range

`is_in_construction_range(position)`

Is a given position within the construction range of this cell?

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_in_logistic_range

`is_in_logistic_range(position)`

Is a given position within the logistic range of this cell?

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_neighbour_with

`is_neighbour_with(other)`

Are two cells neighbours?

#### Parameters

##### other

**Type:** [LuaLogisticCell](../classes/LuaLogisticCell.md)

#### Return values

- [boolean](../concepts/boolean.md)
