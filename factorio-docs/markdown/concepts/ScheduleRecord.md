# ScheduleRecord

_concept_

**Definition:** table{allows_unloading, created_by_interrupt, rail, rail_direction, station, temporary, wait_conditions}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [allows_unloading](#allows-unloading) | [boolean](../concepts/boolean.md) | yes |
| [created_by_interrupt](#created-by-interrupt) | [boolean](../concepts/boolean.md) | yes |
| [rail](#rail) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [rail_direction](#rail-direction) | [defines.rail_direction](../defines/defines.md) | yes |
| [station](#station) | [string](../concepts/string.md) | yes |
| [temporary](#temporary) | [boolean](../concepts/boolean.md) | yes |
| [wait_conditions](#wait-conditions) | array[[WaitCondition](../concepts/WaitCondition.md)] | yes |

### allows_unloading

**Type:** [boolean](../concepts/boolean.md) · _optional_

### created_by_interrupt

**Type:** [boolean](../concepts/boolean.md) · _optional_

### rail

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

### rail_direction

**Type:** [defines.rail_direction](../defines/defines.md) · _optional_

When a train is allowed to reach rail target from any direction it will be `nil`. If rail has to be reached from specific direction, this value allows to choose the direction. This value corresponds to [LuaEntity::connected_rail_direction](../classes/LuaEntity.md#connected-rail-direction) of a TrainStop.

### station

**Type:** [string](../concepts/string.md) · _optional_

Name of the station.

### temporary

**Type:** [boolean](../concepts/boolean.md) · _optional_

### wait_conditions

**Type:** array[[WaitCondition](../concepts/WaitCondition.md)] · _optional_
