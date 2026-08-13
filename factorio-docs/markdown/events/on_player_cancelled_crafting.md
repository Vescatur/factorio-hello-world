# on_player_cancelled_crafting

_event_

Called when a player cancels crafting.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cancel_count](#cancel-count) | [uint32](../concepts/uint32.md) |  |
| [items](#items) | [LuaInventory](../classes/LuaInventory.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [recipe](#recipe) | [LuaRecipe](../classes/LuaRecipe.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cancel_count

**Type:** [uint32](../concepts/uint32.md)

The number of crafts that have been cancelled.

### items

**Type:** [LuaInventory](../classes/LuaInventory.md)

The crafting items returned to the player's inventory.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player that did the crafting.

### recipe

**Type:** [LuaRecipe](../classes/LuaRecipe.md)

The recipe that has been cancelled.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
