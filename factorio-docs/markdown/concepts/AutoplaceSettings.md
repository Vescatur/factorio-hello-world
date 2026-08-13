# AutoplaceSettings

_concept_

**Definition:** table{settings, treat_missing_as_default}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [settings](#settings) | dictionary[[string](../concepts/string.md) → [AutoplaceControl](../concepts/AutoplaceControl.md)] | yes |
| [treat_missing_as_default](#treat-missing-as-default) | [boolean](../concepts/boolean.md) | yes |

### settings

**Type:** dictionary[[string](../concepts/string.md) → [AutoplaceControl](../concepts/AutoplaceControl.md)] · _optional_

Always defined when reading autoplace settings.

### treat_missing_as_default

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether missing autoplace names for this type should be default enabled. Always defined when reading autoplace settings.
