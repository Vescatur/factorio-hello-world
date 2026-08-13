# LuaGroup

_class_

Item group or subgroup.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [group](#group) | [LuaGroup](../classes/LuaGroup.md) |  |
| [localised_name](#localised-name) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [order](#order) | [string](../concepts/string.md) |  |
| [order_in_recipe](#order-in-recipe) | [string](../concepts/string.md) |  |
| [subgroups](#subgroups) | array[[LuaGroup](../classes/LuaGroup.md)] |  |
| [type](#type) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### group

**Read:** [LuaGroup](../classes/LuaGroup.md) · _read-only_

The parent group.

### localised_name

**Read:** [LocalisedString](../concepts/LocalisedString.md) · _read-only_

Localised name of the group.

### name

**Read:** [string](../concepts/string.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### order

**Read:** [string](../concepts/string.md) · _read-only_

The string used to alphabetically sort these prototypes. It is a simple string that has no additional semantic meaning.

### order_in_recipe

**Read:** [string](../concepts/string.md) · _read-only_

The additional order value used in recipe ordering.

### subgroups

**Read:** array[[LuaGroup](../classes/LuaGroup.md)] · _read-only_

Subgroups of this group.

### type

**Read:** [string](../concepts/string.md) · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
