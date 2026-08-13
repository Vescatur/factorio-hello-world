# LampBlueprintControlBehavior

_concept_

**Definition:** table{blue_signal, circuit_condition, circuit_enabled, color_mode, connect_to_logistic_network, green_signal, input_networks, logistic_condition, red_signal, rgb_signal, use_colors}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [blue_signal](#blue-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [circuit_condition](#circuit-condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [circuit_enabled](#circuit-enabled) | [boolean](../concepts/boolean.md) | yes |
| [color_mode](#color-mode) | [defines.control_behavior.lamp.color_mode](../defines/defines.md) | yes |
| [connect_to_logistic_network](#connect-to-logistic-network) | [boolean](../concepts/boolean.md) | yes |
| [green_signal](#green-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [input_networks](#input-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [logistic_condition](#logistic-condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [red_signal](#red-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [rgb_signal](#rgb-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [use_colors](#use-colors) | [boolean](../concepts/boolean.md) | yes |

### blue_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

### circuit_condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) · _optional_

### circuit_enabled

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### color_mode

**Type:** [defines.control_behavior.lamp.color_mode](../defines/defines.md) · _optional_

Defaults to `defines.control_behavior.lamp.color_mapping`.

### connect_to_logistic_network

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### green_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

### input_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### logistic_condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) · _optional_

### red_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

### rgb_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

### use_colors

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.
