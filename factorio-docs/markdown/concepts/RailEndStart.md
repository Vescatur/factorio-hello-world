# RailEndStart

_concept_

**Definition:** table{allow_path_within_segment, direction, is_front, priority, rail}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [allow_path_within_segment](#allow-path-within-segment) | [boolean](../concepts/boolean.md) | yes |
| [direction](#direction) | [defines.rail_direction](../defines/defines.md) |  |
| [is_front](#is-front) | [boolean](../concepts/boolean.md) | yes |
| [priority](#priority) | [uint8](../concepts/uint8.md) | yes |
| [rail](#rail) | [LuaEntity](../classes/LuaEntity.md) |  |

### allow_path_within_segment

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `true`. Providing false will cause the pathfinder to reject a path that starts here and ends in the same segment as the path would be too short to provide correct alignment with a goal.

### direction

**Type:** [defines.rail_direction](../defines/defines.md)

### is_front

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### priority

**Type:** [uint8](../concepts/uint8.md) · _optional_

Start priority. Defaults to `50`.

### rail

**Type:** [LuaEntity](../classes/LuaEntity.md)
