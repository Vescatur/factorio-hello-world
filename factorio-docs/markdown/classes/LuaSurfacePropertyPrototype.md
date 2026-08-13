# LuaSurfacePropertyPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a surface property.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [default_value](#default-value) | [double](../concepts/double.md) |  |
| [is_time](#is-time) | [boolean](../concepts/boolean.md) |  |
| [localised_unit_key](#localised-unit-key) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### default_value

**Read:** [double](../concepts/double.md) · _read-only_

### is_time

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### localised_unit_key

**Read:** [string](../concepts/string.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
