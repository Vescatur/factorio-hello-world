# EnemyExpansionSettings

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [build_base_unit_dispatch_cooldown](#build-base-unit-dispatch-cooldown) | [uint32](../types/uint32.md) |  |
| [building_coefficient](#building-coefficient) | [double](../types/double.md) |  |
| [enabled](#enabled) | [boolean](../types/boolean.md) |  |
| [enemy_building_influence_radius](#enemy-building-influence-radius) | [uint32](../types/uint32.md) |  |
| [evolution_group_size_factor](#evolution-group-size-factor) | [double](../types/double.md) |  |
| [friendly_base_influence_radius](#friendly-base-influence-radius) | [uint32](../types/uint32.md) |  |
| [max_colliding_tiles_coefficient](#max-colliding-tiles-coefficient) | [double](../types/double.md) |  |
| [max_expansion_cooldown](#max-expansion-cooldown) | [uint32](../types/uint32.md) |  |
| [max_expansion_distance](#max-expansion-distance) | [uint32](../types/uint32.md) |  |
| [min_expansion_cooldown](#min-expansion-cooldown) | [uint32](../types/uint32.md) |  |
| [min_expansion_distance](#min-expansion-distance) | [uint32](../types/uint32.md) |  |
| [neighbouring_base_chunk_coefficient](#neighbouring-base-chunk-coefficient) | [double](../types/double.md) |  |
| [neighbouring_chunk_coefficient](#neighbouring-chunk-coefficient) | [double](../types/double.md) |  |
| [other_base_coefficient](#other-base-coefficient) | [double](../types/double.md) |  |
| [settler_group_max_size](#settler-group-max-size) | [uint32](../types/uint32.md) |  |
| [settler_group_min_size](#settler-group-min-size) | [uint32](../types/uint32.md) |  |

### build_base_unit_dispatch_cooldown

**Type:** [uint32](../types/uint32.md)

Cooldown in ticks for dispatching units when building bases.

### building_coefficient

**Type:** [double](../types/double.md)

### enabled

**Type:** [boolean](../types/boolean.md)

### enemy_building_influence_radius

**Type:** [uint32](../types/uint32.md)

### evolution_group_size_factor

**Type:** [double](../types/double.md)

Exponential factor used to determine the size of the settler group based on the evolution factor. The size is calculated as: `size = random(min_size, max_size) * (evolution_group_size_factor ^ evolution_factor)`

### friendly_base_influence_radius

**Type:** [uint32](../types/uint32.md)

### max_colliding_tiles_coefficient

**Type:** [double](../types/double.md)

A chunk has to have at most this much percent unbuildable tiles for it to be considered a candidate. This is to avoid chunks full of water to be marked as candidates.

### max_expansion_cooldown

**Type:** [uint32](../types/uint32.md)

In ticks.

### max_expansion_distance

**Type:** [uint32](../types/uint32.md)

Distance in chunks from the furthest base around. This prevents expansions from reaching too far into the player's territory.

### min_expansion_cooldown

**Type:** [uint32](../types/uint32.md)

Ticks to expand to a single position for a base is used. Cooldown is calculated as follows: `cooldown = lerp(max_expansion_cooldown, min_expansion_cooldown, -e^2 + 2 * e)` where `lerp` is the linear interpolation function, and e is the current evolution factor.

### min_expansion_distance

**Type:** [uint32](../types/uint32.md)

Distance in chunks from the furthest base around to prevent expansions from being too close to existing bases.

### neighbouring_base_chunk_coefficient

**Type:** [double](../types/double.md)

### neighbouring_chunk_coefficient

**Type:** [double](../types/double.md)

### other_base_coefficient

**Type:** [double](../types/double.md)

### settler_group_max_size

**Type:** [uint32](../types/uint32.md)

### settler_group_min_size

**Type:** [uint32](../types/uint32.md)

Size of the group that goes to build new base.
