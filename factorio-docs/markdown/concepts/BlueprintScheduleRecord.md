# BlueprintScheduleRecord

_concept_

**Definition:** table{allows_unloading, created_by_interrupt, station, temporary, wait_conditions}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [allows_unloading](#allows-unloading) | [boolean](../concepts/boolean.md) | yes |
| [created_by_interrupt](#created-by-interrupt) | [boolean](../concepts/boolean.md) | yes |
| [station](#station) | [string](../concepts/string.md) | yes |
| [temporary](#temporary) | [boolean](../concepts/boolean.md) | yes |
| [wait_conditions](#wait-conditions) | array[[WaitCondition](../concepts/WaitCondition.md)] | yes |

### allows_unloading

**Type:** [boolean](../concepts/boolean.md) · _optional_

### created_by_interrupt

**Type:** [boolean](../concepts/boolean.md) · _optional_

### station

**Type:** [string](../concepts/string.md) · _optional_

Name of the station.

### temporary

**Type:** [boolean](../concepts/boolean.md) · _optional_

### wait_conditions

**Type:** array[[WaitCondition](../concepts/WaitCondition.md)] · _optional_
