# SpaceLocationAsteroidSpawnDefinition

_type_

**Inherits from:** [AsteroidSpawnPoint](../types/AsteroidSpawnPoint.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [asteroid](#asteroid) | [EntityID](../types/EntityID.md) ∣ [AsteroidChunkID](../types/AsteroidChunkID.md) |  |
| [type](#type) | `"entity"` ∣ `"asteroid-chunk"` | yes |

### asteroid

**Type:** [EntityID](../types/EntityID.md) ∣ [AsteroidChunkID](../types/AsteroidChunkID.md)

The type this is loaded as depends on `type`.

### type

**Type:** `"entity"` ∣ `"asteroid-chunk"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'entity'}`
