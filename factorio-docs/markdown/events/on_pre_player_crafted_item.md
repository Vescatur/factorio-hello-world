# on_pre_player_crafted_item

_event_

Called when a player queues something to be crafted.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [items](#items) | [LuaInventory](../classes/LuaInventory.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [queued_count](#queued-count) | [uint32](../concepts/uint32.md) |  |
| [recipe](#recipe) | [LuaRecipe](../classes/LuaRecipe.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### items

**Type:** [LuaInventory](../classes/LuaInventory.md)

The items removed from the players inventory to do the crafting.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player doing the crafting.

### queued_count

**Type:** [uint32](../concepts/uint32.md)

The number of times the recipe is being queued.

### recipe

**Type:** [LuaRecipe](../classes/LuaRecipe.md)

The recipe being queued.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
