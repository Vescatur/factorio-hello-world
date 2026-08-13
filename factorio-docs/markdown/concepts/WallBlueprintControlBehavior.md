# WallBlueprintControlBehavior

_concept_

**Definition:** table{circuit_condition, circuit_open_gate, circuit_read_sensor, input_networks, output_networks, output_signal}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_condition](#circuit-condition) | [CircuitCondition](../concepts/CircuitCondition.md) |  |
| [circuit_open_gate](#circuit-open-gate) | [boolean](../concepts/boolean.md) |  |
| [circuit_read_sensor](#circuit-read-sensor) | [boolean](../concepts/boolean.md) |  |
| [input_networks](#input-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [output_networks](#output-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [output_signal](#output-signal) | [SignalID](../concepts/SignalID.md) | yes |

### circuit_condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md)

### circuit_open_gate

**Type:** [boolean](../concepts/boolean.md)

### circuit_read_sensor

**Type:** [boolean](../concepts/boolean.md)

### input_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### output_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### output_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_
