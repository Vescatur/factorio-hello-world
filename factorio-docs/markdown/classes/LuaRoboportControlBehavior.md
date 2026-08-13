# LuaRoboportControlBehavior

_class_

**Inherits from:** [LuaControlBehavior](../classes/LuaControlBehavior.md)

Control behavior for roboports.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [available_construction_output_signal](#available-construction-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [available_logistic_output_signal](#available-logistic-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [read_items_mode](#read-items-mode) | [defines.control_behavior.roboport.read_items_mode](../defines/defines.md) |  |
| [read_logistics](#read-logistics) | [boolean](../concepts/boolean.md) |  |
| [read_robot_stats](#read-robot-stats) | [boolean](../concepts/boolean.md) |  |
| [roboport_count_output_signal](#roboport-count-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [total_construction_output_signal](#total-construction-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [total_logistic_output_signal](#total-logistic-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### available_construction_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### available_logistic_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### read_items_mode

**Read:** [defines.control_behavior.roboport.read_items_mode](../defines/defines.md) · **Write:** [defines.control_behavior.roboport.read_items_mode](../defines/defines.md)

Selects contents that are to be read from the roboport

### read_logistics

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Legacy field, please use LuaRoboportControlBehavior::read_items_mode instead. `true` if the roboport should report the logistics network content to the circuit network.

### read_robot_stats

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the roboport should report the robot statistics to the circuit network.

### roboport_count_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### total_construction_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### total_logistic_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
