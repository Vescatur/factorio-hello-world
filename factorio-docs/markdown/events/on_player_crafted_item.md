# on_player_crafted_item

_event_

Called when the player finishes crafting an item. This event fires just before the results are inserted into the player's inventory, not when the crafting is queued (see [on_pre_player_crafted_item](../events/on_pre_player_crafted_item.md)).

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [item_stack](#item-stack) | [LuaItemStack](../classes/LuaItemStack.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [recipe](#recipe) | [LuaRecipe](../classes/LuaRecipe.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### item_stack

**Type:** [LuaItemStack](../classes/LuaItemStack.md)

The item that has been crafted.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player doing the crafting.

### recipe

**Type:** [LuaRecipe](../classes/LuaRecipe.md)

The recipe used to craft this item.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
