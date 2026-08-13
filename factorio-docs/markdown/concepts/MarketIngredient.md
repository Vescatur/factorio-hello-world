# MarketIngredient

_concept_

**Definition:** table{count, name, quality}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [ItemCountType](../concepts/ItemCountType.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [quality](#quality) | [string](../concepts/string.md) | yes |

### count

**Type:** [ItemCountType](../concepts/ItemCountType.md)

Count of the item. Cannot be 0.

### name

**Type:** [string](../concepts/string.md)

Prototype name of the required item.

### quality

**Type:** [string](../concepts/string.md) · _optional_

Normal quality will be used if not specified.
