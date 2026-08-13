# PollutionMapSettings

_concept_

These values are for the time frame of one second (60 ticks).

**Definition:** table{ageing, diffusion_ratio, enabled, enemy_attack_pollution_consumption_modifier, expected_max_per_chunk, max_pollution_to_restore_trees, min_pollution_to_damage_trees, min_to_diffuse, min_to_show_per_chunk, pollution_per_tree_damage, pollution_restored_per_tree_damage, pollution_with_max_forest_damage}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [ageing](#ageing) | [double](../concepts/double.md) |  |
| [diffusion_ratio](#diffusion-ratio) | [double](../concepts/double.md) |  |
| [enabled](#enabled) | [boolean](../concepts/boolean.md) |  |
| [enemy_attack_pollution_consumption_modifier](#enemy-attack-pollution-consumption-modifier) | [double](../concepts/double.md) |  |
| [expected_max_per_chunk](#expected-max-per-chunk) | [double](../concepts/double.md) |  |
| [max_pollution_to_restore_trees](#max-pollution-to-restore-trees) | [double](../concepts/double.md) |  |
| [min_pollution_to_damage_trees](#min-pollution-to-damage-trees) | [double](../concepts/double.md) |  |
| [min_to_diffuse](#min-to-diffuse) | [double](../concepts/double.md) |  |
| [min_to_show_per_chunk](#min-to-show-per-chunk) | [double](../concepts/double.md) |  |
| [pollution_per_tree_damage](#pollution-per-tree-damage) | [double](../concepts/double.md) |  |
| [pollution_restored_per_tree_damage](#pollution-restored-per-tree-damage) | [double](../concepts/double.md) |  |
| [pollution_with_max_forest_damage](#pollution-with-max-forest-damage) | [double](../concepts/double.md) |  |

### ageing

**Type:** [double](../concepts/double.md)

The amount of pollution eaten by a chunk's tiles as a percentage of 1. Also known as absorption modifier. Defaults to `1`.

### diffusion_ratio

**Type:** [double](../concepts/double.md)

The amount that is diffused to a neighboring chunk (possibly repeated for other directions as well). Defaults to `0.02`.

### enabled

**Type:** [boolean](../concepts/boolean.md)

Whether pollution is enabled at all.

### enemy_attack_pollution_consumption_modifier

**Type:** [double](../concepts/double.md)

Defaults to `1`.

### expected_max_per_chunk

**Type:** [double](../concepts/double.md)

Any amount of pollution larger than this value is visualized as this value instead. Defaults to `150`.

### max_pollution_to_restore_trees

**Type:** [double](../concepts/double.md)

Defaults to `20`.

### min_pollution_to_damage_trees

**Type:** [double](../concepts/double.md)

Defaults to `60`.

### min_to_diffuse

**Type:** [double](../concepts/double.md)

The amount of PUs that need to be in a chunk for it to start diffusing. Defaults to `15`.

### min_to_show_per_chunk

**Type:** [double](../concepts/double.md)

Any amount of pollution smaller than this value (but bigger than zero) is visualized as this value instead. Defaults to `50`.

### pollution_per_tree_damage

**Type:** [double](../concepts/double.md)

Defaults to `50`.

### pollution_restored_per_tree_damage

**Type:** [double](../concepts/double.md)

Defaults to `10`.

### pollution_with_max_forest_damage

**Type:** [double](../concepts/double.md)

Defaults to `150`.
