# ModChangeData

_concept_

**Definition:** table{new_version, old_version}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [new_version](#new-version) | [string](../concepts/string.md) | yes |
| [old_version](#old-version) | [string](../concepts/string.md) | yes |

### new_version

**Type:** [string](../concepts/string.md) · _optional_

New version of the mod. `nil` if the mod is no longer present (i.e. it was just removed).

### old_version

**Type:** [string](../concepts/string.md) · _optional_

Old version of the mod. `nil` if the mod wasn't previously present (i.e. it was just added).
