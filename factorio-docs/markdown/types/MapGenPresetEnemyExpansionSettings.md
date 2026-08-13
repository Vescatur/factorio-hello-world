# MapGenPresetEnemyExpansionSettings

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [build_base_unit_dispatch_cooldown](#build-base-unit-dispatch-cooldown) | [uint32](../types/uint32.md) | yes |
| [enabled](#enabled) | [boolean](../types/boolean.md) | yes |
| [evolution_group_size_factor](#evolution-group-size-factor) | [double](../types/double.md) | yes |
| [max_expansion_cooldown](#max-expansion-cooldown) | [uint32](../types/uint32.md) | yes |
| [max_expansion_distance](#max-expansion-distance) | [uint32](../types/uint32.md) | yes |
| [min_expansion_cooldown](#min-expansion-cooldown) | [uint32](../types/uint32.md) | yes |
| [min_expansion_distance](#min-expansion-distance) | [uint32](../types/uint32.md) | yes |
| [settler_group_max_size](#settler-group-max-size) | [uint32](../types/uint32.md) | yes |
| [settler_group_min_size](#settler-group-min-size) | [uint32](../types/uint32.md) | yes |

### build_base_unit_dispatch_cooldown

**Type:** [uint32](../types/uint32.md) · _optional_

Cooldown in ticks for dispatching units when building bases.

### enabled

**Type:** [boolean](../types/boolean.md) · _optional_

### evolution_group_size_factor

**Type:** [double](../types/double.md) · _optional_

Factor by which the evolution factor influences the size of the settler group

### max_expansion_cooldown

**Type:** [uint32](../types/uint32.md) · _optional_

In ticks.

### max_expansion_distance

**Type:** [uint32](../types/uint32.md) · _optional_

Distance in chunks from the furthest base around. This prevents expansions from reaching too far into the player's territory.

### min_expansion_cooldown

**Type:** [uint32](../types/uint32.md) · _optional_

Ticks to expand to a single position for a base is used. Cooldown is calculated as follows: `cooldown = lerp(max_expansion_cooldown, min_expansion_cooldown, -e^2 + 2 * e)` where `lerp` is the linear interpolation function, and e is the current evolution factor.

### min_expansion_distance

**Type:** [uint32](../types/uint32.md) · _optional_

Distance in chunks from the furthest base around to prevent expansions from being too close to existing bases.

### settler_group_max_size

**Type:** [uint32](../types/uint32.md) · _optional_

### settler_group_min_size

**Type:** [uint32](../types/uint32.md) · _optional_

Size of the group that goes to build new base (the game interpolates between min size and max size based on evolution factor).
