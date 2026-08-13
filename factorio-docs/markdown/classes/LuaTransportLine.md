# LuaTransportLine

_class_

One line on a transport belt.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [input_lines](#input-lines) | array[[LuaTransportLine](../classes/LuaTransportLine.md)] |  |
| [line_length](#line-length) | [float](../concepts/float.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [output_lines](#output-lines) | array[[LuaTransportLine](../classes/LuaTransportLine.md)] |  |
| [owner](#owner) | [LuaEntity](../classes/LuaEntity.md) |  |
| [total_segment_length](#total-segment-length) | [double](../concepts/double.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### input_lines

**Read:** array[[LuaTransportLine](../classes/LuaTransportLine.md)] · _read-only_

The transport lines that this transport line is fed by or an empty table if none.

### line_length

**Read:** [float](../concepts/float.md) · _read-only_

Length of the transport line. Items can be inserted at line position from 0 up to returned value

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### output_lines

**Read:** array[[LuaTransportLine](../classes/LuaTransportLine.md)] · _read-only_

The transport lines that this transport line outputs items to or an empty table if none.

### owner

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_

The entity this transport line belongs to.

### total_segment_length

**Read:** [double](../concepts/double.md) · _read-only_

Total length of segment which consists of this line, all lines in front and lines in the back directly connected.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [can_insert_at](#can-insert-at) | Can an item be inserted at a given position? |
| [can_insert_at_back](#can-insert-at-back) | Can an item be inserted at the back of this line? |
| [clear](#clear) | Remove all items from this transport line. |
| [force_insert_at](#force-insert-at) | Force insert item at a given position. Inserts item onto a transport line. If a position is out of range, it is clamped to a closest valid position on the transport line. Item will be inserted regardless of other items nearby, possibly forcing items to become squashed. |
| [get_contents](#get-contents) | Get counts of all items on this line, similar to how LuaInventory::get_contents does. |
| [get_detailed_contents](#get-detailed-contents) | Get detailed information of items on this line, such as their position. |
| [get_item_count](#get-item-count) | Count some or all items on this line, similar to how LuaInventory::get_item_count does. |
| [get_line_item_position](#get-line-item-position) | Get a map position related to a position on a transport line. |
| [insert_at](#insert-at) | Insert items at a given position. |
| [insert_at_back](#insert-at-back) | Insert items at the back of this line. |
| [line_equals](#line-equals) | Returns whether the associated internal transport line of this line is the same as the others associated internal transport line. |
| [remove_item](#remove-item) | Remove some items from this line. |

### can_insert_at

`can_insert_at(position)`

Can an item be inserted at a given position?

#### Parameters

##### position

**Type:** [float](../concepts/float.md)

Where to insert an item.

#### Return values

- [boolean](../concepts/boolean.md)

### can_insert_at_back

`can_insert_at_back()`

Can an item be inserted at the back of this line?

#### Return values

- [boolean](../concepts/boolean.md)

### clear

`clear()`

Remove all items from this transport line.

### force_insert_at

`force_insert_at(belt_stack_size, items, position)`

Force insert item at a given position. Inserts item onto a transport line. If a position is out of range, it is clamped to a closest valid position on the transport line. Item will be inserted regardless of other items nearby, possibly forcing items to become squashed.

#### Parameters

##### belt_stack_size

**Type:** [uint8](../concepts/uint8.md) · _optional_

Maximum size of stack created on belt

##### items

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

Items to insert.

##### position

**Type:** [float](../concepts/float.md)

Where on the line to insert the items.

### get_contents

`get_contents()`

Get counts of all items on this line, similar to how [LuaInventory::get_contents](../classes/LuaInventory.md#get-contents) does.

#### Return values

- array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] — List of all items on this line.

### get_detailed_contents

`get_detailed_contents()`

Get detailed information of items on this line, such as their position.

#### Return values

- array[[DetailedItemOnLine](../concepts/DetailedItemOnLine.md)]

### get_item_count

`get_item_count(item)`

Count some or all items on this line, similar to how [LuaInventory::get_item_count](../classes/LuaInventory.md#get-item-count) does.

#### Parameters

##### item

**Type:** [ItemFilter](../concepts/ItemFilter.md) · _optional_

If not specified, count all items.

#### Return values

- [uint32](../concepts/uint32.md)

### get_line_item_position

`get_line_item_position(position)`

Get a map position related to a position on a transport line.

#### Parameters

##### position

**Type:** [float](../concepts/float.md)

Linear position along the transport line. Clamped to the transport line range.

#### Return values

- [MapPosition](../concepts/MapPosition.md)

### insert_at

`insert_at(belt_stack_size, items, position)`

Insert items at a given position.

#### Parameters

##### belt_stack_size

**Type:** [uint8](../concepts/uint8.md) · _optional_

Maximum size of stack created on belt

##### items

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

Items to insert.

##### position

**Type:** [float](../concepts/float.md)

Where on the line to insert the items.

#### Return values

- [boolean](../concepts/boolean.md) — Were the items inserted successfully?

### insert_at_back

`insert_at_back(belt_stack_size, items)`

Insert items at the back of this line.

#### Parameters

##### belt_stack_size

**Type:** [uint8](../concepts/uint8.md) · _optional_

Maximum size of stack created on belt

##### items

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

#### Return values

- [boolean](../concepts/boolean.md) — Were the items inserted successfully?

### line_equals

`line_equals(other)`

Returns whether the associated internal transport line of this line is the same as the others associated internal transport line.

This can return true even when the [LuaTransportLine::owner](../classes/LuaTransportLine.md#owner)s are different (so `this == other` is false), because the internal transport lines can span multiple tiles.

#### Parameters

##### other

**Type:** [LuaTransportLine](../classes/LuaTransportLine.md)

#### Return values

- [boolean](../concepts/boolean.md)

### remove_item

`remove_item(items)`

Remove some items from this line.

#### Parameters

##### items

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

Items to remove.

#### Return values

- [uint32](../concepts/uint32.md) — Number of items actually removed.

## Operators

### index

`index()`

The indexing operator.

### length

`length()`

Get the number of items on this transport line.
