# SpawnPoint

_type_

The definition of a evolution and probability weights for a [spawnable unit](../types/UnitSpawnDefinition.md) for a [EnemySpawnerPrototype](../prototypes/EnemySpawnerPrototype.md).

It can be specified as a table with named or numbered keys, but not a mix of both. If this is specified as a table with numbered keys then the first value is the evolution factor and the second is the spawn weight.

**Definition:** struct (see properties below) ∣ tuple[[double](../types/double.md), [double](../types/double.md)]

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [evolution_factor](#evolution-factor) | [double](../types/double.md) |  |
| [spawn_weight](#spawn-weight) | [double](../types/double.md) |  |

### evolution_factor

**Type:** [double](../types/double.md)

### spawn_weight

**Type:** [double](../types/double.md)

Must be `>= 0`.
