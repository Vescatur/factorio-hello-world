# TableStyleSpecification

_type_

**Inherits from:** [BaseStyleSpecification](../types/BaseStyleSpecification.md)

Root style: `"table"`

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [apply_row_graphical_set_per_column](#apply-row-graphical-set-per-column) | [boolean](../types/boolean.md) | yes |
| [background_graphical_set](#background-graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [border](#border) | [BorderImageSet](../types/BorderImageSet.md) | yes |
| [bottom_cell_padding](#bottom-cell-padding) | [int16](../types/int16.md) | yes |
| [cell_padding](#cell-padding) | [int16](../types/int16.md) | yes |
| [clicked_graphical_set](#clicked-graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [column_alignments](#column-alignments) | array[[ColumnAlignment](../types/ColumnAlignment.md)] | yes |
| [column_graphical_set](#column-graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [column_ordering_ascending_button_style](#column-ordering-ascending-button-style) | [ButtonStyleSpecification](../types/ButtonStyleSpecification.md) | yes |
| [column_ordering_descending_button_style](#column-ordering-descending-button-style) | [ButtonStyleSpecification](../types/ButtonStyleSpecification.md) | yes |
| [column_widths](#column-widths) | [ColumnWidthItem](../types/ColumnWidthItem.md) ∣ array[[ColumnWidth](../types/ColumnWidth.md)] | yes |
| [default_row_graphical_set](#default-row-graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [even_row_graphical_set](#even-row-graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [horizontal_line_color](#horizontal-line-color) | [Color](../types/Color.md) | yes |
| [horizontal_spacing](#horizontal-spacing) | [int32](../types/int32.md) ∣ array[[SpacingItem](../types/SpacingItem.md)] | yes |
| [hovered_graphical_set](#hovered-graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [hovered_row_color](#hovered-row-color) | [Color](../types/Color.md) | yes |
| [inactive_column_ordering_ascending_button_style](#inactive-column-ordering-ascending-button-style) | [ButtonStyleSpecification](../types/ButtonStyleSpecification.md) | yes |
| [inactive_column_ordering_descending_button_style](#inactive-column-ordering-descending-button-style) | [ButtonStyleSpecification](../types/ButtonStyleSpecification.md) | yes |
| [left_cell_padding](#left-cell-padding) | [int16](../types/int16.md) | yes |
| [odd_row_graphical_set](#odd-row-graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [right_cell_padding](#right-cell-padding) | [int16](../types/int16.md) | yes |
| [selected_clicked_graphical_set](#selected-clicked-graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [selected_graphical_set](#selected-graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [selected_hovered_graphical_set](#selected-hovered-graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [selected_row_color](#selected-row-color) | [Color](../types/Color.md) | yes |
| [top_cell_padding](#top-cell-padding) | [int16](../types/int16.md) | yes |
| [type](#type) | `"table_style"` |  |
| [vertical_line_color](#vertical-line-color) | [Color](../types/Color.md) | yes |
| [vertical_spacing](#vertical-spacing) | [int32](../types/int32.md) ∣ array[[SpacingItem](../types/SpacingItem.md)] | yes |
| [wide_as_column_count](#wide-as-column-count) | [boolean](../types/boolean.md) | yes |

### apply_row_graphical_set_per_column

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### background_graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_ · **Default:** `Not drawn`

### border

**Type:** [BorderImageSet](../types/BorderImageSet.md) · _optional_

Required on the root style.

### bottom_cell_padding

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### cell_padding

**Type:** [int16](../types/int16.md) · _optional_

Sets `top_cell_padding`, `right_cell_padding`, `bottom_cell_padding` and `left_cell_padding` to the same value.

### clicked_graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_ · **Default:** `Not drawn`

### column_alignments

**Type:** array[[ColumnAlignment](../types/ColumnAlignment.md)] · _optional_

### column_graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_ · **Default:** `Not drawn`

### column_ordering_ascending_button_style

**Type:** [ButtonStyleSpecification](../types/ButtonStyleSpecification.md) · _optional_

### column_ordering_descending_button_style

**Type:** [ButtonStyleSpecification](../types/ButtonStyleSpecification.md) · _optional_

### column_widths

**Type:** [ColumnWidthItem](../types/ColumnWidthItem.md) ∣ array[[ColumnWidth](../types/ColumnWidth.md)] · _optional_

### default_row_graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_ · **Default:** `Not drawn`

### even_row_graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_ · **Default:** `Not drawn`

### horizontal_line_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{0, 0, 0, 0}``

### horizontal_spacing

**Type:** [int32](../types/int32.md) ∣ array[[SpacingItem](../types/SpacingItem.md)] · _optional_

Required on the root style.

### hovered_graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_ · **Default:** `Not drawn`

### hovered_row_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{0, 0, 0, 0}``

### inactive_column_ordering_ascending_button_style

**Type:** [ButtonStyleSpecification](../types/ButtonStyleSpecification.md) · _optional_

### inactive_column_ordering_descending_button_style

**Type:** [ButtonStyleSpecification](../types/ButtonStyleSpecification.md) · _optional_

### left_cell_padding

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### odd_row_graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_ · **Default:** `Not drawn`

### right_cell_padding

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### selected_clicked_graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_ · **Default:** `Not drawn`

### selected_graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_ · **Default:** `Not drawn`

### selected_hovered_graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_ · **Default:** `Not drawn`

### selected_row_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{110, 110, 110}``

### top_cell_padding

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### type

**Type:** `"table_style"`

### vertical_line_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{110, 110, 110}``

### vertical_spacing

**Type:** [int32](../types/int32.md) ∣ array[[SpacingItem](../types/SpacingItem.md)] · _optional_

Required on the root style.

### wide_as_column_count

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`
