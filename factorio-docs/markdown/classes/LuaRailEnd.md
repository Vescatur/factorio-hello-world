# LuaRailEnd

_class_

Utility object that binds to a rail entity and rail_direction to allow easier traversal over rails

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [alternative_in_signal_location](#alternative-in-signal-location) | [RailLocation](../concepts/RailLocation.md) | yes |
| [alternative_out_signal_location](#alternative-out-signal-location) | [RailLocation](../concepts/RailLocation.md) | yes |
| [direction](#direction) | [defines.rail_direction](../defines/defines.md) |  |
| [in_signal_location](#in-signal-location) | [RailLocation](../concepts/RailLocation.md) |  |
| [location](#location) | [RailLocation](../concepts/RailLocation.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [out_signal_location](#out-signal-location) | [RailLocation](../concepts/RailLocation.md) |  |
| [rail](#rail) | [LuaEntity](../classes/LuaEntity.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### alternative_in_signal_location

**Read:** [RailLocation](../concepts/RailLocation.md) · _read-only_ · _optional_

Location of the alternative incoming signal, which goes to the right relative to the rail end movement. Not all places have alternative incoming signal spot, so when it is not available, a nil will be given instead

### alternative_out_signal_location

**Read:** [RailLocation](../concepts/RailLocation.md) · _read-only_ · _optional_

Location of the alternative outgoing signal, which goes to the right relative to the rail end movement. Not all places have alternative outgoing signal spot, so when it is not available, a nil will be given instead

### direction

**Read:** [defines.rail_direction](../defines/defines.md) · _read-only_

Which end of the rail this RailEnd is binding to.

### in_signal_location

**Read:** [RailLocation](../concepts/RailLocation.md) · _read-only_

Location of an incoming signal, which goes to the left relative to the rail end movement.

### location

**Read:** [RailLocation](../concepts/RailLocation.md) · _read-only_

Location of the rail end

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### out_signal_location

**Read:** [RailLocation](../concepts/RailLocation.md) · _read-only_

Location of an outgoing signal, which goes to the right relative to the rail end movement.

### rail

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_

Rail to which this RailEnd is binding to.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [flip_direction](#flip-direction) | Moves to opposite end on the rail this object points to |
| [get_rail_extensions](#get-rail-extensions) | Returns all possible rail extensions from this position as defined by the planner item. |
| [make_copy](#make-copy) | Creates a copy of this LuaRailEnd object. |
| [move_forward](#move-forward) | Moves forward by 1 rail to the specified connection direction |
| [move_natural](#move-natural) | Moves forward by 1 rail in the natural direction. Natural direction is a move in the direction taken by the train over rail connection related to this rail end. If there are no trains, the natural direction is straight if straight connected rail exists, otherwise it is right if right connected rail exists, otherwise it is left if left connected rail exists. Natural direction is not defined if there are no rails connected to this end and this method will fail. |
| [move_to_segment_end](#move-to-segment-end) | Moves forward until a rail segment boundary is reached. If this rail end is at the segment boundary, it will not move at all. When a rail segment is cyclical, it will reach the rail segment boundary at some arbitrary position unless the segment boundary is well defined by presence of rail signals, train stop or other rails connecting to the rails loop. |

### flip_direction

`flip_direction()`

Moves to opposite end on the rail this object points to

### get_rail_extensions

`get_rail_extensions(planner_item)`

Returns all possible rail extensions from this position as defined by the planner item.

#### Parameters

##### planner_item

**Type:** [ItemID](../concepts/ItemID.md)

Rail planner that defines possible rail extensions

#### Return values

- array[[RailExtensionData](../concepts/RailExtensionData.md)]

### make_copy

`make_copy()`

Creates a copy of this LuaRailEnd object.

#### Return values

- [LuaRailEnd](../classes/LuaRailEnd.md)

### move_forward

`move_forward(connection_direction)`

Moves forward by 1 rail to the specified connection direction

#### Parameters

##### connection_direction

**Type:** [defines.rail_connection_direction](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md) — If the move was successful. False if there is no rail connected in given connection_direction

### move_natural

`move_natural()`

Moves forward by 1 rail in the natural direction. Natural direction is a move in the direction taken by the train over rail connection related to this rail end. If there are no trains, the natural direction is straight if straight connected rail exists, otherwise it is right if right connected rail exists, otherwise it is left if left connected rail exists. Natural direction is not defined if there are no rails connected to this end and this method will fail.

#### Return values

- [boolean](../concepts/boolean.md) — If the move was successful. False only when there are no rails connected on this end

### move_to_segment_end

`move_to_segment_end()`

Moves forward until a rail segment boundary is reached. If this rail end is at the segment boundary, it will not move at all. When a rail segment is cyclical, it will reach the rail segment boundary at some arbitrary position unless the segment boundary is well defined by presence of rail signals, train stop or other rails connecting to the rails loop.
