# RailEndGoal

_concept_

**Definition:** table{direction, priority, rail}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [direction](#direction) | [defines.rail_direction](../defines/defines.md) |  |
| [priority](#priority) | [uint8](../concepts/uint8.md) | yes |
| [rail](#rail) | [LuaEntity](../classes/LuaEntity.md) |  |

### direction

**Type:** [defines.rail_direction](../defines/defines.md)

### priority

**Type:** [uint8](../concepts/uint8.md) · _optional_

Goal priority. If not provided, defaults to 50.

### rail

**Type:** [LuaEntity](../classes/LuaEntity.md)

Rail target.
