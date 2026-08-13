# LuaFluidEnergySourcePrototype

_class_

Prototype of a fluid energy source.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [burns_fluid](#burns-fluid) | [boolean](../concepts/boolean.md) |  |
| [destroy_non_fuel_fluid](#destroy-non-fuel-fluid) | [boolean](../concepts/boolean.md) |  |
| [effectivity](#effectivity) | [double](../concepts/double.md) |  |
| [emissions_per_joule](#emissions-per-joule) | dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] |  |
| [fluid_box](#fluid-box) | [LuaFluidBoxPrototype](../classes/LuaFluidBoxPrototype.md) |  |
| [fluid_usage_per_tick](#fluid-usage-per-tick) | [double](../concepts/double.md) |  |
| [hide_from_stats](#hide-from-stats) | [boolean](../concepts/boolean.md) |  |
| [maximum_temperature](#maximum-temperature) | [double](../concepts/double.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [output_fluid_box](#output-fluid-box) | [LuaFluidBoxPrototype](../classes/LuaFluidBoxPrototype.md) | yes |
| [render_no_network_icon](#render-no-network-icon) | [boolean](../concepts/boolean.md) |  |
| [render_no_power_icon](#render-no-power-icon) | [boolean](../concepts/boolean.md) |  |
| [scale_fluid_usage](#scale-fluid-usage) | [boolean](../concepts/boolean.md) |  |
| [smoke](#smoke) | array[[SmokeSource](../concepts/SmokeSource.md)] |  |
| [spent_fluid](#spent-fluid) | [SpentFluidSpecification](../concepts/SpentFluidSpecification.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### burns_fluid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### destroy_non_fuel_fluid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### effectivity

**Read:** [double](../concepts/double.md) · _read-only_

### emissions_per_joule

**Read:** dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] · _read-only_

The table of emissions of this energy source in `pollution/Joule`, indexed by pollutant type. Multiplying it by energy consumption in `Watt` gives `pollution/second`.

### fluid_box

**Read:** [LuaFluidBoxPrototype](../classes/LuaFluidBoxPrototype.md) · _read-only_

The fluid box for this energy source.

### fluid_usage_per_tick

**Read:** [double](../concepts/double.md) · _read-only_

### hide_from_stats

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### maximum_temperature

**Read:** [double](../concepts/double.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### output_fluid_box

**Read:** [LuaFluidBoxPrototype](../classes/LuaFluidBoxPrototype.md) · _read-only_ · _optional_

### render_no_network_icon

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### render_no_power_icon

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### scale_fluid_usage

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### smoke

**Read:** array[[SmokeSource](../concepts/SmokeSource.md)] · _read-only_

The smoke sources for this prototype, if any.

### spent_fluid

**Read:** [SpentFluidSpecification](../concepts/SpentFluidSpecification.md) · _read-only_ · _optional_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
