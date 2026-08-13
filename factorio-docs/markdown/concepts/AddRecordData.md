# AddRecordData

_concept_

**Definition:** table{allows_unloading, created_by_interrupt, index, rail, rail_direction, station, temporary, wait_conditions}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [allows_unloading](#allows-unloading) | [boolean](../concepts/boolean.md) | yes |
| [created_by_interrupt](#created-by-interrupt) | [boolean](../concepts/boolean.md) | yes |
| [index](#index) | [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md) | yes |
| [rail](#rail) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [rail_direction](#rail-direction) | [defines.rail_direction](../defines/defines.md) | yes |
| [station](#station) | [string](../concepts/string.md) | yes |
| [temporary](#temporary) | [boolean](../concepts/boolean.md) | yes |
| [wait_conditions](#wait-conditions) | array[[WaitCondition](../concepts/WaitCondition.md)] | yes |

### allows_unloading

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `true`.

### created_by_interrupt

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### index

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md) · _optional_

If record position is not given, the record is appended.

### rail

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

### rail_direction

**Type:** [defines.rail_direction](../defines/defines.md) · _optional_

When `rail` is given, this can be provided to further narrow down direction from which that rail should be approached.

### station

**Type:** [string](../concepts/string.md) · _optional_

One of station or rail must be given.

### temporary

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### wait_conditions

**Type:** array[[WaitCondition](../concepts/WaitCondition.md)] · _optional_
