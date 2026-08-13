# ButtonStyleSpecification

_type_

**Inherits from:** [StyleWithClickableGraphicalSetSpecification](../types/StyleWithClickableGraphicalSetSpecification.md)

Root style: `"button"`

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [clicked_font_color](#clicked-font-color) | [Color](../types/Color.md) | yes |
| [clicked_vertical_offset](#clicked-vertical-offset) | [uint32](../types/uint32.md) | yes |
| [default_font_color](#default-font-color) | [Color](../types/Color.md) | yes |
| [disabled_font_color](#disabled-font-color) | [Color](../types/Color.md) | yes |
| [draw_grayscale_picture](#draw-grayscale-picture) | [boolean](../types/boolean.md) | yes |
| [draw_shadow_under_picture](#draw-shadow-under-picture) | [boolean](../types/boolean.md) | yes |
| [font](#font) | [string](../types/string.md) | yes |
| [hovered_font_color](#hovered-font-color) | [Color](../types/Color.md) | yes |
| [icon_horizontal_align](#icon-horizontal-align) | [HorizontalAlign](../types/HorizontalAlign.md) | yes |
| [invert_colors_of_picture_when_disabled](#invert-colors-of-picture-when-disabled) | [boolean](../types/boolean.md) | yes |
| [invert_colors_of_picture_when_hovered_or_toggled](#invert-colors-of-picture-when-hovered-or-toggled) | [boolean](../types/boolean.md) | yes |
| [pie_progress_color](#pie-progress-color) | [Color](../types/Color.md) | yes |
| [selected_clicked_font_color](#selected-clicked-font-color) | [Color](../types/Color.md) | yes |
| [selected_font_color](#selected-font-color) | [Color](../types/Color.md) | yes |
| [selected_hovered_font_color](#selected-hovered-font-color) | [Color](../types/Color.md) | yes |
| [strikethrough_color](#strikethrough-color) | [Color](../types/Color.md) | yes |
| [type](#type) | `"button_style"` |  |

### clicked_font_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### clicked_vertical_offset

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### default_font_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### disabled_font_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### draw_grayscale_picture

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### draw_shadow_under_picture

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### font

**Type:** [string](../types/string.md) · _optional_

Name of a [FontPrototype](../prototypes/FontPrototype.md).

Required on the root style.

### hovered_font_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### icon_horizontal_align

**Type:** [HorizontalAlign](../types/HorizontalAlign.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'left'}`

### invert_colors_of_picture_when_disabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### invert_colors_of_picture_when_hovered_or_toggled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### pie_progress_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### selected_clicked_font_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### selected_font_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### selected_hovered_font_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### strikethrough_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### type

**Type:** `"button_style"`
