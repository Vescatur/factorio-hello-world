# ElementImageSetLayer

_type_

If this is loaded as a Sprite, it gets used as `center`.

_Image: `ElementImageSetLayer_properties.png` — How the sprites are laid out graphically when using a composition type element image set layer._

_Image: `ElementImageSetLayer_stretching.png` — How the sprites are stretched when using a composition type element image set layer._

**Definition:** struct (see properties below) ∣ [Sprite](../types/Sprite.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [background_blur](#background-blur) | [boolean](../types/boolean.md) | yes |
| [background_blur_sigma](#background-blur-sigma) | [float](../types/float.md) | yes |
| [border](#border) | [int32](../types/int32.md) | yes |
| [bottom](#bottom) | [Sprite](../types/Sprite.md) | yes |
| [bottom_border](#bottom-border) | [int32](../types/int32.md) | yes |
| [bottom_outer_border_shift](#bottom-outer-border-shift) | [int32](../types/int32.md) | yes |
| [bottom_tiling](#bottom-tiling) | [boolean](../types/boolean.md) | yes |
| [bottom_width](#bottom-width) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [center](#center) | [Sprite](../types/Sprite.md) | yes |
| [center_height](#center-height) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [center_tiling_horizontal](#center-tiling-horizontal) | [boolean](../types/boolean.md) | yes |
| [center_tiling_vertical](#center-tiling-vertical) | [boolean](../types/boolean.md) | yes |
| [center_width](#center-width) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [corner_size](#corner-size) | [uint16](../types/uint16.md) ∣ tuple[[uint16](../types/uint16.md), [uint16](../types/uint16.md)] | yes |
| [custom_horizontal_tiling_sizes](#custom-horizontal-tiling-sizes) | array[[uint32](../types/uint32.md)] | yes |
| [draw_type](#draw-type) | `"inner"` ∣ `"outer"` | yes |
| [filename](#filename) | [FileName](../types/FileName.md) | yes |
| [left](#left) | [Sprite](../types/Sprite.md) | yes |
| [left_border](#left-border) | [int32](../types/int32.md) | yes |
| [left_bottom](#left-bottom) | [Sprite](../types/Sprite.md) | yes |
| [left_height](#left-height) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [left_outer_border_shift](#left-outer-border-shift) | [int32](../types/int32.md) | yes |
| [left_tiling](#left-tiling) | [boolean](../types/boolean.md) | yes |
| [left_top](#left-top) | [Sprite](../types/Sprite.md) | yes |
| [load_in_minimal_mode](#load-in-minimal-mode) | [boolean](../types/boolean.md) | yes |
| [opacity](#opacity) | [double](../types/double.md) | yes |
| [overall_tiling_horizontal_padding](#overall-tiling-horizontal-padding) | [uint16](../types/uint16.md) | yes |
| [overall_tiling_horizontal_size](#overall-tiling-horizontal-size) | [uint16](../types/uint16.md) | yes |
| [overall_tiling_horizontal_spacing](#overall-tiling-horizontal-spacing) | [uint16](../types/uint16.md) | yes |
| [overall_tiling_vertical_padding](#overall-tiling-vertical-padding) | [uint16](../types/uint16.md) | yes |
| [overall_tiling_vertical_size](#overall-tiling-vertical-size) | [uint16](../types/uint16.md) | yes |
| [overall_tiling_vertical_spacing](#overall-tiling-vertical-spacing) | [uint16](../types/uint16.md) | yes |
| [position](#position) | [MapPosition](../types/MapPosition.md) | yes |
| [right](#right) | [Sprite](../types/Sprite.md) | yes |
| [right_border](#right-border) | [int32](../types/int32.md) | yes |
| [right_bottom](#right-bottom) | [Sprite](../types/Sprite.md) | yes |
| [right_height](#right-height) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [right_outer_border_shift](#right-outer-border-shift) | [int32](../types/int32.md) | yes |
| [right_tiling](#right-tiling) | [boolean](../types/boolean.md) | yes |
| [right_top](#right-top) | [Sprite](../types/Sprite.md) | yes |
| [scale](#scale) | [double](../types/double.md) | yes |
| [stretch_monolith_image_to_size](#stretch-monolith-image-to-size) | [boolean](../types/boolean.md) | yes |
| [tint](#tint) | [Color](../types/Color.md) | yes |
| [top](#top) | [Sprite](../types/Sprite.md) | yes |
| [top_border](#top-border) | [int32](../types/int32.md) | yes |
| [top_outer_border_shift](#top-outer-border-shift) | [int32](../types/int32.md) | yes |
| [top_tiling](#top-tiling) | [boolean](../types/boolean.md) | yes |
| [top_width](#top-width) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [type](#type) | `"none"` ∣ `"composition"` | yes |

### background_blur

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### background_blur_sigma

**Type:** [float](../types/float.md) · _optional_ · **Default:** ``4` if `background_blur` is `true``

### border

**Type:** [int32](../types/int32.md) · _optional_

Sets `top_border`, `right_border`, `bottom_border` and `left_border`.

Only loaded if `corner_size` is not defined. Only loaded if `type` is `"composition"`.

### bottom

**Type:** [Sprite](../types/Sprite.md) · _optional_

Only loaded if `type` is `"composition"`.

### bottom_border

**Type:** [int32](../types/int32.md) · _optional_

Only loaded if `type` is `"composition"`.

### bottom_outer_border_shift

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### bottom_tiling

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### bottom_width

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `corner_size` is defined. Only loaded if `type` is `"composition"`.

### center

**Type:** [Sprite](../types/Sprite.md) · _optional_

Only loaded if `type` is `"composition"`.

### center_height

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `corner_size` is defined. Only loaded if `type` is `"composition"`.

### center_tiling_horizontal

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### center_tiling_vertical

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### center_width

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `corner_size` is defined. Only loaded if `type` is `"composition"`.

### corner_size

**Type:** [uint16](../types/uint16.md) ∣ tuple[[uint16](../types/uint16.md), [uint16](../types/uint16.md)] · _optional_

If this is a tuple, the first member of the tuple is width and the second is height. Otherwise the size is both width and height.

Only loaded if `type` is `"composition"`.

**Example:**

```
{
  -- How an ElementImageSet is loaded which has only one layer, which uses the corner_size shown in the diagram
  base = {position = {0, 17}, corner_size = 8}
}
```

### custom_horizontal_tiling_sizes

**Type:** array[[uint32](../types/uint32.md)] · _optional_

### draw_type

**Type:** `"inner"` ∣ `"outer"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'inner'}`

Defines whether the border should be drawn inside the widget, which affects the padding and content size of the widget, or outside of the widget which doesn't affect size. The outer draw type is most commonly used for shadows, glows and insets.

### filename

**Type:** [FileName](../types/FileName.md) · _optional_ · **Default:** `The `default_tileset` set in GuiStyle`

Only loaded if `corner_size` is defined. Only loaded if `type` is `"composition"`.

### left

**Type:** [Sprite](../types/Sprite.md) · _optional_

Only loaded if `type` is `"composition"`.

### left_border

**Type:** [int32](../types/int32.md) · _optional_

Only loaded if `type` is `"composition"`.

### left_bottom

**Type:** [Sprite](../types/Sprite.md) · _optional_

Only loaded if `type` is `"composition"`.

### left_height

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `corner_size` is defined. Only loaded if `type` is `"composition"`.

### left_outer_border_shift

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### left_tiling

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Tiling is used to make a side (not corner) texture repeat instead of being stretched.

### left_top

**Type:** [Sprite](../types/Sprite.md) · _optional_

Only loaded if `type` is `"composition"`.

### load_in_minimal_mode

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Only loaded if `corner_size` is defined. Only loaded if `type` is `"composition"`.

### opacity

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### overall_tiling_horizontal_padding

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### overall_tiling_horizontal_size

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Overall tiling is used to make the overall texture repeat instead of being stretched.

### overall_tiling_horizontal_spacing

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### overall_tiling_vertical_padding

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### overall_tiling_vertical_size

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### overall_tiling_vertical_spacing

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### position

**Type:** [MapPosition](../types/MapPosition.md) · _optional_

Mandatory if `corner_size` is defined. Only loaded if `type` is `"composition"`.

### right

**Type:** [Sprite](../types/Sprite.md) · _optional_

Only loaded if `type` is `"composition"`.

### right_border

**Type:** [int32](../types/int32.md) · _optional_

Only loaded if `type` is `"composition"`.

### right_bottom

**Type:** [Sprite](../types/Sprite.md) · _optional_

Only loaded if `type` is `"composition"`.

### right_height

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `corner_size` is defined. Only loaded if `type` is `"composition"`.

### right_outer_border_shift

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### right_tiling

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### right_top

**Type:** [Sprite](../types/Sprite.md) · _optional_

Only loaded if `type` is `"composition"`.

### scale

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `corner_size` is defined. Only loaded if `type` is `"composition"`.

### stretch_monolith_image_to_size

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Only loaded if `type` is `"composition"`.

### tint

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{r=1, g=1, b=1, a=1}``

Only loaded if `type` is `"composition"`.

### top

**Type:** [Sprite](../types/Sprite.md) · _optional_

Only loaded if `type` is `"composition"`.

### top_border

**Type:** [int32](../types/int32.md) · _optional_

Only loaded if `type` is `"composition"`.

### top_outer_border_shift

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### top_tiling

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### top_width

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `corner_size` is defined. Only loaded if `type` is `"composition"`.

### type

**Type:** `"none"` ∣ `"composition"` · _optional_ · **Default:** ``"none"` if this has no other properties, otherwise `"composition"``
