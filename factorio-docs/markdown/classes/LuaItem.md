# LuaItem

_class_

**Inherits from:** [LuaItemCommon](../classes/LuaItemCommon.md)

A reference to an item with data. In contrast to LuaItemStack, this is binding to a specific item data even if it would move between entities or inventories.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [item_stack](#item-stack) | [LuaItemStack](../classes/LuaItemStack.md) | yes |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [prototype](#prototype) | [LuaItemPrototype](../classes/LuaItemPrototype.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [type](#type) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### item_stack

**Read:** [LuaItemStack](../classes/LuaItemStack.md) · _read-only_ · _optional_

Object representing the item stack this item is located in right now. If its not possible to locate the item stack holding this item, a nil will be returned

### name

**Read:** [string](../concepts/string.md) · _read-only_

Name of the item prototype

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### prototype

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_

Item prototype of this item

### quality

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_

The quality of this item.

### type

**Read:** [string](../concepts/string.md) · _read-only_

Type of the item prototype

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
