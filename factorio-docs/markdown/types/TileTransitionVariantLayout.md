# TileTransitionVariantLayout

_type_

**Inherits from:** [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md)

The properties from the parent TileSpriteLayoutVariant provide defaults for the properties defined here.

The `{inner_corner | outer_corner | side | double_side | u_transition | o_transition}_*` properties provide defaults for the properties inside the specific variant. They are used to specify select values for the variant without creating the table for the variant.

These various ways to define the variants are also shown in the examples below.

**Examples:**

```
-- longest version, using TileSpriteLayoutVariant tables for each variant
{
  inner_corner =
  {
    scale = 0.5,
    count = 8,
  },
  outer_corner =
  {
    scale = 0.5,
    count = 8,
    x = 576
  },
  u_transition  =
  {
    scale = 0.5,
    count = 1,
    x = 1728
  },
  [...]
}
```

```
-- The above version is quite verbose, scale is duplicated in each variant layout.
-- So it is possible to define default value of each property of TileSpriteLayoutVariant directly in TileTransitionVariantLayout:
{
  scale = 0.5,
  inner_corner =
  {
    count = 8,
  },
  outer_corner =
  {
    count = 8,
    x = 576
  },
  u_transition  =
  {
    count = 1,
    x = 1728
  },
  [...]
}
```

```
-- The above version is creating a table to just specify inner_corner has 8 count. It can be shorter by using variant prefix properties:
{
  scale = 0.5,
  inner_corner_count = 8,
  outer_corner_count = 8,
  u_transition_count = 1,
  outer_corner_x = 576,
  u_transition_x = 1728,
  [...]
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [double_side](#double-side) | [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) | yes |
| [double_side_count](#double-side-count) | [uint8](../types/uint8.md) | yes |
| [double_side_line_length](#double-side-line-length) | [uint8](../types/uint8.md) | yes |
| [double_side_scale](#double-side-scale) | [float](../types/float.md) | yes |
| [double_side_tile_height](#double-side-tile-height) | [uint8](../types/uint8.md) | yes |
| [double_side_x](#double-side-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [double_side_y](#double-side-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [inner_corner](#inner-corner) | [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) | yes |
| [inner_corner_count](#inner-corner-count) | [uint8](../types/uint8.md) | yes |
| [inner_corner_line_length](#inner-corner-line-length) | [uint8](../types/uint8.md) | yes |
| [inner_corner_scale](#inner-corner-scale) | [float](../types/float.md) | yes |
| [inner_corner_tile_height](#inner-corner-tile-height) | [uint8](../types/uint8.md) | yes |
| [inner_corner_x](#inner-corner-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [inner_corner_y](#inner-corner-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [o_transition](#o-transition) | [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) | yes |
| [o_transition_count](#o-transition-count) | [uint8](../types/uint8.md) | yes |
| [o_transition_line_length](#o-transition-line-length) | [uint8](../types/uint8.md) | yes |
| [o_transition_scale](#o-transition-scale) | [float](../types/float.md) | yes |
| [o_transition_tile_height](#o-transition-tile-height) | [uint8](../types/uint8.md) | yes |
| [o_transition_x](#o-transition-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [o_transition_y](#o-transition-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [outer_corner](#outer-corner) | [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) | yes |
| [outer_corner_count](#outer-corner-count) | [uint8](../types/uint8.md) | yes |
| [outer_corner_line_length](#outer-corner-line-length) | [uint8](../types/uint8.md) | yes |
| [outer_corner_scale](#outer-corner-scale) | [float](../types/float.md) | yes |
| [outer_corner_tile_height](#outer-corner-tile-height) | [uint8](../types/uint8.md) | yes |
| [outer_corner_x](#outer-corner-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [outer_corner_y](#outer-corner-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [side](#side) | [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) | yes |
| [side_count](#side-count) | [uint8](../types/uint8.md) | yes |
| [side_line_length](#side-line-length) | [uint8](../types/uint8.md) | yes |
| [side_scale](#side-scale) | [float](../types/float.md) | yes |
| [side_tile_height](#side-tile-height) | [uint8](../types/uint8.md) | yes |
| [side_x](#side-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [side_y](#side-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [u_transition](#u-transition) | [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) | yes |
| [u_transition_count](#u-transition-count) | [uint8](../types/uint8.md) | yes |
| [u_transition_line_length](#u-transition-line-length) | [uint8](../types/uint8.md) | yes |
| [u_transition_scale](#u-transition-scale) | [float](../types/float.md) | yes |
| [u_transition_tile_height](#u-transition-tile-height) | [uint8](../types/uint8.md) | yes |
| [u_transition_x](#u-transition-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [u_transition_y](#u-transition-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [x_offset](#x-offset) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [y_offset](#y-offset) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |

### double_side

**Type:** [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) · _optional_

Defaults to the values set in the `double_side_*` properties.

### double_side_count

**Type:** [uint8](../types/uint8.md) · _optional_

### double_side_line_length

**Type:** [uint8](../types/uint8.md) · _optional_

### double_side_scale

**Type:** [float](../types/float.md) · _optional_

### double_side_tile_height

**Type:** [uint8](../types/uint8.md) · _optional_

### double_side_x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Horizontal position of the sprite in the source file in pixels.

### double_side_y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Vertical position of the sprite in the source file in pixels.

### inner_corner

**Type:** [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) · _optional_

Defaults to the values set in the `inner_corner_*` properties.

### inner_corner_count

**Type:** [uint8](../types/uint8.md) · _optional_

### inner_corner_line_length

**Type:** [uint8](../types/uint8.md) · _optional_

### inner_corner_scale

**Type:** [float](../types/float.md) · _optional_

### inner_corner_tile_height

**Type:** [uint8](../types/uint8.md) · _optional_

### inner_corner_x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Horizontal position of the sprite in the source file in pixels.

### inner_corner_y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Vertical position of the sprite in the source file in pixels.

### o_transition

**Type:** [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) · _optional_

Defaults to the values set in the `o_transition_*` properties.

### o_transition_count

**Type:** [uint8](../types/uint8.md) · _optional_

### o_transition_line_length

**Type:** [uint8](../types/uint8.md) · _optional_

### o_transition_scale

**Type:** [float](../types/float.md) · _optional_

### o_transition_tile_height

**Type:** [uint8](../types/uint8.md) · _optional_

### o_transition_x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Horizontal position of the sprite in the source file in pixels.

### o_transition_y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Vertical position of the sprite in the source file in pixels.

### outer_corner

**Type:** [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) · _optional_

Defaults to the values set in the `outer_corner_*` properties.

### outer_corner_count

**Type:** [uint8](../types/uint8.md) · _optional_

### outer_corner_line_length

**Type:** [uint8](../types/uint8.md) · _optional_

### outer_corner_scale

**Type:** [float](../types/float.md) · _optional_

### outer_corner_tile_height

**Type:** [uint8](../types/uint8.md) · _optional_

### outer_corner_x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Horizontal position of the sprite in the source file in pixels.

### outer_corner_y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Vertical position of the sprite in the source file in pixels.

### side

**Type:** [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) · _optional_

Defaults to the values set in the `side_*` properties.

### side_count

**Type:** [uint8](../types/uint8.md) · _optional_

### side_line_length

**Type:** [uint8](../types/uint8.md) · _optional_

### side_scale

**Type:** [float](../types/float.md) · _optional_

### side_tile_height

**Type:** [uint8](../types/uint8.md) · _optional_

### side_x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Horizontal position of the sprite in the source file in pixels.

### side_y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Vertical position of the sprite in the source file in pixels.

### u_transition

**Type:** [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md) · _optional_

Defaults to the values set in the `u_transition_*` properties.

### u_transition_count

**Type:** [uint8](../types/uint8.md) · _optional_

### u_transition_line_length

**Type:** [uint8](../types/uint8.md) · _optional_

### u_transition_scale

**Type:** [float](../types/float.md) · _optional_

### u_transition_tile_height

**Type:** [uint8](../types/uint8.md) · _optional_

### u_transition_x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Horizontal position of the sprite in the source file in pixels.

### u_transition_y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Vertical position of the sprite in the source file in pixels.

### x_offset

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### y_offset

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
