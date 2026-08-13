# RotatedSpriteFrame

_type_

Specifies frame-specific properties of an individual sprite within a RotatedSprite set. Some properties are absolute values, and some are relative and inherited from the parent RotatedSprite prototype definition.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [height](#height) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [shift](#shift) | [Vector](../types/Vector.md) | yes |
| [width](#width) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [x](#x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [y](#y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |

### height

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `inherited height`

Height of the sprite in pixels, from 0-4096. If not defined, inherits the height of the parent RotatedSprite.

### shift

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``

The shift in tiles of this specific frame, relative to the shift of the parent RotatedSprite. `util.by_pixel()` can be used to divide the shift by 32 which is the usual pixel height/width of 1 tile in normal resolution. Note that 32 pixel tile height/width is not enforced anywhere - any other tile height or width is also possible.

### width

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `inherited width`

Width of the sprite in pixels, from 0-4096. If not defined, inherits the width of the parent RotatedSprite.

### x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The horizontal offset of the sprite relative to its specific frame within the parent RotatedSprite.

### y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The vertical offset of the sprite relative to its specific frame within the parent RotatedSprite.
