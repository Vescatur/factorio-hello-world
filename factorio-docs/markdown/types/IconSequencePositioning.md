# IconSequencePositioning

_type_

Specification of where and how should be the icons of individual inventories be drawn.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [inventory_index](#inventory-index) | [defines.inventory](../defines/defines.md) |  |
| [max_icon_rows](#max-icon-rows) | [uint8](../types/uint8.md) | yes |
| [max_icons_per_row](#max-icons-per-row) | [uint8](../types/uint8.md) | yes |
| [multi_row_initial_height_modifier](#multi-row-initial-height-modifier) | [float](../types/float.md) | yes |
| [scale](#scale) | [float](../types/float.md) | yes |
| [separation_multiplier](#separation-multiplier) | [float](../types/float.md) | yes |
| [shift](#shift) | [Vector](../types/Vector.md) | yes |

### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

### max_icon_rows

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `width of entity selection box / 1.5`

### max_icons_per_row

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `width of entity selection box / 0.75`

### multi_row_initial_height_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -0.1}`

### scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

### separation_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.1}`

### shift

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `{0, 0.7}`
