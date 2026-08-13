# LuaPermissionGroups

_class_

All permission groups.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [groups](#groups) | array[[LuaPermissionGroup](../classes/LuaPermissionGroup.md)] |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### groups

**Read:** array[[LuaPermissionGroup](../classes/LuaPermissionGroup.md)] · _read-only_

All of the permission groups.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [create_group](#create-group) | Creates a new permission group. |
| [get_group](#get-group) | Gets the permission group with the given name or group ID. |

### create_group

`create_group(name)`

Creates a new permission group.

#### Parameters

##### name

**Type:** [string](../concepts/string.md) · _optional_

#### Return values

- [LuaPermissionGroup](../classes/LuaPermissionGroup.md) _(optional)_ — `nil` if the calling player doesn't have permission to make groups.

### get_group

`get_group(group)`

Gets the permission group with the given name or group ID.

#### Parameters

##### group

**Type:** [string](../concepts/string.md) ∣ [uint32](../concepts/uint32.md)

#### Return values

- [LuaPermissionGroup](../classes/LuaPermissionGroup.md) _(optional)_ — `nil` if there is no matching group.
