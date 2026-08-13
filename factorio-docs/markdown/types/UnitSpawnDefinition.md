# UnitSpawnDefinition

_type_

It can be specified as a table with named or numbered keys, but not a mix of both. If this is specified as a table with numbered keys then the first value is the unit and the second is the spawn points.

**Definition:** struct (see properties below) ∣ tuple[[EntityID](../types/EntityID.md), array[[SpawnPoint](../types/SpawnPoint.md)]]

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [spawn_points](#spawn-points) | array[[SpawnPoint](../types/SpawnPoint.md)] |  |
| [unit](#unit) | [EntityID](../types/EntityID.md) |  |

### spawn_points

**Type:** array[[SpawnPoint](../types/SpawnPoint.md)]

Array of evolution and probability info, with the following conditions:

- The `evolution_factor` must be ascending from entry to entry.

- The last entry's weight will be used when the `evolution_factor` is larger than the last entry.

- Weights are linearly interpolated between entries.

- Individual weights are scaled linearly so that the cumulative weight is `1`.

### unit

**Type:** [EntityID](../types/EntityID.md)
