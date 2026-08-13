# on_picked_up_item

_event_

Called when a player picks up an item.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [item_stack](#item-stack) | [ItemWithQualityCount](../concepts/ItemWithQualityCount.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### item_stack

**Type:** [ItemWithQualityCount](../concepts/ItemWithQualityCount.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
