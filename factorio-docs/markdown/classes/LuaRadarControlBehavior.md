# LuaRadarControlBehavior

_class_

**Inherits from:** [LuaControlBehavior](../classes/LuaControlBehavior.md)

Control behavior for radars

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [mode](#mode) | [defines.control_behavior.radar.mode](../defines/defines.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [universe_channel](#universe-channel) | [SignalID](../concepts/SignalID.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### mode

**Read:** [defines.control_behavior.radar.mode](../defines/defines.md) · **Write:** [defines.control_behavior.radar.mode](../defines/defines.md)

Whether this radar is in universe (channel) or surface mode.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### universe_channel

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

The channel that is used in universe mode. Radars on the same force with the same channel in universe mode are connected to each other with hidden radar wires.

If the channel is empty or a [parameter](../classes/LuaPrototypeBase.md#parameter), the radar will be disconnected.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
