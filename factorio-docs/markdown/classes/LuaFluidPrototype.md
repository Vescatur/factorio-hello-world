# LuaFluidPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a fluid.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [base_color](#base-color) | [Color](../concepts/Color.md) |  |
| [default_temperature](#default-temperature) | [double](../concepts/double.md) |  |
| [emissions_multiplier](#emissions-multiplier) | [double](../concepts/double.md) |  |
| [factoriopedia_alternative](#factoriopedia-alternative) | [LuaFluidPrototype](../classes/LuaFluidPrototype.md) | yes |
| [flow_color](#flow-color) | [Color](../concepts/Color.md) |  |
| [fuel_value](#fuel-value) | [double](../concepts/double.md) |  |
| [gas_temperature](#gas-temperature) | [double](../concepts/double.md) |  |
| [heat_capacity](#heat-capacity) | [double](../concepts/double.md) |  |
| [max_temperature](#max-temperature) | [double](../concepts/double.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [spent_fluid](#spent-fluid) | [SpentFluidSpecification](../concepts/SpentFluidSpecification.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [visualization_color](#visualization-color) | [Color](../concepts/Color.md) |  |

### base_color

**Read:** [Color](../concepts/Color.md) · _read-only_

### default_temperature

**Read:** [double](../concepts/double.md) · _read-only_

Default temperature of this fluid.

### emissions_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

A multiplier on the amount of emissions produced when this fluid is burnt in a generator. A value above `1.0` increases emissions and vice versa. The multiplier can't be negative.

### factoriopedia_alternative

**Read:** [LuaFluidPrototype](../classes/LuaFluidPrototype.md) · _read-only_ · _optional_

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### flow_color

**Read:** [Color](../concepts/Color.md) · _read-only_

### fuel_value

**Read:** [double](../concepts/double.md) · _read-only_

The amount of energy in Joules one unit of this fluid will produce when burnt in a generator. A value of `0` means this fluid can't be used for energy generation. The value can't be negative.

### gas_temperature

**Read:** [double](../concepts/double.md) · _read-only_

The temperature above which this fluid will be shown as gaseous inside tanks and pipes.

### heat_capacity

**Read:** [double](../concepts/double.md) · _read-only_

The amount of energy in Joules required to heat one unit of this fluid by 1°C.

### max_temperature

**Read:** [double](../concepts/double.md) · _read-only_

Maximum temperature this fluid can reach.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### spent_fluid

**Read:** [SpentFluidSpecification](../concepts/SpentFluidSpecification.md) · _read-only_ · _optional_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### visualization_color

**Read:** [Color](../concepts/Color.md) · _read-only_
