# FusionReactorPrototype

_prototype_

**Prototype type string:** `type = "fusion-reactor"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Fusion reactor. Consumes fluid, fuel and additional energy to produce other fluid. Kind of advanced boiler. Can also have neighbour bonus.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [burner](#burner) | [BurnerEnergySource](../types/BurnerEnergySource.md) |  |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) |  |
| [graphics_set](#graphics-set) | [FusionReactorGraphicsSet](../types/FusionReactorGraphicsSet.md) |  |
| [input_fluid_box](#input-fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [max_fluid_usage](#max-fluid-usage) | [FluidAmount](../types/FluidAmount.md) |  |
| [neighbour_bonus](#neighbour-bonus) | [float](../types/float.md) | yes |
| [neighbour_connectable](#neighbour-connectable) | [NeighbourConnectable](../types/NeighbourConnectable.md) | yes |
| [output_fluid_box](#output-fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [perceived_performance](#perceived-performance) | [PerceivedPerformance](../types/PerceivedPerformance.md) | yes |
| [power_input](#power-input) | [Energy](../types/Energy.md) |  |
| [target_temperature](#target-temperature) | [float](../types/float.md) | yes |
| [two_direction_only](#two-direction-only) | [boolean](../types/boolean.md) | yes |

### burner

**Type:** [BurnerEnergySource](../types/BurnerEnergySource.md)

Second energy source for the process: provides fuel

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md)

First energy source for the process: provides energy

### graphics_set

**Type:** [FusionReactorGraphicsSet](../types/FusionReactorGraphicsSet.md)

### input_fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

The input fluid box.

[filter](../types/FluidBox.md#filter) is mandatory.

### max_fluid_usage

**Type:** [FluidAmount](../types/FluidAmount.md)

Maximum amount of fluid converted from `input_fluid_box` to `output_fluid_box` within a single tick.

Must be positive.

### neighbour_bonus

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### neighbour_connectable

**Type:** [NeighbourConnectable](../types/NeighbourConnectable.md) · _optional_

Defines connection points to neighbours used to compute neighbour bonus.

### output_fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

The output fluid box.

[filter](../types/FluidBox.md#filter) is mandatory.

### perceived_performance

**Type:** [PerceivedPerformance](../types/PerceivedPerformance.md) · _optional_

Affects working sound.

### power_input

**Type:** [Energy](../types/Energy.md)

Power input consumed from first energy source at full performance.

Cannot be negative.

### target_temperature

**Type:** [float](../types/float.md) · _optional_

The temperature of the fluid to output. If not defined, the default temperature of the output fluid will be used.

### two_direction_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set to true, only North and East direction will be buildable.
