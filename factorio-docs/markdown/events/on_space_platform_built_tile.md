# on_space_platform_built_tile

_event_

Called after a space platform builds tiles.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [inventory](#inventory) | [LuaInventory](../classes/LuaInventory.md) |  |
| [item](#item) | [LuaItemPrototype](../classes/LuaItemPrototype.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [platform](#platform) | [LuaSpacePlatform](../classes/LuaSpacePlatform.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [tile](#tile) | [LuaTilePrototype](../classes/LuaTilePrototype.md) |  |
| [tiles](#tiles) | array[[OldTileAndPosition](../concepts/OldTileAndPosition.md)] |  |

### inventory

**Type:** [LuaInventory](../classes/LuaInventory.md)

The inventory containing the stacks used to build the tiles.

### item

**Type:** [LuaItemPrototype](../classes/LuaItemPrototype.md)

The item type used to build the tiles.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### platform

**Type:** [LuaSpacePlatform](../classes/LuaSpacePlatform.md)

The platform.

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

The quality the item used to build the tiles.

### surface_index

**Type:** [uint32](../concepts/uint32.md)

The surface the tile(s) are build on.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### tile

**Type:** [LuaTilePrototype](../classes/LuaTilePrototype.md)

The tile prototype that was placed.

### tiles

**Type:** array[[OldTileAndPosition](../concepts/OldTileAndPosition.md)]

The position data.
