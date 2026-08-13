# SingleFluidBoxBlueprintControlBehavior

_concept_

**Definition:** table{circuit_mode_of_operation, output_networks, read_temperature, temperature_signal}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_mode_of_operation](#circuit-mode-of-operation) | [defines.control_behavior.single_fluid_box.exclusive_mode](../defines/defines.md) | yes |
| [output_networks](#output-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [read_temperature](#read-temperature) | [boolean](../concepts/boolean.md) | yes |
| [temperature_signal](#temperature-signal) | [SignalID](../concepts/SignalID.md) |  |

### circuit_mode_of_operation

**Type:** [defines.control_behavior.single_fluid_box.exclusive_mode](../defines/defines.md) · _optional_

Defaults to `send_contents`.

### output_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### read_temperature

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### temperature_signal

**Type:** [SignalID](../concepts/SignalID.md)
