# ArithmeticCombinatorParameters

_concept_

**Definition:** table{first_constant, first_signal, first_signal_networks, operation, output_signal, second_constant, second_signal, second_signal_networks}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [first_constant](#first-constant) | [int32](../concepts/int32.md) | yes |
| [first_signal](#first-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [first_signal_networks](#first-signal-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [operation](#operation) | [ArithmeticCombinatorParameterOperation](../concepts/ArithmeticCombinatorParameterOperation.md) | yes |
| [output_signal](#output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [second_constant](#second-constant) | [int32](../concepts/int32.md) | yes |
| [second_signal](#second-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [second_signal_networks](#second-signal-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |

### first_constant

**Type:** [int32](../concepts/int32.md) · _optional_

Constant to use as the first argument of the operation. Has no effect when `first_signal` is set. Defaults to `0`.

### first_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

First signal to use in an operation. If not specified, the second argument will be the value of `first_constant`.

### first_signal_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

Which circuit networks (red/green) to read `first_signal` from. Defaults to both.

### operation

**Type:** [ArithmeticCombinatorParameterOperation](../concepts/ArithmeticCombinatorParameterOperation.md) · _optional_

When not specified, defaults to `"*"`.

### output_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

Specifies the signal to output.

### second_constant

**Type:** [int32](../concepts/int32.md) · _optional_

Constant to use as the second argument of the operation. Has no effect when `second_signal` is set. Defaults to `0`.

### second_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

Second signal to use in an operation. If not specified, the second argument will be the value of `second_constant`.

### second_signal_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

Which circuit networks (red/green) to read `second_signal` from. Defaults to both.
