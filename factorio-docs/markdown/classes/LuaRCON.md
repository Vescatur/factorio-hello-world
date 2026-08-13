# LuaRCON

_class_

An interface to send messages to the calling RCON interface through the global object named `rcon`.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

## Methods

| Method | Summary |
| --- | --- |
| [print](#print) | Print text to the calling RCON interface if any. |

### print

`print(message)`

Print text to the calling RCON interface if any.

#### Parameters

##### message

**Type:** [LocalisedString](../concepts/LocalisedString.md)
