# LuaShortcutPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a shortcut.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [string](../concepts/string.md) |  |
| [associated_control_input](#associated-control-input) | [string](../concepts/string.md) | yes |
| [item_to_spawn](#item-to-spawn) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [technology_to_unlock](#technology-to-unlock) | [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md) | yes |
| [toggleable](#toggleable) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### action

**Read:** [string](../concepts/string.md) · _read-only_

### associated_control_input

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The control input that is associated with this shortcut, if any.

### item_to_spawn

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

The item to create when this shortcut is used, if any.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### technology_to_unlock

**Read:** [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md) · _read-only_ · _optional_

The technology that needs to be researched once (in any save) for this shortcut to be unlocked (in all saves).

### toggleable

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
