# LuaAutoplaceControlPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of an autoplace control.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [can_be_disabled](#can-be-disabled) | [boolean](../concepts/boolean.md) |  |
| [category](#category) | `"resource"` ∣ `"terrain"` ∣ `"cliff"` ∣ `"enemy"` |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [richness](#richness) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### can_be_disabled

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### category

**Read:** `"resource"` ∣ `"terrain"` ∣ `"cliff"` ∣ `"enemy"` · _read-only_

Category name of this prototype.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### richness

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
