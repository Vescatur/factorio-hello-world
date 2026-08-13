# FusionGeneratorPrototype

_prototype_

**Prototype type string:** `type = "fusion-generator"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Consumes a fluid to generate electricity and create another fluid.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [burns_fluid](#burns-fluid) | [boolean](../types/boolean.md) | yes |
| [effectivity](#effectivity) | [double](../types/double.md) | yes |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) |  |
| [graphics_set](#graphics-set) | [FusionGeneratorGraphicsSet](../types/FusionGeneratorGraphicsSet.md) | yes |
| [input_fluid_box](#input-fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [max_fluid_usage](#max-fluid-usage) | [FluidAmount](../types/FluidAmount.md) |  |
| [output_fluid_box](#output-fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [perceived_performance](#perceived-performance) | [PerceivedPerformance](../types/PerceivedPerformance.md) | yes |

### burns_fluid

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set to `true`, the available power output is based on the [FluidPrototype::fuel_value](../prototypes/FluidPrototype.md#fuel-value). Otherwise, the available power output will be based on the fluid temperature and [FluidPrototype::heat_capacity](../prototypes/FluidPrototype.md#heat-capacity): `energy = fluid_amount * fluid_temperature * fluid_heat_capacity * effectivity`

### effectivity

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

`1` means 100% effectivity. Must be greater than `0`. Multiplier of the energy output.

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md)

`output_flow_limit` is mandatory and must be positive. `output_flow_limit` is the maximum power output of the generator.

### graphics_set

**Type:** [FusionGeneratorGraphicsSet](../types/FusionGeneratorGraphicsSet.md) · _optional_

### input_fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

[filter](../types/FluidBox.md#filter) is mandatory. The temperature (or fuel value if `burns_fluid` is true) of this fluid is used to calculate the available power output.

### max_fluid_usage

**Type:** [FluidAmount](../types/FluidAmount.md)

Must be positive.

### output_fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

[filter](../types/FluidBox.md#filter) is mandatory.

### perceived_performance

**Type:** [PerceivedPerformance](../types/PerceivedPerformance.md) · _optional_

Affects animation speed and working sound.
