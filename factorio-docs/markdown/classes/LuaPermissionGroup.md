# LuaPermissionGroup

_class_

A permission group that defines what players in this group are allowed to do.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [group_id](#group-id) | [uint32](../concepts/uint32.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [players](#players) | array[[LuaPlayer](../classes/LuaPlayer.md)] |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### group_id

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The group ID

### name

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The name of this group. Setting the name to `nil` or an empty string sets the name to the default value.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### players

**Read:** array[[LuaPlayer](../classes/LuaPlayer.md)] · _read-only_

The players in this group.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [add_player](#add-player) | Adds the given player to this group. |
| [allows_action](#allows-action) | Whether this group allows the given action. |
| [destroy](#destroy) | Destroys this group. |
| [remove_player](#remove-player) | Removes the given player from this group. |
| [set_allows_action](#set-allows-action) | Sets whether this group allows the performance the given action. |

### add_player

`add_player(player)`

Adds the given player to this group.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the player was added.

### allows_action

`allows_action(action)`

Whether this group allows the given action.

#### Parameters

##### action

**Type:** [defines.input_action](../defines/defines.md)

The action in question.

#### Return values

- [boolean](../concepts/boolean.md)

### destroy

`destroy()`

Destroys this group.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the group was successfully destroyed.

### remove_player

`remove_player(player)`

Removes the given player from this group.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the player was removed.

### set_allows_action

`set_allows_action(action, allow_action)`

Sets whether this group allows the performance the given action.

#### Parameters

##### action

**Type:** [defines.input_action](../defines/defines.md)

The action in question.

##### allow_action

**Type:** [boolean](../concepts/boolean.md)

Whether to allow the specified action.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the value was successfully applied.
