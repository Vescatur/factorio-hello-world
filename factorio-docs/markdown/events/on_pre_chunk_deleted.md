# on_pre_chunk_deleted

_event_

Called before one or more chunks are deleted using [LuaSurface::delete_chunk](../classes/LuaSurface.md#delete-chunk).

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [positions](#positions) | array[[ChunkPosition](../concepts/ChunkPosition.md)] |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### positions

**Type:** array[[ChunkPosition](../concepts/ChunkPosition.md)]

The chunks to be deleted.

### surface_index

**Type:** [uint32](../concepts/uint32.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
