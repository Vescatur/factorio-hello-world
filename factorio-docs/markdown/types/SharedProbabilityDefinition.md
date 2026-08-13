# SharedProbabilityDefinition

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [max](#max) | [double](../types/double.md) |  |
| [min](#min) | [double](../types/double.md) |  |

### max

**Type:** [double](../types/double.md)

Upper end of the range of shared roll values that will allow product to be given. Must be >= `min` and <= `1`.

### min

**Type:** [double](../types/double.md)

Lower end of the range of shared roll values that will allow product to be given. Must be >= `0` and <= `max`.
