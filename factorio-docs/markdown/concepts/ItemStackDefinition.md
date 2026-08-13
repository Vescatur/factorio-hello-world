# ItemStackDefinition

_concept_

**Definition:** table{ammo, count, custom_description, durability, health, name, quality, spoil_percent, tags}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [ammo](#ammo) | [float](../concepts/float.md) | yes |
| [count](#count) | [ItemCountType](../concepts/ItemCountType.md) | yes |
| [custom_description](#custom-description) | [LocalisedString](../concepts/LocalisedString.md) | yes |
| [durability](#durability) | [double](../concepts/double.md) | yes |
| [health](#health) | [float](../concepts/float.md) | yes |
| [name](#name) | [string](../concepts/string.md) |  |
| [quality](#quality) | [string](../concepts/string.md) | yes |
| [spoil_percent](#spoil-percent) | [double](../concepts/double.md) | yes |
| [tags](#tags) | [Tags](../concepts/Tags.md) | yes |

### ammo

**Type:** [float](../concepts/float.md) · _optional_

Amount of ammo in the ammo items in the stack.

### count

**Type:** [ItemCountType](../concepts/ItemCountType.md) · _optional_

Number of items the stack holds. Defaults to `1`.

### custom_description

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

Description of the items with tags in the stack.

### durability

**Type:** [double](../concepts/double.md) · _optional_

Durability of the tool items in the stack.

### health

**Type:** [float](../concepts/float.md) · _optional_

Health of the items in the stack. Defaults to `1.0`.

### name

**Type:** [string](../concepts/string.md)

Prototype name of the item the stack holds.

### quality

**Type:** [string](../concepts/string.md) · _optional_

Quality of the item the stack holds. Defaults to `"normal"`.

### spoil_percent

**Type:** [double](../concepts/double.md) · _optional_

The spoil percent for this item if the item can spoil. Defaults to `0`.

### tags

**Type:** [Tags](../concepts/Tags.md) · _optional_

Tags of the items with tags in the stack.
