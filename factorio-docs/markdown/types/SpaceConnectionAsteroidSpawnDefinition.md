# SpaceConnectionAsteroidSpawnDefinition

_type_

**Definition:** struct (see properties below) ∣ tuple[[EntityID](../types/EntityID.md), array[[SpaceConnectionAsteroidSpawnPoint](../types/SpaceConnectionAsteroidSpawnPoint.md)]]

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [asteroid](#asteroid) | [EntityID](../types/EntityID.md) ∣ [AsteroidChunkID](../types/AsteroidChunkID.md) |  |
| [spawn_points](#spawn-points) | array[[SpaceConnectionAsteroidSpawnPoint](../types/SpaceConnectionAsteroidSpawnPoint.md)] |  |
| [type](#type) | `"entity"` ∣ `"asteroid-chunk"` | yes |

### asteroid

**Type:** [EntityID](../types/EntityID.md) ∣ [AsteroidChunkID](../types/AsteroidChunkID.md)

The type this is loaded as depends on `type`.

### spawn_points

**Type:** array[[SpaceConnectionAsteroidSpawnPoint](../types/SpaceConnectionAsteroidSpawnPoint.md)]

### type

**Type:** `"entity"` ∣ `"asteroid-chunk"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'entity'}`
