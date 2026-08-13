# ChunkPosition

_concept_

Coordinates of a chunk in a [LuaSurface](../classes/LuaSurface.md) where each integer `x`/`y` represents a different chunk. This uses the same format as [MapPosition](../concepts/MapPosition.md), meaning it can be specified either with or without explicit keys. A [MapPosition](../concepts/MapPosition.md) can be translated to a ChunkPosition by dividing the `x`/`y` values by 32.

**Definition:** table{x, y} ∣ tuple[[int32](../concepts/int32.md), [int32](../concepts/int32.md)]
