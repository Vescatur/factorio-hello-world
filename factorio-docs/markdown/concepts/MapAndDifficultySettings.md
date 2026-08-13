# MapAndDifficultySettings

_concept_

A standard table containing all [MapSettings](../concepts/MapSettings.md) attributes plus an additional table that contains all [DifficultySettings](../concepts/DifficultySettings.md) properties.

**Definition:** table{asteroids, difficulty_settings, enemy_evolution, enemy_expansion, max_failed_behavior_count, path_finder, pollution, unit_group}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [asteroids](#asteroids) | [AsteroidMapSettings](../concepts/AsteroidMapSettings.md) |  |
| [difficulty_settings](#difficulty-settings) | [MapDifficultySettings](../concepts/MapDifficultySettings.md) |  |
| [enemy_evolution](#enemy-evolution) | [EnemyEvolutionMapSettings](../concepts/EnemyEvolutionMapSettings.md) |  |
| [enemy_expansion](#enemy-expansion) | [EnemyExpansionMapSettings](../concepts/EnemyExpansionMapSettings.md) |  |
| [max_failed_behavior_count](#max-failed-behavior-count) | [uint32](../concepts/uint32.md) |  |
| [path_finder](#path-finder) | [PathFinderMapSettings](../concepts/PathFinderMapSettings.md) |  |
| [pollution](#pollution) | [PollutionMapSettings](../concepts/PollutionMapSettings.md) |  |
| [unit_group](#unit-group) | [UnitGroupMapSettings](../concepts/UnitGroupMapSettings.md) |  |

### asteroids

**Type:** [AsteroidMapSettings](../concepts/AsteroidMapSettings.md)

### difficulty_settings

**Type:** [MapDifficultySettings](../concepts/MapDifficultySettings.md)

### enemy_evolution

**Type:** [EnemyEvolutionMapSettings](../concepts/EnemyEvolutionMapSettings.md)

### enemy_expansion

**Type:** [EnemyExpansionMapSettings](../concepts/EnemyExpansionMapSettings.md)

### max_failed_behavior_count

**Type:** [uint32](../concepts/uint32.md)

If a behavior fails this many times, the enemy (or enemy group) is destroyed. This solves biters getting stuck within their own base.

### path_finder

**Type:** [PathFinderMapSettings](../concepts/PathFinderMapSettings.md)

### pollution

**Type:** [PollutionMapSettings](../concepts/PollutionMapSettings.md)

### unit_group

**Type:** [UnitGroupMapSettings](../concepts/UnitGroupMapSettings.md)
