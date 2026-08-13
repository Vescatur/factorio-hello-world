# LuaLampControlBehavior

_class_

**Inherits from:** [LuaGenericOnOffControlBehavior](../classes/LuaGenericOnOffControlBehavior.md)

Control behavior for lamps.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [blue_signal](#blue-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [color](#color) | [Color](../concepts/Color.md) | yes |
| [color_mode](#color-mode) | [defines.control_behavior.lamp.color_mode](../defines/defines.md) |  |
| [green_signal](#green-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [red_signal](#red-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [rgb_signal](#rgb-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [use_colors](#use-colors) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### blue_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### color

**Read:** [Color](../concepts/Color.md) · _read-only_ · _optional_

The color the lamp is showing, if any.

### color_mode

**Read:** [defines.control_behavior.lamp.color_mode](../defines/defines.md) · **Write:** [defines.control_behavior.lamp.color_mode](../defines/defines.md)

### green_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### red_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### rgb_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### use_colors

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the lamp should set the color from the circuit network signals.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
