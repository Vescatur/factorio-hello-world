# EquipmentShape

_type_

The shape and dimensions of an equipment module.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [height](#height) | [uint32](../types/uint32.md) |  |
| [points](#points) | array[array[[uint32](../types/uint32.md)]] | yes |
| [type](#type) | `"full"` ∣ `"manual"` |  |
| [width](#width) | [uint32](../types/uint32.md) |  |

### height

**Type:** [uint32](../types/uint32.md)

### points

**Type:** array[array[[uint32](../types/uint32.md)]] · _optional_

Only used when when `type` is `"manual"`. Each inner array is a "position" inside width×height of the equipment. Each positions that is defined is a filled squares of the equipment shape. `{0, 0}` is the upper left corner of the equipment.

**Example:**

```
-- A set of points which fall within the width/height - can't be empty
points =
{
  {0, 0}, {1, 0}, {2, 0}, {3, 0},
  {0, 1},                 {3, 1},
  {0, 2},                 {3, 2},
  {0, 3}, {1, 3}, {2, 3}, {3, 3}
}
```

### type

**Type:** `"full"` ∣ `"manual"`

The shape. When using "manual", `points` must be defined.

### width

**Type:** [uint32](../types/uint32.md)
