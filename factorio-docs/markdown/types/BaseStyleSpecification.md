# BaseStyleSpecification

_type_ · **abstract**

The abstract base of all [StyleSpecifications](../types/StyleSpecification.md).

**Example:**

```
-- Adding a custom frame_style-type style via GuiStyle
data.raw["gui-style"]["default"]["custom_style_for_a_frame"] =
{
  type = "frame_style",
  parent = "frame",
  use_header_filler = false,
  drag_by_title = false
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [bottom_margin](#bottom-margin) | [int16](../types/int16.md) | yes |
| [bottom_padding](#bottom-padding) | [int16](../types/int16.md) | yes |
| [effect](#effect) | `"compilatron-hologram"` | yes |
| [effect_opacity](#effect-opacity) | [float](../types/float.md) | yes |
| [height](#height) | [uint32](../types/uint32.md) | yes |
| [horizontal_align](#horizontal-align) | [HorizontalAlign](../types/HorizontalAlign.md) | yes |
| [horizontally_squashable](#horizontally-squashable) | [StretchRule](../types/StretchRule.md) | yes |
| [horizontally_stretchable](#horizontally-stretchable) | [StretchRule](../types/StretchRule.md) | yes |
| [ignored_by_search](#ignored-by-search) | [boolean](../types/boolean.md) | yes |
| [left_margin](#left-margin) | [int16](../types/int16.md) | yes |
| [left_padding](#left-padding) | [int16](../types/int16.md) | yes |
| [margin](#margin) | [int16](../types/int16.md) | yes |
| [maximal_height](#maximal-height) | [uint32](../types/uint32.md) | yes |
| [maximal_width](#maximal-width) | [uint32](../types/uint32.md) | yes |
| [minimal_height](#minimal-height) | [uint32](../types/uint32.md) | yes |
| [minimal_width](#minimal-width) | [uint32](../types/uint32.md) | yes |
| [natural_height](#natural-height) | [uint32](../types/uint32.md) | yes |
| [natural_size](#natural-size) | [uint32](../types/uint32.md) ∣ tuple[[uint32](../types/uint32.md), [uint32](../types/uint32.md)] | yes |
| [natural_width](#natural-width) | [uint32](../types/uint32.md) | yes |
| [never_hide_by_search](#never-hide-by-search) | [boolean](../types/boolean.md) | yes |
| [padding](#padding) | [int16](../types/int16.md) | yes |
| [parent](#parent) | [string](../types/string.md) | yes |
| [right_margin](#right-margin) | [int16](../types/int16.md) | yes |
| [right_padding](#right-padding) | [int16](../types/int16.md) | yes |
| [size](#size) | [uint32](../types/uint32.md) ∣ tuple[[uint32](../types/uint32.md), [uint32](../types/uint32.md)] | yes |
| [tooltip](#tooltip) | [LocalisedString](../types/LocalisedString.md) | yes |
| [top_margin](#top-margin) | [int16](../types/int16.md) | yes |
| [top_padding](#top-padding) | [int16](../types/int16.md) | yes |
| [vertical_align](#vertical-align) | [VerticalAlign](../types/VerticalAlign.md) | yes |
| [vertically_squashable](#vertically-squashable) | [StretchRule](../types/StretchRule.md) | yes |
| [vertically_stretchable](#vertically-stretchable) | [StretchRule](../types/StretchRule.md) | yes |
| [width](#width) | [uint32](../types/uint32.md) | yes |

### bottom_margin

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### bottom_padding

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### effect

**Type:** `"compilatron-hologram"` · _optional_

Name of a custom GUI effect, which are hard-coded in the game's engine. Only has one option currently.

### effect_opacity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### height

**Type:** [uint32](../types/uint32.md) · _optional_

Sets `minimal_height`, `maximal_height` and `natural_height` to the same value.

### horizontal_align

**Type:** [HorizontalAlign](../types/HorizontalAlign.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'left'}`

### horizontally_squashable

**Type:** [StretchRule](../types/StretchRule.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'auto'}`

### horizontally_stretchable

**Type:** [StretchRule](../types/StretchRule.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'auto'}`

### ignored_by_search

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### left_margin

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### left_padding

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### margin

**Type:** [int16](../types/int16.md) · _optional_

Sets `top_margin`, `right_margin`, `bottom_margin` and `left_margin` to the same value.

### maximal_height

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Maximal height ensures that the widget will never be bigger than than that size. It can't be stretched to be bigger.

### maximal_width

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Maximal width ensures that the widget will never be bigger than than that size. It can't be stretched to be bigger.

### minimal_height

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Minimal height ensures that the widget will never be smaller than than that size. It can't be squashed to be smaller.

### minimal_width

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Minimal width ensures that the widget will never be smaller than than that size. It can't be squashed to be smaller.

### natural_height

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Natural height specifies the height of the element tries to have, but it can still be squashed/stretched to have a different size.

### natural_size

**Type:** [uint32](../types/uint32.md) ∣ tuple[[uint32](../types/uint32.md), [uint32](../types/uint32.md)] · _optional_

If this is a tuple, the first member sets `natural_width` and the second sets `natural_height`. Otherwise, both `natural_width` and `natural_height` are set to the same value.

### natural_width

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Natural width specifies the width of the element tries to have, but it can still be squashed/stretched to have a different size.

### never_hide_by_search

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### padding

**Type:** [int16](../types/int16.md) · _optional_

Sets `top_padding`, `right_padding`, `bottom_padding` and `left_padding` to the same value.

### parent

**Type:** [string](../types/string.md) · _optional_

Name of a [StyleSpecification](../types/StyleSpecification.md). This style inherits all property values from its parent.

Styles without a parent property default to the root style for their type. The exception to this are the root styles themselves, as they cannot have a parent set. Due to this, for root styles, some style properties are mandatory and behavior may be unexpected, such as an element not showing up because its size defaults to `0`.

### right_margin

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### right_padding

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### size

**Type:** [uint32](../types/uint32.md) ∣ tuple[[uint32](../types/uint32.md), [uint32](../types/uint32.md)] · _optional_

If this is a tuple, the first member sets `width`, and the second sets `height`. Otherwise, both `width` and `height` are set to the same value.

### tooltip

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_

### top_margin

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### top_padding

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### vertical_align

**Type:** [VerticalAlign](../types/VerticalAlign.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'top'}`

### vertically_squashable

**Type:** [StretchRule](../types/StretchRule.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'auto'}`

### vertically_stretchable

**Type:** [StretchRule](../types/StretchRule.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'auto'}`

### width

**Type:** [uint32](../types/uint32.md) · _optional_

Sets `minimal_width`, `maximal_width` and `natural_width` to the same value.
