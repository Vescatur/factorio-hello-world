# LuaUndoRedoStack

_class_

The undo queue for a player. The term `item_index` refers to the index of an undo item in the queue, while `action_index` refers to the index of one of the individual actions that make up an undo item.

Items are added to the undo queue through player actions and Lua methods that emulate player actions like [LuaEntity::order_upgrade](../classes/LuaEntity.md#order-upgrade).

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### player_index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The index of the player to whom this stack belongs to.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [get_redo_item](#get-redo-item) | Gets an undo item from the redo stack. |
| [get_redo_item_count](#get-redo-item-count) | The number of undo items in the redo stack. |
| [get_redo_tag](#get-redo-tag) | Gets the tag with the given name from a specific redo item action, or `nil` if it doesn't exist. |
| [get_redo_tags](#get-redo-tags) | Gets all tags for the given redo action. |
| [get_undo_item](#get-undo-item) | Gets an undo item from the undo stack. |
| [get_undo_item_count](#get-undo-item-count) | The number undo items in the undo stack. |
| [get_undo_tag](#get-undo-tag) | Gets the tag with the given name from a specific undo item action, or `nil` if it doesn't exist. |
| [get_undo_tags](#get-undo-tags) | Gets all tags for the given undo action. |
| [remove_redo_action](#remove-redo-action) | Removes an undo action from the specified undo item on the redo stack. |
| [remove_redo_item](#remove-redo-item) | Removes an undo item from the redo stack. |
| [remove_redo_tag](#remove-redo-tag) | Removes a tag with the given name from the specified redo item. |
| [remove_undo_action](#remove-undo-action) | Removes an undo action from the specified undo item on the undo stack. |
| [remove_undo_item](#remove-undo-item) | Removes an undo item from the undo stack. |
| [remove_undo_tag](#remove-undo-tag) | Removes a tag with the given name from the specified undo item. |
| [set_redo_tag](#set-redo-tag) | Sets a new tag with the given name and value on the specified redo item action. |
| [set_undo_tag](#set-undo-tag) | Sets a new tag with the given name and value on the specified undo item action. |

### get_redo_item

`get_redo_item(index)`

Gets an undo item from the redo stack.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index of the item to get, ordered from most recent to oldest.

#### Return values

- array[[UndoRedoAction](../concepts/UndoRedoAction.md)]

### get_redo_item_count

`get_redo_item_count()`

The number of undo items in the redo stack.

#### Return values

- [uint32](../concepts/uint32.md)

### get_redo_tag

`get_redo_tag(action_index, item_index, tag_name)`

Gets the tag with the given name from a specific redo item action, or `nil` if it doesn't exist.

#### Parameters

##### action_index

**Type:** [uint32](../concepts/uint32.md)

The index of the redo action.

##### item_index

**Type:** [uint32](../concepts/uint32.md)

The index of the redo item, ordered from most recent to oldest.

##### tag_name

**Type:** [string](../concepts/string.md)

The name of the tag to get.

#### Return values

- [AnyBasic](../concepts/AnyBasic.md)

### get_redo_tags

`get_redo_tags(action_index, item_index)`

Gets all tags for the given redo action.

#### Parameters

##### action_index

**Type:** [uint32](../concepts/uint32.md)

The index of the redo action.

##### item_index

**Type:** [uint32](../concepts/uint32.md)

The index of the redo item, ordered from most recent to oldest.

#### Return values

- [Tags](../concepts/Tags.md)

### get_undo_item

`get_undo_item(index)`

Gets an undo item from the undo stack.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo item to get, ordered from most recent to oldest.

#### Return values

- array[[UndoRedoAction](../concepts/UndoRedoAction.md)]

### get_undo_item_count

`get_undo_item_count()`

The number undo items in the undo stack.

#### Return values

- [uint32](../concepts/uint32.md)

### get_undo_tag

`get_undo_tag(action_index, item_index, tag_name)`

Gets the tag with the given name from a specific undo item action, or `nil` if it doesn't exist.

#### Parameters

##### action_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo action.

##### item_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo item, ordered from most recent to oldest.

##### tag_name

**Type:** [string](../concepts/string.md)

The name of the tag to get.

#### Return values

- [AnyBasic](../concepts/AnyBasic.md)

### get_undo_tags

`get_undo_tags(action_index, item_index)`

Gets all tags for the given undo action.

#### Parameters

##### action_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo action.

##### item_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo item, ordered from most recent to oldest.

#### Return values

- [Tags](../concepts/Tags.md)

### remove_redo_action

`remove_redo_action(action_index, item_index)`

Removes an undo action from the specified undo item on the redo stack.

#### Parameters

##### action_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo action to remove.

##### item_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo item to change, ordered from most recent to oldest.

### remove_redo_item

`remove_redo_item(index)`

Removes an undo item from the redo stack.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo item to remove, ordered from most recent to oldest.

### remove_redo_tag

`remove_redo_tag(action_index, item_index, tag)`

Removes a tag with the given name from the specified redo item.

#### Parameters

##### action_index

**Type:** [uint32](../concepts/uint32.md)

The index of the redo action.

##### item_index

**Type:** [uint32](../concepts/uint32.md)

The index of the redo item, ordered from most recent to oldest.

##### tag

**Type:** [string](../concepts/string.md)

The name of the tag to remove.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the tag existed and was successfully removed.

### remove_undo_action

`remove_undo_action(action_index, item_index)`

Removes an undo action from the specified undo item on the undo stack.

#### Parameters

##### action_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo action to remove.

##### item_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo item to change, ordered from most recent to oldest.

### remove_undo_item

`remove_undo_item(index)`

Removes an undo item from the undo stack.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo item to remove, ordered from most recent to oldest.

### remove_undo_tag

`remove_undo_tag(action_index, item_index, tag)`

Removes a tag with the given name from the specified undo item.

#### Parameters

##### action_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo action.

##### item_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo item, ordered from most recent to oldest.

##### tag

**Type:** [string](../concepts/string.md)

The name of the tag to remove.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the tag existed and was successfully removed.

### set_redo_tag

`set_redo_tag(action_index, item_index, tag, tag_name)`

Sets a new tag with the given name and value on the specified redo item action.

#### Parameters

##### action_index

**Type:** [uint32](../concepts/uint32.md)

The index of the redo action.

##### item_index

**Type:** [uint32](../concepts/uint32.md)

The index of the redo item, ordered from most recent to oldest.

##### tag

**Type:** [AnyBasic](../concepts/AnyBasic.md)

The contents of the new tag.

##### tag_name

**Type:** [string](../concepts/string.md)

The name of the tag to set.

### set_undo_tag

`set_undo_tag(action_index, item_index, tag, tag_name)`

Sets a new tag with the given name and value on the specified undo item action.

#### Parameters

##### action_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo action.

##### item_index

**Type:** [uint32](../concepts/uint32.md)

The index of the undo item, ordered from most recent to oldest.

##### tag

**Type:** [AnyBasic](../concepts/AnyBasic.md)

The contents of the new tag.

##### tag_name

**Type:** [string](../concepts/string.md)

The name of the tag to set.
