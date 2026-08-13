# PollutionSettings

_type_

The pollution settings, the values are for 60 ticks (1 second).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [ageing](#ageing) | [double](../types/double.md) |  |
| [diffusion_ratio](#diffusion-ratio) | [double](../types/double.md) |  |
| [enabled](#enabled) | [boolean](../types/boolean.md) |  |
| [enemy_attack_pollution_consumption_modifier](#enemy-attack-pollution-consumption-modifier) | [double](../types/double.md) |  |
| [expected_max_per_chunk](#expected-max-per-chunk) | [double](../types/double.md) |  |
| [max_pollution_to_restore_trees](#max-pollution-to-restore-trees) | [double](../types/double.md) |  |
| [min_pollution_to_damage_trees](#min-pollution-to-damage-trees) | [double](../types/double.md) |  |
| [min_to_diffuse](#min-to-diffuse) | [double](../types/double.md) |  |
| [min_to_show_per_chunk](#min-to-show-per-chunk) | [double](../types/double.md) |  |
| [pollution_per_tree_damage](#pollution-per-tree-damage) | [double](../types/double.md) |  |
| [pollution_restored_per_tree_damage](#pollution-restored-per-tree-damage) | [double](../types/double.md) |  |
| [pollution_with_max_forest_damage](#pollution-with-max-forest-damage) | [double](../types/double.md) |  |

### ageing

**Type:** [double](../types/double.md)

Constant modifier a percentage of 1; the pollution eaten by a chunks tiles. Also known as absorption modifier.

### diffusion_ratio

**Type:** [double](../types/double.md)

Amount that is diffused to neighboring chunks.

### enabled

**Type:** [boolean](../types/boolean.md)

### enemy_attack_pollution_consumption_modifier

**Type:** [double](../types/double.md)

### expected_max_per_chunk

**Type:** [double](../types/double.md)

Anything bigger than this is visualized as this value.

### max_pollution_to_restore_trees

**Type:** [double](../types/double.md)

### min_pollution_to_damage_trees

**Type:** [double](../types/double.md)

### min_to_diffuse

**Type:** [double](../types/double.md)

This much pollution units must be on the chunk to start diffusing.

### min_to_show_per_chunk

**Type:** [double](../types/double.md)

Anything lower than this (but > 0) is visualized as this value.

### pollution_per_tree_damage

**Type:** [double](../types/double.md)

### pollution_restored_per_tree_damage

**Type:** [double](../types/double.md)

### pollution_with_max_forest_damage

**Type:** [double](../types/double.md)
