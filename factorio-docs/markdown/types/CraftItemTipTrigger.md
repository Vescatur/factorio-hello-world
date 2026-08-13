# CraftItemTipTrigger

_type_

**Inherits from:** [CountBasedTipTrigger](../types/CountBasedTipTrigger.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [consecutive](#consecutive) | [boolean](../types/boolean.md) | yes |
| [event_type](#event-type) | `"crafting-of-single-item-ordered"` ∣ `"crafting-of-multiple-items-ordered"` ∣ `"crafting-finished"` |  |
| [item](#item) | [ItemID](../types/ItemID.md) | yes |
| [type](#type) | `"craft-item"` |  |

### consecutive

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Can only be used when `event_type` is `"crafting-finished"`.

### event_type

**Type:** `"crafting-of-single-item-ordered"` ∣ `"crafting-of-multiple-items-ordered"` ∣ `"crafting-finished"`

### item

**Type:** [ItemID](../types/ItemID.md) · _optional_

### type

**Type:** `"craft-item"`
