# TileSpriteLayout

_type_ · **abstract**

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [uint8](../types/uint8.md) | yes |
| [line_length](#line-length) | [uint8](../types/uint8.md) | yes |
| [picture](#picture) | [FileName](../types/FileName.md) |  |
| [scale](#scale) | [float](../types/float.md) | yes |
| [x](#x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [y](#y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |

### count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Frame count.

### line_length

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Once the specified number of pictures is loaded, other pictures are loaded on other line. This is to allow having longer animations in matrix, to input files with too high width. The game engine limits the width of any input files to 8192px, so it is compatible with most graphics cards. 0 means that all the pictures are in one horizontal line.

### picture

**Type:** [FileName](../types/FileName.md)

### scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Horizontal position of the sprite in the source file in pixels.

### y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Vertical position of the sprite in the source file in pixels.
