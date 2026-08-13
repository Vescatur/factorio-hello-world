# SelectedPrototypeData

_concept_

**Definition:** table{base_type, derived_type, name, quality}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [base_type](#base-type) | [IDType](../concepts/IDType.md) |  |
| [derived_type](#derived-type) | [string](../concepts/string.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [quality](#quality) | [string](../concepts/string.md) | yes |

### base_type

**Type:** [IDType](../concepts/IDType.md)

The base type of the prototype. E.g. `"entity"`.

### derived_type

**Type:** [string](../concepts/string.md)

The `type` of the prototype. E.g. `"tree"`.

### name

**Type:** [string](../concepts/string.md)

The `name` of the prototype. E.g. `"tree-05"`.

### quality

**Type:** [string](../concepts/string.md) · _optional_

The `name` of the quality prototype if any. E.g. `"normal"`.
