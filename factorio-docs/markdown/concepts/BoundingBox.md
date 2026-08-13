# BoundingBox

_concept_

Two positions, specifying the top-left and bottom-right corner of the box respectively. Like with [MapPosition](../concepts/MapPosition.md), the names of the members may be omitted. When read from the game, the third member `orientation` is present if it is non-zero.

**Examples:**

```
-- Explicit definition
{left_top = {x = -2, y = -3}, right_bottom = {x = 5, y = 8}}
```

```
-- Shorthand
{{-2, -3}, {5, 8}}
```

**Definition:** table{left_top, orientation, right_bottom} ∣ tuple[[MapPosition](../concepts/MapPosition.md), [MapPosition](../concepts/MapPosition.md)]
