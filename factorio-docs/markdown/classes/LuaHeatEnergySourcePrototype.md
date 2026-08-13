# LuaHeatEnergySourcePrototype

_class_

Prototype of a heat energy source.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [connections](#connections) | array[[HeatConnectionDefinition](../concepts/HeatConnectionDefinition.md)] |  |
| [default_temperature](#default-temperature) | [double](../concepts/double.md) |  |
| [emissions_per_joule](#emissions-per-joule) | dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] |  |
| [heat_buffer_prototype](#heat-buffer-prototype) | [LuaHeatBufferPrototype](../classes/LuaHeatBufferPrototype.md) |  |
| [max_temperature](#max-temperature) | [double](../concepts/double.md) |  |
| [max_transfer](#max-transfer) | [double](../concepts/double.md) |  |
| [min_temperature_gradient](#min-temperature-gradient) | [double](../concepts/double.md) |  |
| [min_working_temperature](#min-working-temperature) | [double](../concepts/double.md) |  |
| [minimum_glow_temperature](#minimum-glow-temperature) | [double](../concepts/double.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [render_no_network_icon](#render-no-network-icon) | [boolean](../concepts/boolean.md) |  |
| [render_no_power_icon](#render-no-power-icon) | [boolean](../concepts/boolean.md) |  |
| [specific_heat](#specific-heat) | [double](../concepts/double.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### connections

**Read:** array[[HeatConnectionDefinition](../concepts/HeatConnectionDefinition.md)] · _read-only_

### default_temperature

**Read:** [double](../concepts/double.md) · _read-only_

### emissions_per_joule

**Read:** dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] · _read-only_

The table of emissions of this energy source in `pollution/Joule`, indexed by pollutant type. Multiplying it by energy consumption in `Watt` gives `pollution/second`.

### heat_buffer_prototype

**Read:** [LuaHeatBufferPrototype](../classes/LuaHeatBufferPrototype.md) · _read-only_

### max_temperature

**Read:** [double](../concepts/double.md) · _read-only_

### max_transfer

**Read:** [double](../concepts/double.md) · _read-only_

### min_temperature_gradient

**Read:** [double](../concepts/double.md) · _read-only_

### min_working_temperature

**Read:** [double](../concepts/double.md) · _read-only_

### minimum_glow_temperature

**Read:** [double](../concepts/double.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### render_no_network_icon

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### render_no_power_icon

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### specific_heat

**Read:** [double](../concepts/double.md) · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
