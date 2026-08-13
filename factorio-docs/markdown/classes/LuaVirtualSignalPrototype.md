# LuaVirtualSignalPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a virtual signal.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [factoriopedia_alternative](#factoriopedia-alternative) | [LuaVirtualSignalPrototype](../classes/LuaVirtualSignalPrototype.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [special](#special) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### factoriopedia_alternative

**Read:** [LuaVirtualSignalPrototype](../classes/LuaVirtualSignalPrototype.md) · _read-only_ · _optional_

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### special

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this is a special signal. The `everything`, `anything`, `each`, and `unknown` signals are considered special.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
