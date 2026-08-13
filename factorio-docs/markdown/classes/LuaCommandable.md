# LuaCommandable

_class_

AI object which can be ordered commands. This can represent a UnitGroup (a set of multiple commandables) or can be a single Unit or SpiderUnit.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [command](#command) | [Command](../concepts/Command.md) | yes |
| [commandable_members](#commandable-members) | array[[LuaCommandable](../classes/LuaCommandable.md)] |  |
| [distraction_command](#distraction-command) | [Command](../concepts/Command.md) | yes |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [has_command](#has-command) | [boolean](../concepts/boolean.md) |  |
| [is_entity](#is-entity) | [boolean](../concepts/boolean.md) |  |
| [is_script_driven](#is-script-driven) | [boolean](../concepts/boolean.md) |  |
| [is_unit_group](#is-unit-group) | [boolean](../concepts/boolean.md) |  |
| [members](#members) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [moving_state](#moving-state) | [defines.moving_state](../defines/defines.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [parent_group](#parent-group) | [LuaCommandable](../classes/LuaCommandable.md) | yes |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [spawner](#spawner) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [state](#state) | [defines.group_state](../defines/defines.md) |  |
| [surface](#surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [unique_id](#unique-id) | [uint32](../concepts/uint32.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### command

**Read:** [Command](../concepts/Command.md) · _read-only_ · _optional_

The command of this commandable, if any.

### commandable_members

**Read:** array[[LuaCommandable](../classes/LuaCommandable.md)] · _read-only_

Non recursively returns all members of this unit group.

### distraction_command

**Read:** [Command](../concepts/Command.md) · _read-only_ · _optional_

The distraction command of this commandable, if any.

### entity

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_

Returns entity object for this commandable.

### force

**Read:** [LuaForce](../classes/LuaForce.md) · _read-only_

The force of this commandable.

### has_command

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this commandable has a command assigned.

### is_entity

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this commandable is Entity.

### is_script_driven

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this unit group is controlled by a script or by the game engine. This can be changed using [LuaCommandable::set_autonomous](../classes/LuaCommandable.md#set-autonomous). Units created by [LuaSurface::create_unit_group](../classes/LuaSurface.md#create-unit-group) are considered script-driven.

### is_unit_group

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this commandable is UnitGroup.

### members

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

All entity members of this unit group, recursive (if unit group is member of this unit group, its members will be returned here).

### moving_state

**Read:** [defines.moving_state](../defines/defines.md) · _read-only_

Current moving state of the commandable's behavior

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### parent_group

**Read:** [LuaCommandable](../classes/LuaCommandable.md) · _read-only_ · _optional_

The unit group this commandable is a member of, if any.

### position

**Read:** [MapPosition](../concepts/MapPosition.md) · _read-only_

Current position of this commandable.

If commandable is a UnitGroup, this can have different meanings depending on the group state. When the group is gathering, the position is the place of gathering. When the group is moving, the position is the expected position of its members along the path. When the group is attacking, it is the average position of its members.

### spawner

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The spawner associated with this commandable, if any.

### state

**Read:** [defines.group_state](../defines/defines.md) · _read-only_

Whether this group is gathering, moving or attacking.

### surface

**Read:** [LuaSurface](../classes/LuaSurface.md) · _read-only_

Surface this commandable is on.

### unique_id

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Unique identifier of this commandable.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [add_member](#add-member) | Adds a member to this UnitGroup. Has the same effect as setting defines.command.group command on the member to join the group. |
| [destroy](#destroy) | Destroys this commandable. If it is a unit group, members will not be destroyed, they will be merely unlinked from the group. |
| [release_from_spawner](#release-from-spawner) | Release the commandable from the spawner. This allows the spawner to continue spawning additional units. |
| [set_autonomous](#set-autonomous) | Make this group autonomous. Autonomous groups will automatically attack polluted areas. Autonomous groups aren't considered to be script-driven. |
| [set_command](#set-command) | Give this commandable a command. |
| [set_distraction_command](#set-distraction-command) | Give this commandable a distraction command. |
| [start_moving](#start-moving) | Make the group start moving even if some of its members haven't yet arrived. |

### add_member

`add_member(member)`

Adds a member to this UnitGroup. Has the same effect as setting defines.command.group command on the member to join the group.

The member must have the same force be on the same surface as the group.

#### Parameters

##### member

**Type:** [LuaCommandable](../classes/LuaCommandable.md) ∣ [LuaEntity](../classes/LuaEntity.md)

### destroy

`destroy()`

Destroys this commandable. If it is a unit group, members will not be destroyed, they will be merely unlinked from the group.

### release_from_spawner

`release_from_spawner()`

Release the commandable from the spawner. This allows the spawner to continue spawning additional units.

### set_autonomous

`set_autonomous()`

Make this group autonomous. Autonomous groups will automatically attack polluted areas. Autonomous groups aren't considered to be [script-driven](../classes/LuaCommandable.md#is-script-driven).

### set_command

`set_command(command)`

Give this commandable a command.

#### Parameters

##### command

**Type:** [Command](../concepts/Command.md)

### set_distraction_command

`set_distraction_command(command)`

Give this commandable a distraction command.

#### Parameters

##### command

**Type:** [Command](../concepts/Command.md)

### start_moving

`start_moving()`

Make the group start moving even if some of its members haven't yet arrived.
