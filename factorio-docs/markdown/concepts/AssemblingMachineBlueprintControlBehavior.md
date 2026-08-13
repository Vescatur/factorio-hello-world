# AssemblingMachineBlueprintControlBehavior

_concept_

**Definition:** table{circuit_condition, circuit_enabled, connect_to_logistic_network, include_in_crafting, input_networks, logistic_condition, output_networks, read_contents, read_fuel, read_ingredients, read_recipe_finished, read_working, recipe_finished_signal, set_recipe, working_signal}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_condition](#circuit-condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [circuit_enabled](#circuit-enabled) | [boolean](../concepts/boolean.md) | yes |
| [connect_to_logistic_network](#connect-to-logistic-network) | [boolean](../concepts/boolean.md) | yes |
| [include_in_crafting](#include-in-crafting) | [boolean](../concepts/boolean.md) | yes |
| [input_networks](#input-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [logistic_condition](#logistic-condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [output_networks](#output-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [read_contents](#read-contents) | [boolean](../concepts/boolean.md) | yes |
| [read_fuel](#read-fuel) | [boolean](../concepts/boolean.md) | yes |
| [read_ingredients](#read-ingredients) | [boolean](../concepts/boolean.md) | yes |
| [read_recipe_finished](#read-recipe-finished) | [boolean](../concepts/boolean.md) | yes |
| [read_working](#read-working) | [boolean](../concepts/boolean.md) | yes |
| [recipe_finished_signal](#recipe-finished-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [set_recipe](#set-recipe) | [boolean](../concepts/boolean.md) | yes |
| [working_signal](#working-signal) | [SignalID](../concepts/SignalID.md) | yes |

### circuit_condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) · _optional_

### circuit_enabled

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### connect_to_logistic_network

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### include_in_crafting

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `true`.

### input_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### logistic_condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) · _optional_

### output_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### read_contents

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### read_fuel

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### read_ingredients

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### read_recipe_finished

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### read_working

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`

### recipe_finished_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

### set_recipe

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### working_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_
