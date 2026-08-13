# LuaCombinatorControlBehavior

_class_ · **abstract**

**Inherits from:** [LuaControlBehavior](../classes/LuaControlBehavior.md)

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [signals_last_tick](#signals-last-tick) | array[[Signal](../concepts/Signal.md)] |  |

### signals_last_tick

**Read:** array[[Signal](../concepts/Signal.md)] · _read-only_

The circuit network signals sent by this combinator last tick.

## Methods

| Method | Summary |
| --- | --- |
| [get_signal_last_tick](#get-signal-last-tick) | Gets the value of a specific signal sent by this combinator behavior last tick or `nil` if the signal didn't exist. |

### get_signal_last_tick

`get_signal_last_tick(signal)`

Gets the value of a specific signal sent by this combinator behavior last tick or `nil` if the signal didn't exist.

#### Parameters

##### signal

**Type:** [SignalID](../concepts/SignalID.md)

The signal to get

#### Return values

- [int32](../concepts/int32.md) _(optional)_
