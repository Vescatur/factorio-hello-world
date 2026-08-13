# DeciderCombinatorCondition

_concept_

**Definition:** table{comparator, compare_type, constant, first_signal, first_signal_networks, second_signal, second_signal_networks}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [comparator](#comparator) | [ComparatorString](../concepts/ComparatorString.md) | yes |
| [compare_type](#compare-type) | `"and"` ∣ `"or"` | yes |
| [constant](#constant) | [int32](../concepts/int32.md) | yes |
| [first_signal](#first-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [first_signal_networks](#first-signal-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [second_signal](#second-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [second_signal_networks](#second-signal-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |

### comparator

**Type:** [ComparatorString](../concepts/ComparatorString.md) · _optional_

Specifies how the inputs should be compared. If not specified, defaults to `"<"`.

### compare_type

**Type:** `"and"` ∣ `"or"` · _optional_

Tells how this condition is compared with the preceding conditions in the corresponding `conditions` array. Defaults to `"or"`.

### constant

**Type:** [int32](../concepts/int32.md) · _optional_

Constant to compare `first_signal` to. Has no effect when `second_signal` is set. When neither `second_signal` nor `constant` are specified, the effect is as though `constant` were specified with the value `0`.

### first_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

Defaults to blank

### first_signal_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

Which circuit networks (red/green) to read `first_signal` from. Defaults to both.

### second_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

What to compare `first_signal` to. If not specified, `first_signal` will be compared to `constant`.

### second_signal_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

Which circuit networks (red/green) to read `second_signal` from. Defaults to both.
