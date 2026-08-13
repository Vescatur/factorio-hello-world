# on_train_schedule_changed

_event_

Called when a trains schedule is changed either by the player or through script.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [train](#train) | [LuaTrain](../classes/LuaTrain.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player who made the change if any.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### train

**Type:** [LuaTrain](../classes/LuaTrain.md)
