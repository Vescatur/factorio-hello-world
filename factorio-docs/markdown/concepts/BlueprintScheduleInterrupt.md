# BlueprintScheduleInterrupt

_concept_

**Definition:** table{conditions, inside_interrupt, name, targets}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [conditions](#conditions) | array[[WaitCondition](../concepts/WaitCondition.md)] | yes |
| [inside_interrupt](#inside-interrupt) | [boolean](../concepts/boolean.md) | yes |
| [name](#name) | [string](../concepts/string.md) | yes |
| [targets](#targets) | array[[BlueprintScheduleRecord](../concepts/BlueprintScheduleRecord.md)] | yes |

### conditions

**Type:** array[[WaitCondition](../concepts/WaitCondition.md)] · _optional_

### inside_interrupt

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### name

**Type:** [string](../concepts/string.md) · _optional_

Defaults to an empty string.

### targets

**Type:** array[[BlueprintScheduleRecord](../concepts/BlueprintScheduleRecord.md)] · _optional_
