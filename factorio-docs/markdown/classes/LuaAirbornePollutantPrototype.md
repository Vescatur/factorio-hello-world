# LuaAirbornePollutantPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Airborne pollutant prototype.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [affects_evolution](#affects-evolution) | [boolean](../concepts/boolean.md) |  |
| [chart_color](#chart-color) | [Color](../concepts/Color.md) |  |
| [damages_trees](#damages-trees) | [boolean](../concepts/boolean.md) |  |
| [localised_name_with_amount_key](#localised-name-with-amount-key) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### affects_evolution

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### chart_color

**Read:** [Color](../concepts/Color.md) · _read-only_

### damages_trees

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### localised_name_with_amount_key

**Read:** [string](../concepts/string.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
