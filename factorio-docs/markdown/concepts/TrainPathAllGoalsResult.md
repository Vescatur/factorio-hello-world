# TrainPathAllGoalsResult

_concept_

**Definition:** table{accessible, amount_accessible, penalties, steps_count}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [accessible](#accessible) | array[[boolean](../concepts/boolean.md)] |  |
| [amount_accessible](#amount-accessible) | [uint32](../concepts/uint32.md) |  |
| [penalties](#penalties) | array[[double](../concepts/double.md)] | yes |
| [steps_count](#steps-count) | [uint32](../concepts/uint32.md) |  |

### accessible

**Type:** array[[boolean](../concepts/boolean.md)]

Array of the same length as requested goals: each field will tell if related goal is accessible for the train.

### amount_accessible

**Type:** [uint32](../concepts/uint32.md)

Amount of goals that are accessible.

### penalties

**Type:** array[[double](../concepts/double.md)] · _optional_

Array of the same length as requested goals. Only present if request type was `"all-goals-penalties"`.

### steps_count

**Type:** [uint32](../concepts/uint32.md)

Amount of steps pathfinder performed. This is a measure of how expensive this search was.
