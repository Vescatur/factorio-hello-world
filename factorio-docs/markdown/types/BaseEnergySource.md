# BaseEnergySource

_type_ · **abstract**

The abstract base of all [EnergySources](../types/EnergySource.md). Specifies the way an entity gets its energy.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [emissions_per_minute](#emissions-per-minute) | dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] | yes |
| [render_no_network_icon](#render-no-network-icon) | [boolean](../types/boolean.md) | yes |
| [render_no_power_icon](#render-no-power-icon) | [boolean](../types/boolean.md) | yes |

### emissions_per_minute

**Type:** dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] · _optional_

The pollution an entity emits per minute at full energy consumption. This is exactly the value that is shown in the entity tooltip.

### render_no_network_icon

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether to render the "no network" icon if the entity is not connected to an electric network.

### render_no_power_icon

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether to render the "no power" icon if the entity is low on power. Also applies to the "no fuel" icon when using burner energy sources.
