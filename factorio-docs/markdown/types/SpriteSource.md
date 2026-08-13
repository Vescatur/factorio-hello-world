# SpriteSource

_type_ · **abstract**

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_forced_downscale](#allow-forced-downscale) | [boolean](../types/boolean.md) | yes |
| [color_channels](#color-channels) | `1` ∣ `2` ∣ `3` ∣ `4` | yes |
| [filename](#filename) | [FileName](../types/FileName.md) |  |
| [height](#height) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [load_in_minimal_mode](#load-in-minimal-mode) | [boolean](../types/boolean.md) | yes |
| [position](#position) | tuple[[SpriteSizeType](../types/SpriteSizeType.md), [SpriteSizeType](../types/SpriteSizeType.md)] | yes |
| [premul_alpha](#premul-alpha) | [boolean](../types/boolean.md) | yes |
| [size](#size) | [SpriteSizeType](../types/SpriteSizeType.md) ∣ tuple[[SpriteSizeType](../types/SpriteSizeType.md), [SpriteSizeType](../types/SpriteSizeType.md)] | yes |
| [width](#width) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [x](#x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [y](#y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |

### allow_forced_downscale

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, the sprite may be downsampled to half its size on load even when 'Sprite quality' graphics setting is set to 'High'. Whether downsampling happens depends on detected hardware and other graphics settings.

### color_channels

**Type:** `1` ∣ `2` ∣ `3` ∣ `4` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 4}`

All textures have 4 channels by default. This property can be used for no-atlas textures to force their format to R, RG, RGB or RGBA with 8 bytes for each channel and save VRAM space. Compression setting is based on player config.

We use BC4 compression for R, BC5 for RG, BC1 for RGB, and DXT5_BC3 for RGBA, see "[S3 Texture Compression](https://en.wikipedia.org/wiki/S3_Texture_Compression)" to read more about compression ratios.

### filename

**Type:** [FileName](../types/FileName.md)

The path to the sprite file to use.

### height

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Mandatory if `size` is not defined.

Height of the sprite in pixels, from 0-4096.

### load_in_minimal_mode

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Minimal mode is entered when mod loading fails. You are in it when you see the gray box after (part of) the loading screen that tells you a mod error. Modders can ignore this property.

### position

**Type:** tuple[[SpriteSizeType](../types/SpriteSizeType.md), [SpriteSizeType](../types/SpriteSizeType.md)] · _optional_

Loaded only when `x` and `y` are both `0`. The first member of the tuple is `x` and the second is `y`.

### premul_alpha

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether alpha should be pre-multiplied.

### size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) ∣ tuple[[SpriteSizeType](../types/SpriteSizeType.md), [SpriteSizeType](../types/SpriteSizeType.md)] · _optional_

The width and height of the sprite. If this is a tuple, the first member of the tuple is the width and the second is the height. Otherwise the size is both width and height. Width and height may only be in the range of 0-4096.

### width

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Mandatory if `size` is not defined.

Width of the sprite in pixels, from 0-4096.

### x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Horizontal position of the sprite in the source file in pixels.

### y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Vertical position of the sprite in the source file in pixels.
