# MapGenPreset

_concept_

**Definition:** table{advanced_settings, basic_settings, default, order}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [advanced_settings](#advanced-settings) | [AdvancedMapGenSettings](../concepts/AdvancedMapGenSettings.md) | yes |
| [basic_settings](#basic-settings) | [MapGenSettings](../concepts/MapGenSettings.md) | yes |
| [default](#default) | [boolean](../concepts/boolean.md) | yes |
| [order](#order) | [string](../concepts/string.md) |  |

### advanced_settings

**Type:** [AdvancedMapGenSettings](../concepts/AdvancedMapGenSettings.md) · _optional_

### basic_settings

**Type:** [MapGenSettings](../concepts/MapGenSettings.md) · _optional_

### default

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether this is the preset that is selected by default.

### order

**Type:** [string](../concepts/string.md)

The string used to alphabetically sort the presets. It is a simple string that has no additional semantic meaning.
