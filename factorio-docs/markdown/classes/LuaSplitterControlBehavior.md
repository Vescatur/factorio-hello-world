# LuaSplitterControlBehavior

_class_

**Inherits from:** [LuaControlBehavior](../classes/LuaControlBehavior.md)

Control behavior for splitter.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [input_left_condition](#input-left-condition) | [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) |  |
| [input_right_condition](#input-right-condition) | [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [output_left_condition](#output-left-condition) | [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) |  |
| [output_right_condition](#output-right-condition) | [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) |  |
| [set_filter](#set-filter) | [boolean](../concepts/boolean.md) |  |
| [set_input_side](#set-input-side) | [boolean](../concepts/boolean.md) |  |
| [set_output_side](#set-output-side) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### input_left_condition

**Read:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · **Write:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md)

### input_right_condition

**Read:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · **Write:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md)

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### output_left_condition

**Read:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · **Write:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md)

### output_right_condition

**Read:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · **Write:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md)

### set_filter

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### set_input_side

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### set_output_side

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
