# TileLightPictures

_type_

**Inherits from:** [TileSpriteLayout](../types/TileSpriteLayout.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [size](#size) | [uint32](../types/uint32.md) |  |

### size

**Type:** [uint32](../types/uint32.md)

Only powers of 2 from 1 to 128 can be used. Square size of the tile arrangement this sprite is used for. Used to calculate the `width` and `height` of the sprite which cannot be set directly. (width or height) = size * 32 / scale.
