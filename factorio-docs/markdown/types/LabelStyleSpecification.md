# LabelStyleSpecification

_type_

**Inherits from:** [BaseStyleSpecification](../types/BaseStyleSpecification.md)

Root style: `"label"`

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [clicked_font_color](#clicked-font-color) | [Color](../types/Color.md) | yes |
| [disabled_font_color](#disabled-font-color) | [Color](../types/Color.md) | yes |
| [font](#font) | [string](../types/string.md) | yes |
| [font_color](#font-color) | [Color](../types/Color.md) | yes |
| [game_controller_hovered_font_color](#game-controller-hovered-font-color) | [Color](../types/Color.md) | yes |
| [hovered_font_color](#hovered-font-color) | [Color](../types/Color.md) | yes |
| [parent_hovered_font_color](#parent-hovered-font-color) | [Color](../types/Color.md) | yes |
| [rich_text_highlight_error_color](#rich-text-highlight-error-color) | [Color](../types/Color.md) | yes |
| [rich_text_highlight_ok_color](#rich-text-highlight-ok-color) | [Color](../types/Color.md) | yes |
| [rich_text_highlight_warning_color](#rich-text-highlight-warning-color) | [Color](../types/Color.md) | yes |
| [rich_text_setting](#rich-text-setting) | [RichTextSetting](../types/RichTextSetting.md) | yes |
| [single_line](#single-line) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"label_style"` |  |
| [underlined](#underlined) | [boolean](../types/boolean.md) | yes |

### clicked_font_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `Value of `font_color``

### disabled_font_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `Value of `font_color``

### font

**Type:** [string](../types/string.md) · _optional_

Name of a [FontPrototype](../prototypes/FontPrototype.md).

Required on the root style.

### font_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### game_controller_hovered_font_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `Value of `font_color``

### hovered_font_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `Value of `font_color``

### parent_hovered_font_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `Value of `font_color``

### rich_text_highlight_error_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### rich_text_highlight_ok_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### rich_text_highlight_warning_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### rich_text_setting

**Type:** [RichTextSetting](../types/RichTextSetting.md) · _optional_

Required on the root style.

### single_line

**Type:** [boolean](../types/boolean.md) · _optional_

Required on the root style.

### type

**Type:** `"label_style"`

### underlined

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`
