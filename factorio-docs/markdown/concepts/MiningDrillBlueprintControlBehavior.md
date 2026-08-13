# MiningDrillBlueprintControlBehavior

_concept_

**Definition:** table{circuit_condition, circuit_enabled, circuit_read_resources, circuit_resource_read_mode, connect_to_logistic_network, input_networks, logistic_condition, output_networks}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_condition](#circuit-condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [circuit_enabled](#circuit-enabled) | [boolean](../concepts/boolean.md) | yes |
| [circuit_read_resources](#circuit-read-resources) | [boolean](../concepts/boolean.md) |  |
| [circuit_resource_read_mode](#circuit-resource-read-mode) | [defines.control_behavior.mining_drill.resource_read_mode](../defines/defines.md) |  |
| [connect_to_logistic_network](#connect-to-logistic-network) | [boolean](../concepts/boolean.md) | yes |
| [input_networks](#input-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [logistic_condition](#logistic-condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [output_networks](#output-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |

### circuit_condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) · _optional_

### circuit_enabled

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### circuit_read_resources

**Type:** [boolean](../concepts/boolean.md)

### circuit_resource_read_mode

**Type:** [defines.control_behavior.mining_drill.resource_read_mode](../defines/defines.md)

### connect_to_logistic_network

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### input_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### logistic_condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) · _optional_

### output_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_
