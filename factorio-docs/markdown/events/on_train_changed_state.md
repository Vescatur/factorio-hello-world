# on_train_changed_state

_event_

Called when a train changes state (started to stopped and vice versa)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_state](#old-state) | [defines.train_state](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [train](#train) | [LuaTrain](../classes/LuaTrain.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_state

**Type:** [defines.train_state](../defines/defines.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### train

**Type:** [LuaTrain](../classes/LuaTrain.md)
