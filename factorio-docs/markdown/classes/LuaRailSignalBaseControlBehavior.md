# LuaRailSignalBaseControlBehavior

_class_

**Inherits from:** [LuaControlBehavior](../classes/LuaControlBehavior.md)

Control behavior for rail signals and rail chain signals.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [blue_signal](#blue-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [circuit_condition](#circuit-condition) | [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) |  |
| [close_signal](#close-signal) | [boolean](../concepts/boolean.md) |  |
| [green_signal](#green-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [orange_signal](#orange-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [read_signal](#read-signal) | [boolean](../concepts/boolean.md) |  |
| [red_signal](#red-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### blue_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### circuit_condition

**Read:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · **Write:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md)

The circuit condition when controlling the signal through the circuit network.

### close_signal

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this will close the rail signal based off the circuit condition.

### green_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### orange_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### read_signal

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this will read the rail signal state.

### red_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
