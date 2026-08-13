# TrainStopBlueprintControlBehavior

_concept_

**Definition:** table{circuit_condition, circuit_enabled, connect_to_logistic_network, input_networks, logistic_condition, output_networks, priority_signal, read_from_train, read_stopped_train, read_trains_count, send_to_train, set_priority, set_trains_limit, train_stopped_signal, trains_count_signal, trains_limit_signal}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_condition](#circuit-condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [circuit_enabled](#circuit-enabled) | [boolean](../concepts/boolean.md) | yes |
| [connect_to_logistic_network](#connect-to-logistic-network) | [boolean](../concepts/boolean.md) | yes |
| [input_networks](#input-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [logistic_condition](#logistic-condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [output_networks](#output-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [priority_signal](#priority-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [read_from_train](#read-from-train) | [boolean](../concepts/boolean.md) | yes |
| [read_stopped_train](#read-stopped-train) | [boolean](../concepts/boolean.md) | yes |
| [read_trains_count](#read-trains-count) | [boolean](../concepts/boolean.md) | yes |
| [send_to_train](#send-to-train) | [boolean](../concepts/boolean.md) | yes |
| [set_priority](#set-priority) | [boolean](../concepts/boolean.md) | yes |
| [set_trains_limit](#set-trains-limit) | [boolean](../concepts/boolean.md) | yes |
| [train_stopped_signal](#train-stopped-signal) | [SignalID](../concepts/SignalID.md) |  |
| [trains_count_signal](#trains-count-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [trains_limit_signal](#trains-limit-signal) | [SignalID](../concepts/SignalID.md) | yes |

### circuit_condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) · _optional_

### circuit_enabled

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

### priority_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

### read_from_train

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### read_stopped_train

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### read_trains_count

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### send_to_train

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `true`.

### set_priority

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### set_trains_limit

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### train_stopped_signal

**Type:** [SignalID](../concepts/SignalID.md)

### trains_count_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

### trains_limit_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_
