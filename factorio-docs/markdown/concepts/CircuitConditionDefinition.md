# CircuitConditionDefinition

_concept_

**Definition:** table{comparator, constant, first_signal, fulfilled, second_signal}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [comparator](#comparator) | [ComparatorString](../concepts/ComparatorString.md) | yes |
| [constant](#constant) | [int32](../concepts/int32.md) | yes |
| [first_signal](#first-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [fulfilled](#fulfilled) | [boolean](../concepts/boolean.md) | yes |
| [second_signal](#second-signal) | [SignalID](../concepts/SignalID.md) | yes |

### comparator

**Type:** [ComparatorString](../concepts/ComparatorString.md) · _optional_

Specifies how the inputs should be compared. If not specified, defaults to `"<"`.

### constant

**Type:** [int32](../concepts/int32.md) · _optional_

Constant to compare `first_signal` to. Has no effect when `second_signal` is set. When neither `second_signal` nor `constant` are specified, the effect is as though `constant` were specified with the value `0`.

### first_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

Defaults to blank.

### fulfilled

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the condition is currently fulfilled.

### second_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

What to compare `first_signal` to. If not specified, `first_signal` will be compared to `constant`.
