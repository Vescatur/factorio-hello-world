# GiveItemModifier

_type_

**Inherits from:** [BaseModifier](../types/BaseModifier.md)

Note that when any technology prototype changes (regardless of which mod it belongs to), the game re-applies all researched technology effects, including `"give-item"` modifiers. This means that players will receive the item again, even if they already received it previously. This can be undesirable.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [ItemCountType](../types/ItemCountType.md) | yes |
| [item](#item) | [ItemID](../types/ItemID.md) |  |
| [quality](#quality) | [QualityID](../types/QualityID.md) | yes |
| [type](#type) | `"give-item"` |  |
| [use_icon_overlay_constant](#use-icon-overlay-constant) | [boolean](../types/boolean.md) | yes |

### count

**Type:** [ItemCountType](../types/ItemCountType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= `1`.

### item

**Type:** [ItemID](../types/ItemID.md)

### quality

**Type:** [QualityID](../types/QualityID.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'normal'}`

### type

**Type:** `"give-item"`

### use_icon_overlay_constant

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `false`, do not draw the small "constant" icon over the technology effect icon.
