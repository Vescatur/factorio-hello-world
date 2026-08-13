# ProgressBarStyleSpecification

_type_

**Inherits from:** [BaseStyleSpecification](../types/BaseStyleSpecification.md)

Root style: `"progressbar"`

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [bar](#bar) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [bar_background](#bar-background) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [bar_width](#bar-width) | [uint32](../types/uint32.md) | yes |
| [color](#color) | [Color](../types/Color.md) | yes |
| [embed_text_in_bar](#embed-text-in-bar) | [boolean](../types/boolean.md) | yes |
| [filled_font_color](#filled-font-color) | [Color](../types/Color.md) | yes |
| [font](#font) | [string](../types/string.md) | yes |
| [font_color](#font-color) | [Color](../types/Color.md) | yes |
| [other_colors](#other-colors) | array[[OtherColors](../types/OtherColors.md)] | yes |
| [side_text_padding](#side-text-padding) | [int16](../types/int16.md) | yes |
| [type](#type) | `"progressbar_style"` |  |

### bar

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_

Required on the root style.

### bar_background

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_

Required on the root style.

### bar_width

**Type:** [uint32](../types/uint32.md) · _optional_

The thickness of the bar, not the horizontal size.

Required on the root style.

### color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### embed_text_in_bar

**Type:** [boolean](../types/boolean.md) · _optional_

Required on the root style.

### filled_font_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `Uses font_color for all text`

### font

**Type:** [string](../types/string.md) · _optional_

Name of a [FontPrototype](../prototypes/FontPrototype.md).

Required on the root style.

### font_color

**Type:** [Color](../types/Color.md) · _optional_

Required on the root style.

### other_colors

**Type:** array[[OtherColors](../types/OtherColors.md)] · _optional_

Required on the root style.

### side_text_padding

**Type:** [int16](../types/int16.md) · _optional_

Required on the root style.

### type

**Type:** `"progressbar_style"`
