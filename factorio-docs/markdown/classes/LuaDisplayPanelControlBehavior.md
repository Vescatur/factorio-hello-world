# LuaDisplayPanelControlBehavior

_class_

**Inherits from:** [LuaControlBehavior](../classes/LuaControlBehavior.md)

Control behavior for display panels.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [max_records_count](#max-records-count) | [uint32](../concepts/uint32.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [records](#records) | array[[DisplayPanelMessageDefinition](../concepts/DisplayPanelMessageDefinition.md)] |  |
| [records_count](#records-count) | [uint32](../concepts/uint32.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### max_records_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Provides a maximum amount of records that can be added to this behavior. When at full capacity, attempts to add more records will fail.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### records

**Read:** array[[DisplayPanelMessageDefinition](../concepts/DisplayPanelMessageDefinition.md)] · **Write:** array[[DisplayPanelMessageDefinition](../concepts/DisplayPanelMessageDefinition.md)]

The full list of configured messages.

### records_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Current amount of records this control behavior has.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [add_record](#add-record) | Adds a single message record. |
| [get_record](#get-record) | Get a single record. |
| [move_record](#move-record) | Moves record from old position to a new position |
| [remove_record](#remove-record) | Removes message record at specified index. |
| [set_record](#set-record) | Change content of a specific record. |

### add_record

`add_record(index, message)`

Adds a single message record.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md) · _optional_

Index at which this record should be inserted. Must be within [1, [records_count](../classes/LuaDisplayPanelControlBehavior.md#records-count) + 1]. When not provided, record will be appended.

##### message

**Type:** [DisplayPanelMessageDefinition](../concepts/DisplayPanelMessageDefinition.md)

Message record to be added.

#### Return values

- [boolean](../concepts/boolean.md) — If a message record was added.

### get_record

`get_record(index)`

Get a single record.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of the record to read.

#### Return values

- [DisplayPanelMessageDefinition](../concepts/DisplayPanelMessageDefinition.md)

### move_record

`move_record(new_index, old_index)`

Moves record from old position to a new position

#### Parameters

##### new_index

**Type:** [uint32](../concepts/uint32.md)

Index where the record should be moved to.

##### old_index

**Type:** [uint32](../concepts/uint32.md)

Index where the record to be moved is currently.

### remove_record

`remove_record(index)`

Removes message record at specified index.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of the message record to be removed. Must be within [1, [records_count](../classes/LuaDisplayPanelControlBehavior.md#records-count)].

### set_record

`set_record(index, record)`

Change content of a specific record.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of the record to change

##### record

**Type:** [DisplayPanelMessageDefinition](../concepts/DisplayPanelMessageDefinition.md)
