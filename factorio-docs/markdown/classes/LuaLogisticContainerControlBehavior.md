# LuaLogisticContainerControlBehavior

_class_

**Inherits from:** [LuaControlBehavior](../classes/LuaControlBehavior.md)

Control behavior for logistic chests.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_condition](#circuit-condition) | [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) |  |
| [circuit_condition_enabled](#circuit-condition-enabled) | [boolean](../concepts/boolean.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [read_contents](#read-contents) | [boolean](../concepts/boolean.md) |  |
| [set_requests](#set-requests) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### circuit_condition

**Read:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · **Write:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md)

The circuit condition for the logistic container.

### circuit_condition_enabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether the circuit condition is in effect.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### read_contents

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if this logistic container is sending its content to a circuit network.

### set_requests

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if this logistic container has its requests set by a circuit network.

Can only be set to `true` on containers whose [logistic_mode](../classes/LuaEntityPrototype.md#logistic-mode) or [override_logistic_mode](../classes/LuaEntity.md#override-logistic-mode) is set to `"requester"` or `"buffer"`.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
