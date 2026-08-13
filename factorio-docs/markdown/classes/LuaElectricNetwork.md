# LuaElectricNetwork

_class_

A LuaElectricNetwork represents a group of [LuaElectricSubNetworks](../classes/LuaElectricSubNetwork.md) that are directly or indirectly connected to each other through implicit connections (closed power switches, surface connections) and during next electric network update will transfer electricity from producers and consumers.

Electric networks can be merged together when a power switch is closed and can be split into multiple networks when power switch opens. Similarly turning on or off a global network may merge or split electric networks in a way that follows the expected electricity flows - two sub networks that are not directly or indirectly connected will be put into separate electric networks.

The electric network is what performs electric flow between entities. It does *not* track connected entities as that's the responsibility of the electric sub network.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [flow_last_tick](#flow-last-tick) | table{accumulator_capacity, accumulator_energy, consumption_satisfaction, lamp_satisfaction, maximum_consumption, maximum_production, primary_demand, primary_demand_usage, primary_output, primary_output_usage, production_satisfaction, secondary_demand, secondary_demand_usage, secondary_output, secondary_output_usage, solar_output, solar_output_usage, tertiary_demand, tertiary_demand_usage, tertiary_output, tertiary_output_usage, total_transfer} |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [statistics](#statistics) | [LuaFlowStatistics](../classes/LuaFlowStatistics.md) |  |
| [sub_networks](#sub-networks) | array[[LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md)] |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### flow_last_tick

**Read:** table{accumulator_capacity, accumulator_energy, consumption_satisfaction, lamp_satisfaction, maximum_consumption, maximum_production, primary_demand, primary_demand_usage, primary_output, primary_output_usage, production_satisfaction, secondary_demand, secondary_demand_usage, secondary_output, secondary_output_usage, solar_output, solar_output_usage, tertiary_demand, tertiary_demand_usage, tertiary_output, tertiary_output_usage, total_transfer} · _read-only_

Energy amounts of satisfaction percents related to latest electric network update.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### statistics

**Read:** [LuaFlowStatistics](../classes/LuaFlowStatistics.md) · _read-only_

Statistics for this electric network.

If the electric network becomes invalid, the flow statistics obtained from it will also become invalid.

### sub_networks

**Read:** array[[LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md)] · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [get_accumulators_energy](#get-accumulators-energy) | Gets total energy stored inside of accumulators that are part of any electric sub network covered by this electric network. |
| [set_accumulators_energy](#set-accumulators-energy) | Changes energy stored inside of accumulators that are part of any electric sub network covered by this electric network. |

### get_accumulators_energy

`get_accumulators_energy({name, quality})`

Gets total energy stored inside of accumulators that are part of any electric sub network covered by this electric network.

#### Parameters

##### name

**Type:** [EntityID](../concepts/EntityID.md) · _optional_

When given, only accumulators of this prototype will be considered.

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

When given, only accumulators of this quality will be considered.

#### Return values

- [EnergyAndCapacityPair](../concepts/EnergyAndCapacityPair.md)

### set_accumulators_energy

`set_accumulators_energy({energy, equalize, name, quality})`

Changes energy stored inside of accumulators that are part of any electric sub network covered by this electric network.

#### Parameters

##### energy

**Type:** [double](../concepts/double.md)

New total energy to be set onto matching accumulators.

##### equalize

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether all accumulators should have the same charge ratio, regardless of whether that means discharging some of them. Defaults to `false`.

##### name

**Type:** [EntityID](../concepts/EntityID.md) · _optional_

When given, only accumulators of this prototype will be considered.

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

When given, only accumulators of this quality will be considered.
