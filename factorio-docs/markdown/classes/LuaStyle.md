# LuaStyle

_class_

Style of a GUI element. All of the attributes listed here may be `nil` if not available for a particular GUI element.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [badge_font](#badge-font) | [string](../concepts/string.md) |  |
| [badge_horizontal_spacing](#badge-horizontal-spacing) | [int32](../concepts/int32.md) |  |
| [bar_width](#bar-width) | [uint32](../concepts/uint32.md) |  |
| [bottom_cell_padding](#bottom-cell-padding) | [int16](../concepts/int16.md) |  |
| [bottom_margin](#bottom-margin) | [int16](../concepts/int16.md) |  |
| [bottom_padding](#bottom-padding) | [int16](../concepts/int16.md) |  |
| [cell_padding](#cell-padding) | [int16](../concepts/int16.md) |  |
| [clicked_font_color](#clicked-font-color) | [Color](../concepts/Color.md) |  |
| [clicked_vertical_offset](#clicked-vertical-offset) | [uint32](../concepts/uint32.md) |  |
| [color](#color) | [Color](../concepts/Color.md) |  |
| [column_alignments](#column-alignments) | LuaCustomTable[[uint32](../concepts/uint32.md) → [Alignment](../concepts/Alignment.md)] |  |
| [default_badge_font_color](#default-badge-font-color) | [Color](../concepts/Color.md) |  |
| [disabled_badge_font_color](#disabled-badge-font-color) | [Color](../concepts/Color.md) |  |
| [disabled_font_color](#disabled-font-color) | [Color](../concepts/Color.md) |  |
| [draw_grayscale_picture](#draw-grayscale-picture) | [boolean](../concepts/boolean.md) |  |
| [extra_bottom_margin_when_activated](#extra-bottom-margin-when-activated) | [int32](../concepts/int32.md) |  |
| [extra_bottom_padding_when_activated](#extra-bottom-padding-when-activated) | [int32](../concepts/int32.md) |  |
| [extra_left_margin_when_activated](#extra-left-margin-when-activated) | [int32](../concepts/int32.md) |  |
| [extra_left_padding_when_activated](#extra-left-padding-when-activated) | [int32](../concepts/int32.md) |  |
| [extra_margin_when_activated](#extra-margin-when-activated) | [int32](../concepts/int32.md) ∣ array[[int32](../concepts/int32.md)] |  |
| [extra_padding_when_activated](#extra-padding-when-activated) | [int32](../concepts/int32.md) ∣ array[[int32](../concepts/int32.md)] |  |
| [extra_right_margin_when_activated](#extra-right-margin-when-activated) | [int32](../concepts/int32.md) |  |
| [extra_right_padding_when_activated](#extra-right-padding-when-activated) | [int32](../concepts/int32.md) |  |
| [extra_top_margin_when_activated](#extra-top-margin-when-activated) | [int32](../concepts/int32.md) |  |
| [extra_top_padding_when_activated](#extra-top-padding-when-activated) | [int32](../concepts/int32.md) |  |
| [font](#font) | [string](../concepts/string.md) |  |
| [font_color](#font-color) | [Color](../concepts/Color.md) |  |
| [gui](#gui) | [LuaGui](../classes/LuaGui.md) |  |
| [height](#height) | [int32](../concepts/int32.md) |  |
| [horizontal_align](#horizontal-align) | `"left"` ∣ `"center"` ∣ `"right"` | yes |
| [horizontal_spacing](#horizontal-spacing) | [int32](../concepts/int32.md) |  |
| [horizontally_squashable](#horizontally-squashable) | [boolean](../concepts/boolean.md) | yes |
| [horizontally_stretchable](#horizontally-stretchable) | [boolean](../concepts/boolean.md) | yes |
| [hovered_font_color](#hovered-font-color) | [Color](../concepts/Color.md) |  |
| [left_cell_padding](#left-cell-padding) | [int16](../concepts/int16.md) |  |
| [left_margin](#left-margin) | [int16](../concepts/int16.md) |  |
| [left_padding](#left-padding) | [int16](../concepts/int16.md) |  |
| [margin](#margin) | [int16](../concepts/int16.md) ∣ array[[int16](../concepts/int16.md)] |  |
| [maximal_height](#maximal-height) | [int32](../concepts/int32.md) |  |
| [maximal_width](#maximal-width) | [int32](../concepts/int32.md) |  |
| [minimal_height](#minimal-height) | [int32](../concepts/int32.md) |  |
| [minimal_width](#minimal-width) | [int32](../concepts/int32.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [natural_height](#natural-height) | [int32](../concepts/int32.md) |  |
| [natural_width](#natural-width) | [int32](../concepts/int32.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [padding](#padding) | [int16](../concepts/int16.md) ∣ array[[int16](../concepts/int16.md)] |  |
| [pie_progress_color](#pie-progress-color) | [Color](../concepts/Color.md) |  |
| [rich_text_setting](#rich-text-setting) | [defines.rich_text_setting](../defines/defines.md) |  |
| [right_cell_padding](#right-cell-padding) | [int16](../concepts/int16.md) |  |
| [right_margin](#right-margin) | [int16](../concepts/int16.md) |  |
| [right_padding](#right-padding) | [int16](../concepts/int16.md) |  |
| [selected_badge_font_color](#selected-badge-font-color) | [Color](../concepts/Color.md) |  |
| [selected_clicked_font_color](#selected-clicked-font-color) | [Color](../concepts/Color.md) |  |
| [selected_font_color](#selected-font-color) | [Color](../concepts/Color.md) |  |
| [selected_hovered_font_color](#selected-hovered-font-color) | [Color](../concepts/Color.md) |  |
| [single_line](#single-line) | [boolean](../concepts/boolean.md) |  |
| [size](#size) | [int32](../concepts/int32.md) ∣ array[[int32](../concepts/int32.md)] |  |
| [stretch_image_to_widget_size](#stretch-image-to-widget-size) | [boolean](../concepts/boolean.md) |  |
| [strikethrough_color](#strikethrough-color) | [Color](../concepts/Color.md) |  |
| [top_cell_padding](#top-cell-padding) | [int16](../concepts/int16.md) |  |
| [top_margin](#top-margin) | [int16](../concepts/int16.md) |  |
| [top_padding](#top-padding) | [int16](../concepts/int16.md) |  |
| [use_header_filler](#use-header-filler) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [vertical_align](#vertical-align) | `"top"` ∣ `"center"` ∣ `"bottom"` | yes |
| [vertical_spacing](#vertical-spacing) | [int32](../concepts/int32.md) |  |
| [vertically_squashable](#vertically-squashable) | [boolean](../concepts/boolean.md) | yes |
| [vertically_stretchable](#vertically-stretchable) | [boolean](../concepts/boolean.md) | yes |
| [width](#width) | [int32](../concepts/int32.md) |  |

### badge_font

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

### badge_horizontal_spacing

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

### bar_width

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The thickness of the bar, not the horizontal width.

### bottom_cell_padding

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

Space between the table cell contents bottom and border.

### bottom_margin

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

### bottom_padding

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

### cell_padding

**Write:** [int16](../concepts/int16.md)

Space between the table cell contents and border. Sets top/right/bottom/left cell paddings to this value.

### clicked_font_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### clicked_vertical_offset

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

### color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### column_alignments

**Read:** LuaCustomTable[[uint32](../concepts/uint32.md) → [Alignment](../concepts/Alignment.md)] · _read-only_

Array containing the alignment for every column of this table element. Even though this property is marked as read-only, the alignment can be changed by indexing the LuaCustomTable, like so:

**Example:**

```
table_element.style.column_alignments[1] = "center"
```

### default_badge_font_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### disabled_badge_font_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### disabled_font_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### draw_grayscale_picture

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### extra_bottom_margin_when_activated

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

### extra_bottom_padding_when_activated

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

### extra_left_margin_when_activated

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

### extra_left_padding_when_activated

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

### extra_margin_when_activated

**Write:** [int32](../concepts/int32.md) ∣ array[[int32](../concepts/int32.md)]

Sets `extra_top/right/bottom/left_margin_when_activated` to this value.

An array with two values sets top/bottom margin to the first value and left/right margin to the second value. An array with four values sets top, right, bottom, left margin respectively.

### extra_padding_when_activated

**Write:** [int32](../concepts/int32.md) ∣ array[[int32](../concepts/int32.md)]

Sets `extra_top/right/bottom/left_padding_when_activated` to this value.

An array with two values sets top/bottom padding to the first value and left/right padding to the second value. An array with four values sets top, right, bottom, left padding respectively.

### extra_right_margin_when_activated

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

### extra_right_padding_when_activated

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

### extra_top_margin_when_activated

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

### extra_top_padding_when_activated

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

### font

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

### font_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### gui

**Read:** [LuaGui](../classes/LuaGui.md) · _read-only_

Gui of the [LuaGuiElement](../classes/LuaGuiElement.md) of this style.

### height

**Write:** [int32](../concepts/int32.md)

Sets both minimal and maximal height to the given value.

### horizontal_align

**Read:** `"left"` ∣ `"center"` ∣ `"right"` · **Write:** `"left"` ∣ `"center"` ∣ `"right"` · _optional_

Horizontal align of the inner content of the widget, if any.

### horizontal_spacing

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

Horizontal space between individual cells.

### horizontally_squashable

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md) · _optional_

Whether the GUI element can be squashed (by maximal width of some parent element) horizontally. `nil` if this element does not support squashing.

This is mainly meant to be used for scroll-pane. The default value is false.

### horizontally_stretchable

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md) · _optional_

Whether the GUI element stretches its size horizontally to other elements. `nil` if this element does not support stretching.

### hovered_font_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### left_cell_padding

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

Space between the table cell contents left and border.

### left_margin

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

### left_padding

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

### margin

**Write:** [int16](../concepts/int16.md) ∣ array[[int16](../concepts/int16.md)]

Sets top/right/bottom/left margins to this value.

An array with two values sets top/bottom margin to the first value and left/right margin to the second value. An array with four values sets top, right, bottom, left margin respectively.

### maximal_height

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

Maximal height ensures, that the widget will never be bigger than than that size. It can't be stretched to be bigger.

### maximal_width

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

Maximal width ensures, that the widget will never be bigger than than that size. It can't be stretched to be bigger.

### minimal_height

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

Minimal height ensures, that the widget will never be smaller than than that size. It can't be squashed to be smaller.

### minimal_width

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

Minimal width ensures, that the widget will never be smaller than than that size. It can't be squashed to be smaller.

### name

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

Name of this style.

### natural_height

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

Natural height specifies the height of the element tries to have, but it can still be squashed/stretched to have a smaller or bigger size.

### natural_width

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

Natural width specifies the width of the element tries to have, but it can still be squashed/stretched to have a smaller or bigger size.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### padding

**Write:** [int16](../concepts/int16.md) ∣ array[[int16](../concepts/int16.md)]

Sets top/right/bottom/left paddings to this value.

An array with two values sets top/bottom padding to the first value and left/right padding to the second value. An array with four values sets top, right, bottom, left padding respectively.

### pie_progress_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### rich_text_setting

**Read:** [defines.rich_text_setting](../defines/defines.md) · **Write:** [defines.rich_text_setting](../defines/defines.md)

How this GUI element handles rich text.

### right_cell_padding

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

Space between the table cell contents right and border.

### right_margin

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

### right_padding

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

### selected_badge_font_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### selected_clicked_font_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### selected_font_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### selected_hovered_font_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### single_line

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### size

**Write:** [int32](../concepts/int32.md) ∣ array[[int32](../concepts/int32.md)]

Sets both width and height to the given value. Also accepts an array with two values, setting width to the first and height to the second one.

### stretch_image_to_widget_size

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### strikethrough_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

### top_cell_padding

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

Space between the table cell contents top and border.

### top_margin

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

### top_padding

**Read:** [int16](../concepts/int16.md) · **Write:** [int16](../concepts/int16.md)

### use_header_filler

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### vertical_align

**Read:** `"top"` ∣ `"center"` ∣ `"bottom"` · **Write:** `"top"` ∣ `"center"` ∣ `"bottom"` · _optional_

Vertical align of the inner content of the widget, if any.

### vertical_spacing

**Read:** [int32](../concepts/int32.md) · **Write:** [int32](../concepts/int32.md)

Vertical space between individual cells.

### vertically_squashable

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md) · _optional_

Whether the GUI element can be squashed (by maximal height of some parent element) vertically. `nil` if this element does not support squashing.

This is mainly meant to be used for scroll-pane. The default (parent) value for scroll pane is true, false otherwise.

### vertically_stretchable

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md) · _optional_

Whether the GUI element stretches its size vertically to other elements. `nil` if this element does not support stretching.

### width

**Write:** [int32](../concepts/int32.md)

Sets both minimal and maximal width to the given value.

## Methods

| Method | Summary |
| --- | --- |
| [get_style](#get-style) | Gets the given sub-style of this style if it exists. See StyleSpecification types for what sub styles are usable. |

### get_style

`get_style(create, style_name)`

Gets the given sub-style of this style if it exists. See [StyleSpecification](../types/StyleSpecification.md) types for what sub styles are usable.

Note: when creating sub-styles they have no set values and have the parent set to the styles top-level default.

Note: when the parent [LuaGuiElement::style](../classes/LuaGuiElement.md#style) is directly changed (element.style = "new_style") any sub-styles will be invalidated.

#### Parameters

##### create

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, and the given sub-style is valid - it will be created if it does not exist. Defaults to `false`.

##### style_name

**Type:** [string](../concepts/string.md)

The style to get.

#### Return values

- [LuaStyle](../classes/LuaStyle.md) _(optional)_
