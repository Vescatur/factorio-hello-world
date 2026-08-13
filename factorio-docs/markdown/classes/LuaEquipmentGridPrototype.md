# LuaEquipmentGridPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of an equipment grid.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [equipment_categories](#equipment-categories) | array[[string](../concepts/string.md)] |  |
| [height](#height) | [uint32](../concepts/uint32.md) |  |
| [locked](#locked) | [boolean](../concepts/boolean.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [width](#width) | [uint32](../concepts/uint32.md) |  |

### equipment_categories

**Read:** array[[string](../concepts/string.md)] · _read-only_

Equipment category names for the [categories](../classes/LuaEquipmentPrototype.md#equipment-categories) that may be inserted into this equipment grid. The grid will accept any equipment that has at least one category in this list.

### height

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### locked

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If the player can move equipment into or out of this grid.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### width

**Read:** [uint32](../concepts/uint32.md) · _read-only_
