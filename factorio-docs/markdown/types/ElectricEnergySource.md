# ElectricEnergySource

_type_

**Inherits from:** [BaseEnergySource](../types/BaseEnergySource.md)

**Examples:**

```
energy_source = -- energy source of oil pumpjack
{
  type = "electric",
  emissions_per_minute = { pollution = 10 },
  usage_priority = "secondary-input"
}
```

```
energy_source = -- energy source of accumulator
{
  type = "electric",
  buffer_capacity = "5MJ",
  usage_priority = "tertiary",
  input_flow_limit = "300kW",
  output_flow_limit = "300kW"
}
```

```
energy_source = -- energy source of steam engine
{
  type = "electric",
  usage_priority = "secondary-output"
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [buffer_capacity](#buffer-capacity) | [Energy](../types/Energy.md) | yes |
| [drain](#drain) | [Energy](../types/Energy.md) | yes |
| [input_flow_limit](#input-flow-limit) | [Energy](../types/Energy.md) | yes |
| [output_flow_limit](#output-flow-limit) | [Energy](../types/Energy.md) | yes |
| [type](#type) | `"electric"` |  |
| [usage_priority](#usage-priority) | [ElectricUsagePriority](../types/ElectricUsagePriority.md) |  |

### buffer_capacity

**Type:** [Energy](../types/Energy.md) · _optional_

How much energy this entity can hold.

**Example:**

```
buffer_capacity = "5MJ"
```

### drain

**Type:** [Energy](../types/Energy.md) · _optional_

How much energy (per second) will be continuously removed from the energy buffer. In-game, this is shown in the tooltip as "Min. [Minimum] Consumption". Applied as a constant consumption-per-tick, even when the entity is not [active](../classes/LuaEntity.md#active).

**Example:**

```
drain = "1kW"
```

### input_flow_limit

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `Max `double` value`

The rate at which energy can be taken, from the network, to refill the energy buffer. `0` means no transfer.

**Example:**

```
input_flow_limit = "300kW"
```

### output_flow_limit

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `Max `double` value`

The rate at which energy can be provided, to the network, from the energy buffer. `0` means no transfer.

**Example:**

```
output_flow_limit = "300kW"
```

### type

**Type:** `"electric"`

### usage_priority

**Type:** [ElectricUsagePriority](../types/ElectricUsagePriority.md)

**Example:**

```
usage_priority = "secondary-input"
```
