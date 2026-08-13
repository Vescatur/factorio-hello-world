# InventoryWithCustomStackSizeSpecification

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [stack_size_max](#stack-size-max) | [ItemCountType](../types/ItemCountType.md) | yes |
| [stack_size_min](#stack-size-min) | [ItemCountType](../types/ItemCountType.md) | yes |
| [stack_size_multiplier](#stack-size-multiplier) | [double](../types/double.md) | yes |
| [stack_size_override](#stack-size-override) | dictionary[[ItemID](../types/ItemID.md) → [ItemCountType](../types/ItemCountType.md)] | yes |
| [with_bar](#with-bar) | [boolean](../types/boolean.md) | yes |

### stack_size_max

**Type:** [ItemCountType](../types/ItemCountType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1000000000}`

Must be >= stack_size_min and <= 1000000000.

### stack_size_min

**Type:** [ItemCountType](../types/ItemCountType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= 1.

### stack_size_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= 0.

### stack_size_override

**Type:** dictionary[[ItemID](../types/ItemID.md) → [ItemCountType](../types/ItemCountType.md)] · _optional_

Each record value must be >= 1. For non-stackable items this value will be ignored.

### with_bar

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`
