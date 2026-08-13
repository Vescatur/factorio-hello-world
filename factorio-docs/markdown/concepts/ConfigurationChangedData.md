# ConfigurationChangedData

_concept_

**Definition:** table{migration_applied, migrations, mod_changes, mod_startup_settings_changed, new_version, old_version}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [migration_applied](#migration-applied) | [boolean](../concepts/boolean.md) |  |
| [migrations](#migrations) | dictionary[[IDType](../concepts/IDType.md) → dictionary[[string](../concepts/string.md) → [string](../concepts/string.md)]] |  |
| [mod_changes](#mod-changes) | dictionary[[string](../concepts/string.md) → [ModChangeData](../concepts/ModChangeData.md)] |  |
| [mod_startup_settings_changed](#mod-startup-settings-changed) | [boolean](../concepts/boolean.md) |  |
| [new_version](#new-version) | [string](../concepts/string.md) | yes |
| [old_version](#old-version) | [string](../concepts/string.md) | yes |

### migration_applied

**Type:** [boolean](../concepts/boolean.md)

`true` when mod prototype migrations have been applied since the last time this save was loaded.

### migrations

**Type:** dictionary[[IDType](../concepts/IDType.md) → dictionary[[string](../concepts/string.md) → [string](../concepts/string.md)]]

Dictionary of prototype changes due to [migrations](../auxiliary/migrations.md). The inner dictionary maps the old prototype name to the new prototype name. The new name will be an empty string if the prototype was removed. Entries are omitted if the old and new prototype name are the same.

### mod_changes

**Type:** dictionary[[string](../concepts/string.md) → [ModChangeData](../concepts/ModChangeData.md)]

Dictionary of mod changes. It is indexed by mod name.

### mod_startup_settings_changed

**Type:** [boolean](../concepts/boolean.md)

`true` when mod startup settings have changed since the last time this save was loaded.

### new_version

**Type:** [string](../concepts/string.md) · _optional_

New version of the map. Present only when loading map version other than the current version.

### old_version

**Type:** [string](../concepts/string.md) · _optional_

Old version of the map. Present only when loading map version other than the current version.
