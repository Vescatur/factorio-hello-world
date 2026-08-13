# SimpleBoundingBox

_type_

An axis aligned bounding box.

SimpleBoundingBoxes are usually specified with the short-hand notation of passing an array of exactly 2 numbers. The first position is left_top, the second position is right_bottom.

Positive x goes towards east, positive y goes towards south. This means that the upper-left point is the least dimension in x and y, and lower-right is the greatest.

**Examples:**

```
{{-0.4, -0.4}, {0.4, 0.4}}
```

```
-- long definition
{left_top = {x = -2, y = -3}, right_bottom = {x = 5, y = 8}}
```

**Definition:** struct (see properties below) ∣ tuple[[MapPosition](../types/MapPosition.md), [MapPosition](../types/MapPosition.md)]

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [left_top](#left-top) | [MapPosition](../types/MapPosition.md) |  |
| [right_bottom](#right-bottom) | [MapPosition](../types/MapPosition.md) |  |

### left_top

**Type:** [MapPosition](../types/MapPosition.md)

### right_bottom

**Type:** [MapPosition](../types/MapPosition.md)
