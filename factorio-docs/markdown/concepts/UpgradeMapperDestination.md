# UpgradeMapperDestination

_concept_

**Definition:** table{module_limit, module_slots, name, quality, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [module_limit](#module-limit) | [uint16](../concepts/uint16.md) | yes |
| [module_slots](#module-slots) | array[[BlueprintItemIDAndQualityIDPair](../concepts/BlueprintItemIDAndQualityIDPair.md)] | yes |
| [name](#name) | [string](../concepts/string.md) | yes |
| [quality](#quality) | [string](../concepts/string.md) | yes |
| [type](#type) | `"item"` ∣ `"entity"` |  |

### module_limit

**Type:** [uint16](../concepts/uint16.md) · _optional_

When upgrading modules, this defines the maximum number of this module to be installed in the destination entity. `0` or `nil` means no limit.

### module_slots

**Type:** array[[BlueprintItemIDAndQualityIDPair](../concepts/BlueprintItemIDAndQualityIDPair.md)] · _optional_

When upgrading entities, this defines explicit modules to be installed in the destination entity. Lists empty slots as `{}`.

### name

**Type:** [string](../concepts/string.md) · _optional_

Name of the item or entity.

### quality

**Type:** [string](../concepts/string.md) · _optional_

Name of the quality prototype.

### type

**Type:** `"item"` ∣ `"entity"`
