# on_player_selected_area

_event_

Called after a player selects an area with a selection-tool item.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [area](#area) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [entities](#entities) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [item](#item) | [string](../concepts/string.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [quality](#quality) | [string](../concepts/string.md) |  |
| [surface](#surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [tiles](#tiles) | array[[LuaTile](../classes/LuaTile.md)] |  |

### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The area selected.

### entities

**Type:** array[[LuaEntity](../classes/LuaEntity.md)]

The entities selected.

### item

**Type:** [string](../concepts/string.md)

The item used to select the area.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player doing the selection.

### quality

**Type:** [string](../concepts/string.md)

The item quality used to select the area.

### surface

**Type:** [LuaSurface](../classes/LuaSurface.md)

The surface selected.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### tiles

**Type:** array[[LuaTile](../classes/LuaTile.md)]

The tiles selected.
