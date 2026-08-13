# InserterBlueprintControlBehavior

_concept_

**Definition:** table{circuit_condition, circuit_enabled, circuit_hand_read_mode, circuit_read_hand_contents, circuit_set_filters, circuit_set_stack_size, connect_to_logistic_network, input_networks, logistic_condition, output_networks, stack_control_input_signal}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_condition](#circuit-condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [circuit_enabled](#circuit-enabled) | [boolean](../concepts/boolean.md) | yes |
| [circuit_hand_read_mode](#circuit-hand-read-mode) | [defines.control_behavior.inserter.hand_read_mode](../defines/defines.md) | yes |
| [circuit_read_hand_contents](#circuit-read-hand-contents) | [boolean](../concepts/boolean.md) | yes |
| [circuit_set_filters](#circuit-set-filters) | [boolean](../concepts/boolean.md) | yes |
| [circuit_set_stack_size](#circuit-set-stack-size) | [boolean](../concepts/boolean.md) | yes |
| [connect_to_logistic_network](#connect-to-logistic-network) | [boolean](../concepts/boolean.md) | yes |
| [input_networks](#input-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [logistic_condition](#logistic-condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [output_networks](#output-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [stack_control_input_signal](#stack-control-input-signal) | [SignalID](../concepts/SignalID.md) | yes |

### circuit_condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) · _optional_

### circuit_enabled

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### circuit_hand_read_mode

**Type:** [defines.control_behavior.inserter.hand_read_mode](../defines/defines.md) · _optional_

Defaults to `pulse`.

### circuit_read_hand_contents

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### circuit_set_filters

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### circuit_set_stack_size

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### connect_to_logistic_network

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### input_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### logistic_condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) · _optional_

### output_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### stack_control_input_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_
