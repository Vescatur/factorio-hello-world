# FluidEnergySource

_type_

**Inherits from:** [BaseEnergySource](../types/BaseEnergySource.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [burns_fluid](#burns-fluid) | [boolean](../types/boolean.md) | yes |
| [destroy_non_fuel_fluid](#destroy-non-fuel-fluid) | [boolean](../types/boolean.md) | yes |
| [effectivity](#effectivity) | [double](../types/double.md) | yes |
| [fluid_box](#fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [fluid_usage_per_tick](#fluid-usage-per-tick) | [FluidAmount](../types/FluidAmount.md) | yes |
| [hide_from_stats](#hide-from-stats) | [boolean](../types/boolean.md) | yes |
| [light_flicker](#light-flicker) | [LightFlickeringDefinition](../types/LightFlickeringDefinition.md) | yes |
| [maximum_temperature](#maximum-temperature) | [float](../types/float.md) | yes |
| [output_fluid_box](#output-fluid-box) | [FluidBox](../types/FluidBox.md) | yes |
| [scale_fluid_usage](#scale-fluid-usage) | [boolean](../types/boolean.md) | yes |
| [smoke](#smoke) | array[[SmokeSource](../types/SmokeSource.md)] | yes |
| [spent_fluid](#spent-fluid) | [SpentFluidSpecification](../types/SpentFluidSpecification.md) | yes |
| [type](#type) | `"fluid"` |  |

### burns_fluid

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set to `true`, the available power output is based on the [FluidPrototype::fuel_value](../prototypes/FluidPrototype.md#fuel-value). Otherwise, the available power output will be based on the fluid temperature and [FluidPrototype::heat_capacity](../prototypes/FluidPrototype.md#heat-capacity): `energy = fluid_amount * (fluid_temperature - fluid_default_temperature) * fluid_heat_capacity * effectivity`

### destroy_non_fuel_fluid

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Property is only used when `burns_fluid` is `true` and the fluid has a [fuel_value](../prototypes/FluidPrototype.md#fuel-value) of `0`, or when `burns_fluid` is `false` and the fluid is at its `default_temperature`.

In those cases, this property determines whether the fluid should be destroyed, meaning that the fluid is consumed at the rate of `fluid_usage_per_tick`, without producing any power.

### effectivity

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

`1` means 100% effectivity. Must be greater than `0`. Multiplier of the energy output.

### fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

All standard fluid box configurations are acceptable, but the type must be `"input"` or `"input-output"` to function correctly. `scale_fluid_usage = true`, `fluid_usage_per_tick`, or a filter on the fluidbox must be set to be able to calculate the fluid usage of the energy source.

### fluid_usage_per_tick

**Type:** [FluidAmount](../types/FluidAmount.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The number of fluid units the energy source uses per tick. If used with `scale_fluid_usage`, this specifies the maximum. If this value is not set, `scale_energy_usage` is `false` and a fluid box filter is set, the game will attempt to calculate this value from the fluid box filter's fluid's `fuel_value` or `heat_capacity` and the entity's `energy_usage`. If `burns_fluid` is `false`, `maximum_temperature` will also be used. If the attempt of the game to calculate this value fails (`scale_energy_usage` is `false` and a fluid box filter is set), then `scale_energy_usage` will be forced to `true`, to prevent the energy source from being an infinite fluid sink. More context [on the forums](https://forums.factorio.com/90613).

### hide_from_stats

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When set, fluids consumed and produced by this energy source will not appear in fluid production statistics.

### light_flicker

**Type:** [LightFlickeringDefinition](../types/LightFlickeringDefinition.md) · _optional_

### maximum_temperature

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

`0` means unlimited maximum temperature. If this is non-zero while `scale_fluid_usage` is `false` and `fluid_usage_per_tick` is not specified, the game will use this value to calculate `fluid_usage_per_tick`. To do that, the filter on the `fluid_box` must be set.

Only loaded if `burns_fluid` is `false`.

### output_fluid_box

**Type:** [FluidBox](../types/FluidBox.md) · _optional_

### scale_fluid_usage

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set to `true`, the energy source will consume as much fluid as required to produce the desired power, otherwise it will consume as much as it is allowed to, wasting any excess.

### smoke

**Type:** array[[SmokeSource](../types/SmokeSource.md)] · _optional_

### spent_fluid

**Type:** [SpentFluidSpecification](../types/SpentFluidSpecification.md) · _optional_

Fluid and amount produced per 1 unit of fluid consumed. Only used when `output_fluid_box` is defined. If this value is not provided, [FluidPrototype::spent_fluid](../prototypes/FluidPrototype.md#spent-fluid) will be used based on the input fluid being consumed.

### type

**Type:** `"fluid"`
