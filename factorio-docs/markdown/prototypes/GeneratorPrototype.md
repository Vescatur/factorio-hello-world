# GeneratorPrototype

_prototype_

**Prototype type string:** `type = "generator"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

An entity that produces power from fluids, for example a [steam engine](https://wiki.factorio.com/Steam_engine).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [burns_fluid](#burns-fluid) | [boolean](../types/boolean.md) | yes |
| [destroy_non_fuel_fluid](#destroy-non-fuel-fluid) | [boolean](../types/boolean.md) | yes |
| [effectivity](#effectivity) | [double](../types/double.md) | yes |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) |  |
| [fluid_box](#fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [fluid_usage_per_tick](#fluid-usage-per-tick) | [FluidAmount](../types/FluidAmount.md) |  |
| [max_power_output](#max-power-output) | [Energy](../types/Energy.md) | yes |
| [maximum_temperature](#maximum-temperature) | [float](../types/float.md) |  |
| [output_fluid_box](#output-fluid-box) | [FluidBox](../types/FluidBox.md) | yes |
| [perceived_performance](#perceived-performance) | [PerceivedPerformance](../types/PerceivedPerformance.md) | yes |
| [pictures](#pictures) | [GeneratorPictureSet](../types/GeneratorPictureSet.md) | yes |
| [scale_fluid_usage](#scale-fluid-usage) | [boolean](../types/boolean.md) | yes |
| [smoke](#smoke) | array[[SmokeSource](../types/SmokeSource.md)] | yes |
| [spent_fluid](#spent-fluid) | [SpentFluidSpecification](../types/SpentFluidSpecification.md) | yes |
| [two_direction_only](#two-direction-only) | [boolean](../types/boolean.md) | yes |

### burns_fluid

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set to `true`, the available power output is based on the [FluidPrototype::fuel_value](../prototypes/FluidPrototype.md#fuel-value). Otherwise, the available power output will be based on the fluid temperature and [FluidPrototype::heat_capacity](../prototypes/FluidPrototype.md#heat-capacity): `energy = fluid_amount * (fluid_temperature - fluid_default_temperature) * fluid_heat_capacity * effectivity`

### destroy_non_fuel_fluid

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

This property is used when `burns_fluid` is true and the fluid has a [fuel_value](../prototypes/FluidPrototype.md#fuel-value) of 0.

This property is also used when `burns_fluid` is false and the fluid is at default temperature.

In these cases, this property determines whether the fluid should be destroyed, meaning that the fluid is consumed at the rate of `fluid_usage_per_tick`, without producing any power.

### effectivity

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

How much energy the generator produces compared to how much energy it consumes. For example, an effectivity of 0.5 means that half of the consumed energy is output as power.

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md)

### fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

This must have a filter if `max_power_output` is not defined.

### fluid_usage_per_tick

**Type:** [FluidAmount](../types/FluidAmount.md)

The number of fluid units the generator uses per tick.

### max_power_output

**Type:** [Energy](../types/Energy.md) · _optional_

The power production of the generator is capped to this value. This is also the value that is shown as the maximum power output in the tooltip of the generator.

`fluid_box` must have a filter if this is not defined.

### maximum_temperature

**Type:** [float](../types/float.md)

The maximum temperature to which the efficiency can increase. At this temperature the generator will run at 100% efficiency. Note: Higher temperature fluid can still be consumed.

Used to calculate the `max_power_output` if it is not defined and `burns_fluid` is false. Then, the max power output is `(min(fluid_max_temp, maximum_temperature) - fluid_default_temp) × fluid_usage_per_tick × fluid_heat_capacity × effectivity`, the fluid is the filter specified on the `fluid_box`.

### output_fluid_box

**Type:** [FluidBox](../types/FluidBox.md) · _optional_

### perceived_performance

**Type:** [PerceivedPerformance](../types/PerceivedPerformance.md) · _optional_

Affects animation speed and working sound.

### pictures

**Type:** [GeneratorPictureSet](../types/GeneratorPictureSet.md) · _optional_

### scale_fluid_usage

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Scales the generator's fluid usage to its maximum power output.

Setting this to true prevents the generator from overconsuming fluid, for example when higher than`maximum_temperature` fluid is fed to the generator.

If scale_fluid_usage is false, the generator consumes the full `fluid_usage_per_tick` and any of the extra energy in the fluid (in the form of higher temperature) is wasted. The [steam engine](https://wiki.factorio.com/Steam_engine) exhibits this behavior when fed steam from [heat exchangers](https://wiki.factorio.com/Heat_exchanger).

### smoke

**Type:** array[[SmokeSource](../types/SmokeSource.md)] · _optional_

### spent_fluid

**Type:** [SpentFluidSpecification](../types/SpentFluidSpecification.md) · _optional_

Fluid and amount produced per 1 unit of fluid consumed. Only used when `output_fluid_box` is defined. If this value is not provided, [FluidPrototype::spent_fluid](../prototypes/FluidPrototype.md#spent-fluid) will be used based on the input fluid being consumed.

### two_direction_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`
