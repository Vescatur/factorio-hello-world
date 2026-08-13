# LuaElectricEnergySourcePrototype

_class_

Prototype of an electric energy source.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [buffer_capacity](#buffer-capacity) | [double](../concepts/double.md) |  |
| [drain](#drain) | [double](../concepts/double.md) |  |
| [emissions_per_joule](#emissions-per-joule) | dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [render_no_network_icon](#render-no-network-icon) | [boolean](../concepts/boolean.md) |  |
| [render_no_power_icon](#render-no-power-icon) | [boolean](../concepts/boolean.md) |  |
| [usage_priority](#usage-priority) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### buffer_capacity

**Read:** [double](../concepts/double.md) · _read-only_

### drain

**Read:** [double](../concepts/double.md) · _read-only_

### emissions_per_joule

**Read:** dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] · _read-only_

The table of emissions of this energy source in `pollution/Joule`, indexed by pollutant type. Multiplying it by energy consumption in `Watt` gives `pollution/second`.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### render_no_network_icon

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### render_no_power_icon

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### usage_priority

**Read:** [string](../concepts/string.md) · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [get_input_flow_limit](#get-input-flow-limit) |  |
| [get_output_flow_limit](#get-output-flow-limit) |  |

### get_input_flow_limit

`get_input_flow_limit(quality)`

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)

### get_output_flow_limit

`get_output_flow_limit(quality)`

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)
