# UpgradeMapperSource

_concept_

**Definition:** table{comparator, module_filter, name, quality, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [comparator](#comparator) | [ComparatorString](../concepts/ComparatorString.md) | yes |
| [module_filter](#module-filter) | [EntityIDFilter](../concepts/EntityIDFilter.md) | yes |
| [name](#name) | [string](../concepts/string.md) | yes |
| [quality](#quality) | [string](../concepts/string.md) | yes |
| [type](#type) | `"item"` ∣ `"entity"` |  |

### comparator

**Type:** [ComparatorString](../concepts/ComparatorString.md) · _optional_

The quality comparison type.

### module_filter

**Type:** [EntityIDFilter](../concepts/EntityIDFilter.md) · _optional_

When upgrading modules, this defines the specific entities to apply the upgrade to. `nil` applies it to all entities.

### name

**Type:** [string](../concepts/string.md) · _optional_

Name of the item or entity.

### quality

**Type:** [string](../concepts/string.md) · _optional_

Name of the quality prototype.

### type

**Type:** `"item"` ∣ `"entity"`
