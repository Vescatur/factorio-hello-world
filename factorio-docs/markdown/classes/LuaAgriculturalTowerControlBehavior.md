# LuaAgriculturalTowerControlBehavior

_class_

**Inherits from:** [LuaGenericOnOffControlBehavior](../classes/LuaGenericOnOffControlBehavior.md)

Control behavior for agricultural tower

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [enable_harvesting_condition](#enable-harvesting-condition) | [boolean](../concepts/boolean.md) |  |
| [enable_planting_condition](#enable-planting-condition) | [boolean](../concepts/boolean.md) |  |
| [harvesting_condition](#harvesting-condition) | [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [planting_condition](#planting-condition) | [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) |  |
| [read_contents](#read-contents) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### enable_harvesting_condition

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### enable_planting_condition

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### harvesting_condition

**Read:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · **Write:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md)

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### planting_condition

**Read:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · **Write:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md)

### read_contents

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the agricultural tower reads seeds and harvested plants.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
