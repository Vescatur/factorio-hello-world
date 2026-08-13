# LuaMiningDrillControlBehavior

_class_

**Inherits from:** [LuaGenericOnOffControlBehavior](../classes/LuaGenericOnOffControlBehavior.md)

Control behavior for mining drills.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_read_resources](#circuit-read-resources) | [boolean](../concepts/boolean.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [resource_read_mode](#resource-read-mode) | [defines.control_behavior.mining_drill.resource_read_mode](../defines/defines.md) |  |
| [resource_read_targets](#resource-read-targets) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### circuit_read_resources

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if this drill should send the resources in the field to the circuit network.

Which resources depends on [LuaMiningDrillControlBehavior::resource_read_mode](../classes/LuaMiningDrillControlBehavior.md#resource-read-mode)

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### resource_read_mode

**Read:** [defines.control_behavior.mining_drill.resource_read_mode](../defines/defines.md) · **Write:** [defines.control_behavior.mining_drill.resource_read_mode](../defines/defines.md)

If the mining drill should send just the resources in its area or the entire field it's on to the circuit network.

### resource_read_targets

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

The resource entities that the mining drill will send information about to the circuit network or an empty array.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
