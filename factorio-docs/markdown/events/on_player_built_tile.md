# on_player_built_tile

_event_

Called after a player builds tiles.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [inventory](#inventory) | [LuaInventory](../classes/LuaInventory.md) | yes |
| [item](#item) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [tile](#tile) | [LuaTilePrototype](../classes/LuaTilePrototype.md) |  |
| [tiles](#tiles) | array[[OldTileAndPosition](../concepts/OldTileAndPosition.md)] |  |

### inventory

**Type:** [LuaInventory](../classes/LuaInventory.md) · _optional_

The inventory containing the items used to build the tiles.

### item

**Type:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _optional_

The item type used to build the tiles

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _optional_

The quality of the item used to build the tiles

### surface_index

**Type:** [uint32](../concepts/uint32.md)

The surface the tile(s) were built on.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### tile

**Type:** [LuaTilePrototype](../classes/LuaTilePrototype.md)

The tile prototype that was placed.

### tiles

**Type:** array[[OldTileAndPosition](../concepts/OldTileAndPosition.md)]

The position data.
