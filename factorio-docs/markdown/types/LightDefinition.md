# LightDefinition

_type_

Specifies a light source. This is loaded either as a single light source or as an array of light sources.

**Examples:**

```
-- The light of the orange state of the rail signal
orange_light = {intensity = 0.2, size = 4, color={r=1, g=0.5}}
```

```
-- The front lights of the car
light =
{
  {
    type = "oriented",
    minimum_darkness = 0.3,
    picture =
    {
      filename = "__core__/graphics/light-cone.png",
      priority = "extra-high",
      flags = { "light" },
      scale = 2,
      width = 200,
      height = 200
    },
    shift = {-0.6, -14},
    size = 2,
    intensity = 0.6,
    color = {r = 0.92, g = 0.77, b = 0.3}
  },
  {
    type = "oriented",
    minimum_darkness = 0.3,
    picture =
    {
      filename = "__core__/graphics/light-cone.png",
      priority = "extra-high",
      flags = { "light" },
      scale = 2,
      width = 200,
      height = 200
    },
    shift = {0.6, -14},
    size = 2,
    intensity = 0.6,
    color = {r = 0.92, g = 0.77, b = 0.3}
  }
}
```

**Definition:** struct (see properties below) ∣ array[struct (see properties below)]

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [add_perspective](#add-perspective) | [boolean](../types/boolean.md) | yes |
| [color](#color) | [Color](../types/Color.md) | yes |
| [flicker_interval](#flicker-interval) | [uint8](../types/uint8.md) | yes |
| [flicker_max_modifier](#flicker-max-modifier) | [float](../types/float.md) | yes |
| [flicker_min_modifier](#flicker-min-modifier) | [float](../types/float.md) | yes |
| [intensity](#intensity) | [float](../types/float.md) |  |
| [minimum_darkness](#minimum-darkness) | [float](../types/float.md) | yes |
| [offset_flicker](#offset-flicker) | [boolean](../types/boolean.md) | yes |
| [picture](#picture) | [Sprite](../types/Sprite.md) | yes |
| [rotation_shift](#rotation-shift) | [RealOrientation](../types/RealOrientation.md) | yes |
| [shift](#shift) | [Vector](../types/Vector.md) | yes |
| [size](#size) | [float](../types/float.md) |  |
| [source_orientation_offset](#source-orientation-offset) | [RealOrientation](../types/RealOrientation.md) | yes |
| [type](#type) | `"basic"` ∣ `"oriented"` | yes |

### add_perspective

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{r=1, g=1, b=1}``

Color of the light.

### flicker_interval

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### flicker_max_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `flicker_min_modifier``

### flicker_min_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### intensity

**Type:** [float](../types/float.md)

Brightness of the light in the range `[0, 1]`, where `0` is no light and `1` is the maximum light.

### minimum_darkness

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### offset_flicker

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Offsets tick used to calculate flicker by position hash. Useful to desynchronize flickering of multiple stationary lights.

### picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

Only loaded, and mandatory if `type` is `"oriented"`.

### rotation_shift

**Type:** [RealOrientation](../types/RealOrientation.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `type` is `"oriented"`.

### shift

**Type:** [Vector](../types/Vector.md) · _optional_

### size

**Type:** [float](../types/float.md)

The radius of the light in tiles. Note that the light gets darker near the edges, so the effective size of the light will appear to be smaller.

### source_orientation_offset

**Type:** [RealOrientation](../types/RealOrientation.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### type

**Type:** `"basic"` ∣ `"oriented"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'basic'}`
