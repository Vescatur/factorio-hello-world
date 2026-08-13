# ItemIDAndQualityIDPair

_concept_

An item prototype with optional quality specification.

**Definition:** table{name, quality}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [ItemID](../concepts/ItemID.md) |  |
| [quality](#quality) | [QualityID](../concepts/QualityID.md) | yes |

### name

**Type:** [ItemID](../concepts/ItemID.md)

Item prototype. Returns `LuaItemPrototype` when read.

### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

Quality prototype. Normal quality will be used if not specified. Returns `LuaQualityPrototype` when read.
