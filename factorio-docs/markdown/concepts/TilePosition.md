# TilePosition

_concept_

Coordinates of a tile on a [LuaSurface](../classes/LuaSurface.md) where each integer `x`/`y` represents a different tile. This uses the same format as [MapPosition](../concepts/MapPosition.md), except it rounds any non-integer `x`/`y` down to whole numbers. It can be specified either with or without explicit keys.

**Definition:** table{x, y} ∣ tuple[[int32](../concepts/int32.md), [int32](../concepts/int32.md)]
