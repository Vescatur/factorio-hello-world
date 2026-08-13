# DeciderCombinatorOutput

_concept_

**Definition:** table{constant, copy_count_from_input, networks, signal}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [constant](#constant) | [int32](../concepts/int32.md) | yes |
| [copy_count_from_input](#copy-count-from-input) | [boolean](../concepts/boolean.md) | yes |
| [networks](#networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [signal](#signal) | [SignalID](../concepts/SignalID.md) |  |

### constant

**Type:** [int32](../concepts/int32.md) · _optional_

The value to output when not copying input. Defaults to `1`.

### copy_count_from_input

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `true`. When `false`, will output the value from `constant` for the given `output_signal`.

### networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

Sets which input network to read the value of `signal` from if `copy_count_from_input` is `true`. Defaults to both.

### signal

**Type:** [SignalID](../concepts/SignalID.md)

Specifies a signal to output.
