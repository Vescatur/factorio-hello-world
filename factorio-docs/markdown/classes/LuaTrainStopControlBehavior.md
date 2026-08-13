# LuaTrainStopControlBehavior

_class_

**Inherits from:** [LuaGenericOnOffControlBehavior](../classes/LuaGenericOnOffControlBehavior.md)

Control behavior for train stops.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [priority_signal](#priority-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [read_from_train](#read-from-train) | [boolean](../concepts/boolean.md) |  |
| [read_stopped_train](#read-stopped-train) | [boolean](../concepts/boolean.md) |  |
| [read_trains_count](#read-trains-count) | [boolean](../concepts/boolean.md) |  |
| [send_to_train](#send-to-train) | [boolean](../concepts/boolean.md) |  |
| [set_priority](#set-priority) | [boolean](../concepts/boolean.md) |  |
| [set_trains_limit](#set-trains-limit) | [boolean](../concepts/boolean.md) |  |
| [stopped_train_signal](#stopped-train-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [trains_count_signal](#trains-count-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [trains_limit_signal](#trains-limit-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### priority_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

The signal to be used by set-priority change priority of the train stop

### read_from_train

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the train stop should send the train contents to the circuit network.

### read_stopped_train

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the train stop should send the stopped train id to the circuit network.

### read_trains_count

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the train stop should send amount of incoming trains to the circuit network.

### send_to_train

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the train stop should send the circuit network contents to the train to use.

### set_priority

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the priority_signal is used to set a priority of the train stop.

### set_trains_limit

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the trains_limit_signal is used to set a limit of trains incoming for train stop.

### stopped_train_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

The signal that will be sent when using the send-train-id option.

### trains_count_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

The signal that will be sent when using the read-trains-count option.

### trains_limit_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

The signal to be used by set-trains-limit to limit amount of incoming trains

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
