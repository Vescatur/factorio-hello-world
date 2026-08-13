# MapSettings

_concept_

Various game-related settings. Updating any of the attributes will immediately take effect in the game engine.

**Example:**

```
-- Increase the number of short paths the pathfinder can cache.
game.map_settings.path_finder.short_cache_size = 15
```

**Definition:** LuaStruct{asteroids, enemy_evolution, enemy_expansion, max_failed_behavior_count, path_finder, pollution, unit_group}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [asteroids](#asteroids) | [AsteroidMapSettings](../concepts/AsteroidMapSettings.md) |  |
| [enemy_evolution](#enemy-evolution) | [EnemyEvolutionMapSettings](../concepts/EnemyEvolutionMapSettings.md) |  |
| [enemy_expansion](#enemy-expansion) | [EnemyExpansionMapSettings](../concepts/EnemyExpansionMapSettings.md) |  |
| [max_failed_behavior_count](#max-failed-behavior-count) | [uint32](../concepts/uint32.md) |  |
| [path_finder](#path-finder) | [PathFinderMapSettings](../concepts/PathFinderMapSettings.md) |  |
| [pollution](#pollution) | [PollutionMapSettings](../concepts/PollutionMapSettings.md) |  |
| [unit_group](#unit-group) | [UnitGroupMapSettings](../concepts/UnitGroupMapSettings.md) |  |

### asteroids

**Read:** [AsteroidMapSettings](../concepts/AsteroidMapSettings.md) · **Write:** [AsteroidMapSettings](../concepts/AsteroidMapSettings.md)

### enemy_evolution

**Read:** [EnemyEvolutionMapSettings](../concepts/EnemyEvolutionMapSettings.md) · **Write:** [EnemyEvolutionMapSettings](../concepts/EnemyEvolutionMapSettings.md)

### enemy_expansion

**Read:** [EnemyExpansionMapSettings](../concepts/EnemyExpansionMapSettings.md) · **Write:** [EnemyExpansionMapSettings](../concepts/EnemyExpansionMapSettings.md)

### max_failed_behavior_count

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

If a behavior fails this many times, the enemy (or enemy group) is destroyed. This solves biters getting stuck within their own base.

### path_finder

**Read:** [PathFinderMapSettings](../concepts/PathFinderMapSettings.md) · **Write:** [PathFinderMapSettings](../concepts/PathFinderMapSettings.md)

### pollution

**Read:** [PollutionMapSettings](../concepts/PollutionMapSettings.md) · **Write:** [PollutionMapSettings](../concepts/PollutionMapSettings.md)

### unit_group

**Read:** [UnitGroupMapSettings](../concepts/UnitGroupMapSettings.md) · **Write:** [UnitGroupMapSettings](../concepts/UnitGroupMapSettings.md)
