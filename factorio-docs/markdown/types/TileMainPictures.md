# TileMainPictures

_type_

**Inherits from:** [TileSpriteLayout](../types/TileSpriteLayout.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [probability](#probability) | [double](../types/double.md) | yes |
| [size](#size) | [uint32](../types/uint32.md) |  |
| [weights](#weights) | array[[double](../types/double.md)] | yes |

### probability

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Probability of 1x1 (size = 1) version of tile must be 1.

### size

**Type:** [uint32](../types/uint32.md)

Only powers of 2 from 1 to 128 can be used. Square size of the tile arrangement this sprite is used for. Used to calculate the `width` and `height` of the sprite which cannot be set directly. (width or height) = size * 32 / scale.

### weights

**Type:** array[[double](../types/double.md)] · _optional_
