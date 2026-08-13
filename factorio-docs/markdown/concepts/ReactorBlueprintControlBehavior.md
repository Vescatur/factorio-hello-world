# ReactorBlueprintControlBehavior

_concept_

**Definition:** table{output_networks, read_fuel, read_temperature, temperature_signal}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [output_networks](#output-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [read_fuel](#read-fuel) | [boolean](../concepts/boolean.md) | yes |
| [read_temperature](#read-temperature) | [boolean](../concepts/boolean.md) | yes |
| [temperature_signal](#temperature-signal) | [SignalID](../concepts/SignalID.md) |  |

### output_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### read_fuel

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### read_temperature

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### temperature_signal

**Type:** [SignalID](../concepts/SignalID.md)
