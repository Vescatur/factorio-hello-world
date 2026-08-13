# TileTransitionSpritesheetLayout

_type_

**Inherits from:** [TileSpriteLayoutVariant](../types/TileSpriteLayoutVariant.md)

The properties from the parent TileSpriteLayoutVariant provide defaults for the TileTransitionVariantLayouts.

The `{inner_corner | outer_corner | side | double_side | u_transition | o_transition}_*` properties provide defaults for the corresponding properties in the TileTransitionVariantLayouts. They are used when the TileTransitionVariantLayouts have the same layout. See the example below.

**Example:**

```
-- all the layers use the same layout, at different offsets inside the spritesheet
layout =
{
  scale = 0.5,
  inner_corner_count = 8,
  outer_corner_count = 8,
  o_transition_count = 1,
  outer_corner_x = 576,
  u_transition_x = 1728,

  overlay = { y_offset = 0 },  -- 0 is default, but by defining overlay property, we enable the layer
  mask = { y_offset = 512 },
  background = { y_offset = 1024 }
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [auxiliary_effect_mask](#auxiliary-effect-mask) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [background](#background) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [background_mask](#background-mask) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [double_side_count](#double-side-count) | [uint8](../types/uint8.md) | yes |
| [double_side_line_length](#double-side-line-length) | [uint8](../types/uint8.md) | yes |
| [double_side_scale](#double-side-scale) | [float](../types/float.md) | yes |
| [double_side_tile_height](#double-side-tile-height) | [uint8](../types/uint8.md) | yes |
| [double_side_x](#double-side-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [double_side_y](#double-side-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [effect_map](#effect-map) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [inner_corner_count](#inner-corner-count) | [uint8](../types/uint8.md) | yes |
| [inner_corner_line_length](#inner-corner-line-length) | [uint8](../types/uint8.md) | yes |
| [inner_corner_scale](#inner-corner-scale) | [float](../types/float.md) | yes |
| [inner_corner_tile_height](#inner-corner-tile-height) | [uint8](../types/uint8.md) | yes |
| [inner_corner_x](#inner-corner-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [inner_corner_y](#inner-corner-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [lightmap](#lightmap) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [mask](#mask) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [o_transition_count](#o-transition-count) | [uint8](../types/uint8.md) | yes |
| [o_transition_line_length](#o-transition-line-length) | [uint8](../types/uint8.md) | yes |
| [o_transition_scale](#o-transition-scale) | [float](../types/float.md) | yes |
| [o_transition_tile_height](#o-transition-tile-height) | [uint8](../types/uint8.md) | yes |
| [o_transition_x](#o-transition-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [o_transition_y](#o-transition-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [outer_corner_count](#outer-corner-count) | [uint8](../types/uint8.md) | yes |
| [outer_corner_line_length](#outer-corner-line-length) | [uint8](../types/uint8.md) | yes |
| [outer_corner_scale](#outer-corner-scale) | [float](../types/float.md) | yes |
| [outer_corner_tile_height](#outer-corner-tile-height) | [uint8](../types/uint8.md) | yes |
| [outer_corner_x](#outer-corner-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [outer_corner_y](#outer-corner-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [overlay](#overlay) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [side_count](#side-count) | [uint8](../types/uint8.md) | yes |
| [side_line_length](#side-line-length) | [uint8](../types/uint8.md) | yes |
| [side_scale](#side-scale) | [float](../types/float.md) | yes |
| [side_tile_height](#side-tile-height) | [uint8](../types/uint8.md) | yes |
| [side_x](#side-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [side_y](#side-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [u_transition_count](#u-transition-count) | [uint8](../types/uint8.md) | yes |
| [u_transition_line_length](#u-transition-line-length) | [uint8](../types/uint8.md) | yes |
| [u_transition_scale](#u-transition-scale) | [float](../types/float.md) | yes |
| [u_transition_tile_height](#u-transition-tile-height) | [uint8](../types/uint8.md) | yes |
| [u_transition_x](#u-transition-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [u_transition_y](#u-transition-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |

### auxiliary_effect_mask

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Only loaded if [TileTransitions::auxiliary_effect_mask_layout](../types/TileTransitions.md#auxiliary-effect-mask-layout) is not defined in the TileTransitions that load this.

### background

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Only loaded if [TileTransitions::background_layout](../types/TileTransitions.md#background-layout) is not defined in the TileTransitions that load this.

### background_mask

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Only loaded if [TileTransitions::background_mask_layout](../types/TileTransitions.md#background-mask-layout) is not defined in the TileTransitions that load this.

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

### effect_map

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Only loaded if [TileTransitions::effect_map_layout](../types/TileTransitions.md#effect-map-layout) is not defined in the TileTransitions that load this.

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

### lightmap

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Only loaded if [TileTransitions::lightmap_layout](../types/TileTransitions.md#lightmap-layout) is not defined in the TileTransitions that load this.

### mask

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Only loaded if [TileTransitions::mask_layout](../types/TileTransitions.md#mask-layout) is not defined in the TileTransitions that load this.

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

### overlay

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Only loaded if [TileTransitions::overlay_layout](../types/TileTransitions.md#overlay-layout) is not defined in the TileTransitions that load this.

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
