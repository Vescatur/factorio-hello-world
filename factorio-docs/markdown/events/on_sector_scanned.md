# on_sector_scanned

_event_

Called when an entity of type `radar` finishes scanning a sector.

**Filter:** [LuaSectorScannedEventFilter](../concepts/LuaSectorScannedEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [area](#area) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [chunk_position](#chunk-position) | [ChunkPosition](../concepts/ChunkPosition.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [radar](#radar) | [LuaEntity](../classes/LuaEntity.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

Area of the scanned chunk.

### chunk_position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

The chunk scanned.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### radar

**Type:** [LuaEntity](../classes/LuaEntity.md)

The radar that did the scanning.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
