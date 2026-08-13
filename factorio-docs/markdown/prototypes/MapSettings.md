# MapSettings

_prototype_

**Prototype type string:** `type = "map-settings"`

The default map settings.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [asteroids](#asteroids) | [AsteroidSettings](../types/AsteroidSettings.md) |  |
| [difficulty_settings](#difficulty-settings) | [DifficultySettings](../types/DifficultySettings.md) |  |
| [enemy_evolution](#enemy-evolution) | [EnemyEvolutionSettings](../types/EnemyEvolutionSettings.md) |  |
| [enemy_expansion](#enemy-expansion) | [EnemyExpansionSettings](../types/EnemyExpansionSettings.md) |  |
| [max_failed_behavior_count](#max-failed-behavior-count) | [uint32](../types/uint32.md) |  |
| [name](#name) | [string](../types/string.md) |  |
| [path_finder](#path-finder) | [PathFinderSettings](../types/PathFinderSettings.md) |  |
| [pollution](#pollution) | [PollutionSettings](../types/PollutionSettings.md) |  |
| [type](#type) | `"map-settings"` |  |
| [unit_group](#unit-group) | [UnitGroupSettings](../types/UnitGroupSettings.md) |  |

### asteroids

**Type:** [AsteroidSettings](../types/AsteroidSettings.md)

### difficulty_settings

**Type:** [DifficultySettings](../types/DifficultySettings.md)

### enemy_evolution

**Type:** [EnemyEvolutionSettings](../types/EnemyEvolutionSettings.md)

### enemy_expansion

**Type:** [EnemyExpansionSettings](../types/EnemyExpansionSettings.md)

### max_failed_behavior_count

**Type:** [uint32](../types/uint32.md)

If a behavior fails this many times, the enemy (or enemy group) is destroyed. This solves biters stuck within their own base.

### name

**Type:** [string](../types/string.md)

Name of the map-settings. Base game uses "map-settings".

### path_finder

**Type:** [PathFinderSettings](../types/PathFinderSettings.md)

### pollution

**Type:** [PollutionSettings](../types/PollutionSettings.md)

### type

**Type:** `"map-settings"`

### unit_group

**Type:** [UnitGroupSettings](../types/UnitGroupSettings.md)
