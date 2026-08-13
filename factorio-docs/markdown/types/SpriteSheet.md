# SpriteSheet

_type_

**Inherits from:** [SpriteParameters](../types/SpriteParameters.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [dice](#dice) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [dice_x](#dice-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [dice_y](#dice-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [filename](#filename) | [FileName](../types/FileName.md) | yes |
| [filenames](#filenames) | array[[FileName](../types/FileName.md)] | yes |
| [layers](#layers) | array[[SpriteSheet](../types/SpriteSheet.md)] | yes |
| [line_length](#line-length) | [uint32](../types/uint32.md) | yes |
| [lines_per_file](#lines-per-file) | [uint32](../types/uint32.md) | yes |
| [repeat_count](#repeat-count) | [uint32](../types/uint32.md) | yes |
| [variation_count](#variation-count) | [uint32](../types/uint32.md) | yes |

### dice

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Number of slices this is sliced into when using the "optimized atlas packing" option. If you are a modder, you can just ignore this property. Example: If this is 4, the sprite will be sliced into a 4x4 grid.

### dice_x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Same as `dice` above, but this specifies only how many slices there are on the x axis.

### dice_y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Same as `dice` above, but this specifies only how many slices there are on the y axis.

### filename

**Type:** [FileName](../types/FileName.md) · _optional_ · _overrides parent_

Only loaded, and mandatory if `layers` and `filenames` are not defined.

The path to the sprite file to use.

### filenames

**Type:** array[[FileName](../types/FileName.md)] · _optional_

### layers

**Type:** array[[SpriteSheet](../types/SpriteSheet.md)] · _optional_

If this property is present, all SpriteSheet definitions have to be placed as entries in the array, and they will all be loaded from there. `layers` may not be an empty table. Each definition in the array may also have the `layers` property.

If this property is present, all other properties, including those inherited from SpriteParameters, are ignored.

### line_length

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `Value of `variation_count``

### lines_per_file

**Type:** [uint32](../types/uint32.md) · _optional_

Mandatory if `filenames` is defined.

### repeat_count

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### variation_count

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`
