# BoundingBox

_type_

BoundingBoxes are typically centered around the position of an entity.

BoundingBoxes are usually specified with the short-hand notation of passing an array of exactly 2 or 3 items.

The first tuple item is left_top, the second tuple item is right_bottom. The third tuple item is a [float](../types/float.md) that represents the orientation.

Positive x goes towards east, positive y goes towards south. This means that the upper-left point is the least dimension in x and y, and lower-right is the greatest.

**Examples:**

```
{{-0.4, -0.4}, {0.4, 0.4}}
```

```
-- long definition
{left_top = {x = -2, y = -3}, right_bottom = {x = 5, y = 8}}
```

**Definition:** struct (see properties below) ∣ tuple[[MapPosition](../types/MapPosition.md), [MapPosition](../types/MapPosition.md)] ∣ tuple[[MapPosition](../types/MapPosition.md), [MapPosition](../types/MapPosition.md), [RealOrientation](../types/RealOrientation.md)]

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [left_top](#left-top) | [MapPosition](../types/MapPosition.md) |  |
| [orientation](#orientation) | [RealOrientation](../types/RealOrientation.md) | yes |
| [right_bottom](#right-bottom) | [MapPosition](../types/MapPosition.md) |  |

### left_top

**Type:** [MapPosition](../types/MapPosition.md)

### orientation

**Type:** [RealOrientation](../types/RealOrientation.md) · _optional_

### right_bottom

**Type:** [MapPosition](../types/MapPosition.md)
