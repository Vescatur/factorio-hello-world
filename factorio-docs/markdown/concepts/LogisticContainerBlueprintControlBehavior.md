# LogisticContainerBlueprintControlBehavior

_concept_

**Definition:** table{circuit_condition, circuit_condition_enabled, input_networks, output_networks, read_contents, set_requests}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_condition](#circuit-condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [circuit_condition_enabled](#circuit-condition-enabled) | [boolean](../concepts/boolean.md) | yes |
| [input_networks](#input-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [output_networks](#output-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [read_contents](#read-contents) | [boolean](../concepts/boolean.md) | yes |
| [set_requests](#set-requests) | [boolean](../concepts/boolean.md) | yes |

### circuit_condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) · _optional_

### circuit_condition_enabled

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### input_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### output_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### read_contents

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `true`.

### set_requests

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.
