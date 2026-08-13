# on_chunk_generated

_event_

Called when a chunk is generated.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [area](#area) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [position](#position) | [ChunkPosition](../concepts/ChunkPosition.md) |  |
| [surface](#surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

Area of the chunk.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

Position of the chunk.

### surface

**Type:** [LuaSurface](../classes/LuaSurface.md)

The surface the chunk is on.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
