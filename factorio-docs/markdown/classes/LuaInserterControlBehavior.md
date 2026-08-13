# LuaInserterControlBehavior

_class_

**Inherits from:** [LuaGenericOnOffControlBehavior](../classes/LuaGenericOnOffControlBehavior.md)

Control behavior for inserters.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_hand_read_mode](#circuit-hand-read-mode) | [defines.control_behavior.inserter.hand_read_mode](../defines/defines.md) |  |
| [circuit_read_hand_contents](#circuit-read-hand-contents) | [boolean](../concepts/boolean.md) |  |
| [circuit_set_filters](#circuit-set-filters) | [boolean](../concepts/boolean.md) |  |
| [circuit_set_stack_size](#circuit-set-stack-size) | [boolean](../concepts/boolean.md) |  |
| [circuit_stack_control_signal](#circuit-stack-control-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### circuit_hand_read_mode

**Read:** [defines.control_behavior.inserter.hand_read_mode](../defines/defines.md) · **Write:** [defines.control_behavior.inserter.hand_read_mode](../defines/defines.md)

The hand read mode for the inserter.

### circuit_read_hand_contents

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the contents of the inserter hand should be sent to the circuit network

### circuit_set_filters

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if filters are set from circuit network

### circuit_set_stack_size

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If the stack size of the inserter is set through the circuit network or not.

### circuit_stack_control_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

The signal used to set the stack size of the inserter.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
