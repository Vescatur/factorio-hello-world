# LuaDeciderCombinatorControlBehavior

_class_

**Inherits from:** [LuaCombinatorControlBehavior](../classes/LuaCombinatorControlBehavior.md)

Control behavior for decider combinators.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [parameters](#parameters) | [DeciderCombinatorParameters](../concepts/DeciderCombinatorParameters.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### parameters

**Read:** [DeciderCombinatorParameters](../concepts/DeciderCombinatorParameters.md) · **Write:** [DeciderCombinatorParameters](../concepts/DeciderCombinatorParameters.md) · _optional_

This decider combinator's parameters. Writing `nil` clears the combinator's parameters.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [add_condition](#add-condition) | Adds a new condition. |
| [add_else_output](#add-else-output) | Adds a new else-output. |
| [add_output](#add-output) | Adds a new output. |
| [get_condition](#get-condition) | Gets the condition at `index`. |
| [get_else_output](#get-else-output) | Gets the else-output at `index`. |
| [get_output](#get-output) | Gets the output at `index`. |
| [remove_condition](#remove-condition) | Removes the condition at `index`. |
| [remove_else_output](#remove-else-output) | Removes the else-output at `index`. |
| [remove_output](#remove-output) | Removes the output at `index`. |
| [set_condition](#set-condition) | Sets the condition at `index`. |
| [set_else_output](#set-else-output) | Sets the else-output at `index`. |
| [set_output](#set-output) | Sets the output at `index`. |

### add_condition

`add_condition(condition, index)`

Adds a new condition.

#### Parameters

##### condition

**Type:** [DeciderCombinatorCondition](../concepts/DeciderCombinatorCondition.md)

New condition to insert.

##### index

**Type:** [uint32](../concepts/uint32.md) · _optional_

Index to insert new condition at. If not specified, appends to the end.

### add_else_output

`add_else_output(index, output)`

Adds a new else-output.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md) · _optional_

Index to insert new else-output at. If not specified, appends to the end.

##### output

**Type:** [DeciderCombinatorOutput](../concepts/DeciderCombinatorOutput.md)

New else-output to insert.

### add_output

`add_output(index, output)`

Adds a new output.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md) · _optional_

Index to insert new output at. If not specified, appends to the end.

##### output

**Type:** [DeciderCombinatorOutput](../concepts/DeciderCombinatorOutput.md)

New output to insert.

### get_condition

`get_condition(index)`

Gets the condition at `index`.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of condition to get.

#### Return values

- [DeciderCombinatorCondition](../concepts/DeciderCombinatorCondition.md)

### get_else_output

`get_else_output(index)`

Gets the else-output at `index`.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of else-output to get.

#### Return values

- [DeciderCombinatorOutput](../concepts/DeciderCombinatorOutput.md)

### get_output

`get_output(index)`

Gets the output at `index`.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of output to get.

#### Return values

- [DeciderCombinatorOutput](../concepts/DeciderCombinatorOutput.md)

### remove_condition

`remove_condition(index)`

Removes the condition at `index`.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of condition to remove.

### remove_else_output

`remove_else_output(index)`

Removes the else-output at `index`.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of else-output to remove.

### remove_output

`remove_output(index)`

Removes the output at `index`.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of output to remove.

### set_condition

`set_condition(condition, index)`

Sets the condition at `index`.

#### Parameters

##### condition

**Type:** [DeciderCombinatorCondition](../concepts/DeciderCombinatorCondition.md)

Data to set selected condition to.

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of condition to modify.

### set_else_output

`set_else_output(index, output)`

Sets the else-output at `index`.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of else-output to modify.

##### output

**Type:** [DeciderCombinatorOutput](../concepts/DeciderCombinatorOutput.md)

Data to set selected else-output to.

### set_output

`set_output(index, output)`

Sets the output at `index`.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of output to modify.

##### output

**Type:** [DeciderCombinatorOutput](../concepts/DeciderCombinatorOutput.md)

Data to set selected output to.
