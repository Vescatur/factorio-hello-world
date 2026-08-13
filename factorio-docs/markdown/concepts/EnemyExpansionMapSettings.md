# EnemyExpansionMapSettings

_concept_

Candidate chunks are given scores to determine which one of them should be expanded into. This score takes into account various settings noted below. The iteration is over a square region centered around the chunk for which the calculation is done, and includes the central chunk as well. Distances are calculated as [Euclidean distance](https://en.wikipedia.org/wiki/Euclidean_distance).

The pseudocode algorithm to determine a chunk's score is as follows:

```
player = 0
for neighbour in all chunks within enemy_building_influence_radius from chunk :
  if neighbour has player buildings :
    player += neighbouring_chunk_coefficient ^ distance(chunk, neighbour)
      * building_coefficient
base = 0
for neighbour in all chunks within friendly_base_influence_radius from chunk :
  if neighbour has enemy bases :
    base += neighbouring_base_chunk_coefficient ^ distance(chunk, neighbour)
      * other_base_coefficient
score(chunk) = 1 / (1 + player + base)
```

**Definition:** table{build_base_unit_dispatch_cooldown, building_coefficient, enabled, enemy_building_influence_radius, friendly_base_influence_radius, max_colliding_tiles_coefficient, max_expansion_cooldown, max_expansion_distance, min_expansion_cooldown, min_expansion_distance, neighbouring_base_chunk_coefficient, neighbouring_chunk_coefficient, other_base_coefficient, settler_group_max_size, settler_group_min_size}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [build_base_unit_dispatch_cooldown](#build-base-unit-dispatch-cooldown) | [uint32](../concepts/uint32.md) |  |
| [building_coefficient](#building-coefficient) | [double](../concepts/double.md) |  |
| [enabled](#enabled) | [boolean](../concepts/boolean.md) |  |
| [enemy_building_influence_radius](#enemy-building-influence-radius) | [uint32](../concepts/uint32.md) |  |
| [friendly_base_influence_radius](#friendly-base-influence-radius) | [uint32](../concepts/uint32.md) |  |
| [max_colliding_tiles_coefficient](#max-colliding-tiles-coefficient) | [double](../concepts/double.md) |  |
| [max_expansion_cooldown](#max-expansion-cooldown) | [uint32](../concepts/uint32.md) |  |
| [max_expansion_distance](#max-expansion-distance) | [uint32](../concepts/uint32.md) |  |
| [min_expansion_cooldown](#min-expansion-cooldown) | [uint32](../concepts/uint32.md) |  |
| [min_expansion_distance](#min-expansion-distance) | [uint32](../concepts/uint32.md) |  |
| [neighbouring_base_chunk_coefficient](#neighbouring-base-chunk-coefficient) | [double](../concepts/double.md) |  |
| [neighbouring_chunk_coefficient](#neighbouring-chunk-coefficient) | [double](../concepts/double.md) |  |
| [other_base_coefficient](#other-base-coefficient) | [double](../concepts/double.md) |  |
| [settler_group_max_size](#settler-group-max-size) | [uint32](../concepts/uint32.md) |  |
| [settler_group_min_size](#settler-group-min-size) | [uint32](../concepts/uint32.md) |  |

### build_base_unit_dispatch_cooldown

**Type:** [uint32](../concepts/uint32.md)

Cooldown in ticks for dispatching units when building bases. Defaults to `60*30=1 800` ticks.

### building_coefficient

**Type:** [double](../concepts/double.md)

Defaults to `0.5`.

### enabled

**Type:** [boolean](../concepts/boolean.md)

Whether enemy expansion is enabled at all.

### enemy_building_influence_radius

**Type:** [uint32](../concepts/uint32.md)

Defaults to `3`.

### friendly_base_influence_radius

**Type:** [uint32](../concepts/uint32.md)

Defaults to `6`.

### max_colliding_tiles_coefficient

**Type:** [double](../concepts/double.md)

A chunk has to have at most this high of a percentage of unbuildable tiles for it to be considered a candidate to avoid chunks full of water as candidates. Defaults to `0.8`, or 80%.

### max_expansion_cooldown

**Type:** [uint32](../concepts/uint32.md)

The maximum time between expansions in ticks. The actual cooldown is adjusted to the current evolution levels. Defaults to `60*3 600=216 000` ticks.

### max_expansion_distance

**Type:** [uint32](../concepts/uint32.md)

Distance in chunks from the furthest base around to prevent expansions from reaching too far into the player's territory. Defaults to `5`.

### min_expansion_cooldown

**Type:** [uint32](../concepts/uint32.md)

The minimum time between expansions in ticks. The actual cooldown is adjusted to the current evolution levels. Defaults to `4*3 600=14 400` ticks.

### min_expansion_distance

**Type:** [uint32](../concepts/uint32.md)

Distance in chunks from the furthest base around to prevent expansions from being too close to existing bases. Defaults to `3`.

### neighbouring_base_chunk_coefficient

**Type:** [double](../concepts/double.md)

Defaults to `0.5`.

### neighbouring_chunk_coefficient

**Type:** [double](../concepts/double.md)

Defaults to `0.5`.

### other_base_coefficient

**Type:** [double](../concepts/double.md)

Defaults to `3.0`.

### settler_group_max_size

**Type:** [uint32](../concepts/uint32.md)

The maximum size of a biter group that goes to build a new base. This is multiplied by the evolution factor. Defaults to `20`.

### settler_group_min_size

**Type:** [uint32](../concepts/uint32.md)

The minimum size of a biter group that goes to build a new base. This is multiplied by the evolution factor. Defaults to `5`.
