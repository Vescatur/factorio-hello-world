# SharedProbabilityDefinition

_concept_

**Definition:** table{max, min}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [max](#max) | [double](../concepts/double.md) |  |
| [min](#min) | [double](../concepts/double.md) |  |

### max

**Type:** [double](../concepts/double.md)

Upper end of the range of shared roll values that will allow product to be given. Must be >= `min` and <= `1`.

### min

**Type:** [double](../concepts/double.md)

Lower end of the range of shared roll values that will allow product to be given. Must be >= `0` and <= `max`.
