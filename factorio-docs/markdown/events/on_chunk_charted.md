# on_chunk_charted

_event_

Called when a chunk is charted or re-charted.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [area](#area) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [position](#position) | [ChunkPosition](../concepts/ChunkPosition.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

Area of the chunk.

### force

**Type:** [LuaForce](../classes/LuaForce.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

### surface_index

**Type:** [uint32](../concepts/uint32.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
