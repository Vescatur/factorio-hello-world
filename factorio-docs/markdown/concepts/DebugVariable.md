# DebugVariable

_concept_

The supported subset of [DebugAdapter Variable](https://microsoft.github.io/debug-adapter-protocol/specification#Types_Variable)

**Definition:** table{indexedVariables, name, namedVariables, presentationHint, type, value, variablesReference}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [indexedVariables](#indexedvariables) | [int32](../concepts/int32.md) | yes |
| [name](#name) | [string](../concepts/string.md) |  |
| [namedVariables](#namedvariables) | [int32](../concepts/int32.md) | yes |
| [presentationHint](#presentationhint) | [DebugVariablePresentationHint](../concepts/DebugVariablePresentationHint.md) | yes |
| [type](#type) | [string](../concepts/string.md) | yes |
| [value](#value) | [string](../concepts/string.md) |  |
| [variablesReference](#variablesreference) | [int32](../concepts/int32.md) | yes |

### indexedVariables

**Type:** [int32](../concepts/int32.md) · _optional_

### name

**Type:** [string](../concepts/string.md)

### namedVariables

**Type:** [int32](../concepts/int32.md) · _optional_

### presentationHint

**Type:** [DebugVariablePresentationHint](../concepts/DebugVariablePresentationHint.md) · _optional_

### type

**Type:** [string](../concepts/string.md) · _optional_

### value

**Type:** [string](../concepts/string.md)

### variablesReference

**Type:** [int32](../concepts/int32.md) · _optional_
