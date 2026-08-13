# InfinityInventoryFilter

_concept_

A single filter used by an infinity-filters instance.

**Definition:** table{count, index, mode, name, quality}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [ItemCountType](../concepts/ItemCountType.md) | yes |
| [index](#index) | [uint32](../concepts/uint32.md) | yes |
| [mode](#mode) | `"at-least"` ∣ `"at-most"` ∣ `"exactly"` | yes |
| [name](#name) | [ItemID](../concepts/ItemID.md) |  |
| [quality](#quality) | [QualityID](../concepts/QualityID.md) | yes |

### count

**Type:** [ItemCountType](../concepts/ItemCountType.md) · _optional_

The count of the filter. Defaults to 0.

### index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index of this filter in the filters list. Not required when writing a filter.

### mode

**Type:** `"at-least"` ∣ `"at-most"` ∣ `"exactly"` · _optional_

Defaults to `"at-least"`.

### name

**Type:** [ItemID](../concepts/ItemID.md)

Name of the item. When reading a filter, this is a string.

### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

Quality of the item. Defaults to `"normal"`. When reading a filter, this is a string.
