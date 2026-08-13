# LuaSpacePlatformHubControlBehavior

_class_

**Inherits from:** [LuaControlBehavior](../classes/LuaControlBehavior.md)

Control behavior for space platform hubs

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [damage_taken_signal](#damage-taken-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [read_contents](#read-contents) | [boolean](../concepts/boolean.md) |  |
| [read_damage_taken](#read-damage-taken) | [boolean](../concepts/boolean.md) |  |
| [read_moving_from](#read-moving-from) | [boolean](../concepts/boolean.md) |  |
| [read_moving_to](#read-moving-to) | [boolean](../concepts/boolean.md) |  |
| [read_speed](#read-speed) | [boolean](../concepts/boolean.md) |  |
| [send_to_platform](#send-to-platform) | [boolean](../concepts/boolean.md) |  |
| [set_requests](#set-requests) | [boolean](../concepts/boolean.md) |  |
| [speed_signal](#speed-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### damage_taken_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

Signal to be transmitted with platform's damage taken value.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### read_contents

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if this hub is sending its content to a circuit network

### read_damage_taken

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether damage taken by the space platform is sent to circuit network.

### read_moving_from

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether current connection "from" end is sent to circuit network.

### read_moving_to

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether current connection "to" end is sent to circuit network.

### read_speed

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether current speed of space platform is sent to circuit network.

### send_to_platform

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether the signals are used for circuit conditions in the platform's schedule

### set_requests

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### speed_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

Signal to be transmitted with platform's current speed.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
