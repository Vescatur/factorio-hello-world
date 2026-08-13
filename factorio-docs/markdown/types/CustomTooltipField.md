# CustomTooltipField

_type_

Allows to add extra description items to the tooltip.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [LocalisedString](../types/LocalisedString.md) |  |
| [order](#order) | [uint8](../types/uint8.md) | yes |
| [quality_header](#quality-header) | [string](../types/string.md) | yes |
| [quality_values](#quality-values) | dictionary[[QualityID](../types/QualityID.md) → [LocalisedString](../types/LocalisedString.md)] | yes |
| [show_in_factoriopedia](#show-in-factoriopedia) | [boolean](../types/boolean.md) | yes |
| [show_in_tooltip](#show-in-tooltip) | [boolean](../types/boolean.md) | yes |
| [value](#value) | [LocalisedString](../types/LocalisedString.md) |  |

### name

**Type:** [LocalisedString](../types/LocalisedString.md)

### order

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 100}`

Ordering within all description items (modded and un-modded). Items with smaller order values are shown above items with larger values.

### quality_header

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'quality-tooltip.increases'}`

### quality_values

**Type:** dictionary[[QualityID](../types/QualityID.md) → [LocalisedString](../types/LocalisedString.md)] · _optional_

Custom values per quality level. If a value is not provided for a specific quality, [CustomTooltipField::value](../types/CustomTooltipField.md#value) will be used instead.

### show_in_factoriopedia

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### show_in_tooltip

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### value

**Type:** [LocalisedString](../types/LocalisedString.md)
