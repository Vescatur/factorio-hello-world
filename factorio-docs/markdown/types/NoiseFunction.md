# NoiseFunction

_type_

The advantage of noise functions over [noise expressions](../types/NoiseExpression.md) is that they have parameters.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [expression](#expression) | [NoiseExpression](../types/NoiseExpression.md) |  |
| [local_expressions](#local-expressions) | dictionary[[string](../types/string.md) → [NoiseExpression](../types/NoiseExpression.md)] | yes |
| [local_functions](#local-functions) | dictionary[[string](../types/string.md) → [NoiseFunction](../types/NoiseFunction.md)] | yes |
| [parameters](#parameters) | array[[string](../types/string.md)] |  |

### expression

**Type:** [NoiseExpression](../types/NoiseExpression.md)

### local_expressions

**Type:** dictionary[[string](../types/string.md) → [NoiseExpression](../types/NoiseExpression.md)] · _optional_

A map of expression name to expression.

Local expressions are meant to store data locally similar to local variables in Lua. Their purpose is to hold noise expressions used multiple times in the named noise expression, or just to tell the reader that the local expression has a specific purpose. Local expressions can access other local definitions and also function parameters, but recursive definitions aren't supported.

### local_functions

**Type:** dictionary[[string](../types/string.md) → [NoiseFunction](../types/NoiseFunction.md)] · _optional_

A map of function name to function.

Local functions serve the same purpose as local expressions - they aren't visible outside of the specific prototype and they have access to other local definitions.

### parameters

**Type:** array[[string](../types/string.md)]

The order of the parameters matters because functions can also be called with positional arguments.

A function can't have more than 255 parameters.
