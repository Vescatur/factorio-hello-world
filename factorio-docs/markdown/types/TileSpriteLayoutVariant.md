# TileSpriteLayoutVariant

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [uint8](../types/uint8.md) | yes |
| [line_length](#line-length) | [uint8](../types/uint8.md) | yes |
| [scale](#scale) | [float](../types/float.md) | yes |
| [spritesheet](#spritesheet) | [FileName](../types/FileName.md) | yes |
| [tile_height](#tile-height) | [uint8](../types/uint8.md) | yes |
| [x](#x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [y](#y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |

### count

**Type:** [uint8](../types/uint8.md) · _optional_

Frame count.

### line_length

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Once the specified number of pictures is loaded, other pictures are loaded on other line. This is to allow having longer animations in matrix, to input files with too high width. The game engine limits the width of any input files to 8192px, so it is compatible with most graphics cards. 0 means that all the pictures are in one horizontal line.

### scale

**Type:** [float](../types/float.md) · _optional_

### spritesheet

**Type:** [FileName](../types/FileName.md) · _optional_

### tile_height

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Height of the transition sprite in tiles. May be 1 or 2. It is forced to 1 for mask layers and for o_transition. A tile is considered 32px with scale 1 (so 64px with scale 0.5). Shift of the sprite will be adjusted such that the top 1x1 tile is centered on a tile being drawn (so it will be 
```
{0, 0.5*(tile_height - 1)}
```
) It can be anything between 1 to 8 for `background` layer if `draw_background_layer_under_tiles` is set to true.

### x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Horizontal position of the sprite in the source file in pixels.

### y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Vertical position of the sprite in the source file in pixels.
