# LuaTurretControlBehavior

_class_

**Inherits from:** [LuaGenericOnOffControlBehavior](../classes/LuaGenericOnOffControlBehavior.md)

Control behavior for turrets.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [ignore_unlisted_targets_condition](#ignore-unlisted-targets-condition) | [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [read_ammo](#read-ammo) | [boolean](../concepts/boolean.md) |  |
| [set_ignore_unlisted_targets](#set-ignore-unlisted-targets) | [boolean](../concepts/boolean.md) |  |
| [set_priority_list](#set-priority-list) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### ignore_unlisted_targets_condition

**Read:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · **Write:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md)

The condition under which the turret will ignore targets not on its priority list.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### read_ammo

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the turret will send the ammunition or fluid it contains to the circuit network.

### set_ignore_unlisted_targets

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the turret will ignore targets not on its priority list if a circuit condition is met.

### set_priority_list

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the turret's target priority list will be determined from the signals on the circuit network.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
