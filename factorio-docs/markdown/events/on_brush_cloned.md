# on_brush_cloned

_event_

Called when a set of positions on the map is cloned.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [clear_destination_decoratives](#clear-destination-decoratives) | [boolean](../concepts/boolean.md) |  |
| [clear_destination_entities](#clear-destination-entities) | [boolean](../concepts/boolean.md) |  |
| [clone_decoratives](#clone-decoratives) | [boolean](../concepts/boolean.md) |  |
| [clone_entities](#clone-entities) | [boolean](../concepts/boolean.md) |  |
| [clone_tiles](#clone-tiles) | [boolean](../concepts/boolean.md) |  |
| [destination_force](#destination-force) | [LuaForce](../classes/LuaForce.md) | yes |
| [destination_offset](#destination-offset) | [TilePosition](../concepts/TilePosition.md) |  |
| [destination_surface](#destination-surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [source_offset](#source-offset) | [TilePosition](../concepts/TilePosition.md) |  |
| [source_positions](#source-positions) | array[[TilePosition](../concepts/TilePosition.md)] |  |
| [source_surface](#source-surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### clear_destination_decoratives

**Type:** [boolean](../concepts/boolean.md)

### clear_destination_entities

**Type:** [boolean](../concepts/boolean.md)

### clone_decoratives

**Type:** [boolean](../concepts/boolean.md)

### clone_entities

**Type:** [boolean](../concepts/boolean.md)

### clone_tiles

**Type:** [boolean](../concepts/boolean.md)

### destination_force

**Type:** [LuaForce](../classes/LuaForce.md) · _optional_

### destination_offset

**Type:** [TilePosition](../concepts/TilePosition.md)

### destination_surface

**Type:** [LuaSurface](../classes/LuaSurface.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### source_offset

**Type:** [TilePosition](../concepts/TilePosition.md)

### source_positions

**Type:** array[[TilePosition](../concepts/TilePosition.md)]

### source_surface

**Type:** [LuaSurface](../classes/LuaSurface.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
