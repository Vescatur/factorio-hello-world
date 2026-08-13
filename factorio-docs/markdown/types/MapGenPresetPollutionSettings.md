# MapGenPresetPollutionSettings

_type_

The pollution settings, the values are for 60 ticks (1 second).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [ageing](#ageing) | [double](../types/double.md) | yes |
| [diffusion_ratio](#diffusion-ratio) | [double](../types/double.md) | yes |
| [enabled](#enabled) | [boolean](../types/boolean.md) | yes |
| [enemy_attack_pollution_consumption_modifier](#enemy-attack-pollution-consumption-modifier) | [double](../types/double.md) | yes |
| [min_pollution_to_damage_trees](#min-pollution-to-damage-trees) | [double](../types/double.md) | yes |
| [pollution_restored_per_tree_damage](#pollution-restored-per-tree-damage) | [double](../types/double.md) | yes |

### ageing

**Type:** [double](../types/double.md) · _optional_

Must be >= 0.1. Also known as absorption modifier.

### diffusion_ratio

**Type:** [double](../types/double.md) · _optional_

Must be <= 0.25. Amount that is diffused to neighboring chunks.

### enabled

**Type:** [boolean](../types/boolean.md) · _optional_

### enemy_attack_pollution_consumption_modifier

**Type:** [double](../types/double.md) · _optional_

Must be >= 0.1.

### min_pollution_to_damage_trees

**Type:** [double](../types/double.md) · _optional_

### pollution_restored_per_tree_damage

**Type:** [double](../types/double.md) · _optional_
