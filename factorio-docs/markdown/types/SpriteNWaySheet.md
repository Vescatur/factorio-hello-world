# SpriteNWaySheet

_type_

**Inherits from:** [SpriteParameters](../types/SpriteParameters.md)

**Example:**

```
sheet =
{
  filename = "__base__/graphics/entity/burner-inserter/burner-inserter-platform.png",
  priority = "extra-high",
  width = 105,
  height = 79,
  shift = util.by_pixel(1.5, 7.5-1),
  scale = 0.5
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [frame_repeat](#frame-repeat) | [uint32](../types/uint32.md) | yes |
| [frames](#frames) | [uint32](../types/uint32.md) | yes |
| [generate_sdf](#generate-sdf) | [boolean](../types/boolean.md) | yes |

### frame_repeat

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Specifies for how many directions each frame is used. Silently forced to always be at least `1`.

### frames

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `4 if used in Sprite4Way, 8 if used in Sprite8Way`

Specifies how many of the directions of the SpriteNWay are filled up with this sheet.

### generate_sdf

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Unused.
