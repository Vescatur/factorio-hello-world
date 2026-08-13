# InsertItemTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [ItemCountType](../types/ItemCountType.md) | yes |
| [item](#item) | [ItemID](../types/ItemID.md) |  |
| [quality](#quality) | [QualityID](../types/QualityID.md) | yes |
| [type](#type) | `"insert-item"` |  |

### count

**Type:** [ItemCountType](../types/ItemCountType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### item

**Type:** [ItemID](../types/ItemID.md)

Name of the [ItemPrototype](../prototypes/ItemPrototype.md) that should be created.

### quality

**Type:** [QualityID](../types/QualityID.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'normal'}`

### type

**Type:** `"insert-item"`
