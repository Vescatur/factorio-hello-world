# LuaInventory

_class_

A storage of item stacks.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [entity_owner](#entity-owner) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [equipment_owner](#equipment-owner) | [LuaEquipment](../classes/LuaEquipment.md) | yes |
| [index](#index) | [defines.inventory](../defines/defines.md) | yes |
| [max_weight](#max-weight) | [Weight](../concepts/Weight.md) | yes |
| [mod_owner](#mod-owner) | [string](../concepts/string.md) | yes |
| [name](#name) | [string](../concepts/string.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [player_owner](#player-owner) | [LuaPlayer](../classes/LuaPlayer.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [weight](#weight) | [Weight](../concepts/Weight.md) |  |

### entity_owner

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The entity that owns this inventory, if any.

### equipment_owner

**Read:** [LuaEquipment](../classes/LuaEquipment.md) · _read-only_ · _optional_

The equipment that owns this inventory, if any.

### index

**Read:** [defines.inventory](../defines/defines.md) · _read-only_ · _optional_

The inventory index this inventory uses, if any.

### max_weight

**Read:** [Weight](../concepts/Weight.md) · _read-only_ · _optional_

Gives a maximum weight of items that can be inserted into this inventory.

### mod_owner

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The mod that owns this inventory, if any.

### name

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

Name of this inventory, if any. Names match keys of [defines.inventory](../defines/defines.md).

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### player_owner

**Read:** [LuaPlayer](../classes/LuaPlayer.md) · _read-only_ · _optional_

The player that owns this inventory, if any.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### weight

**Read:** [Weight](../concepts/Weight.md) · _read-only_

Gives a total weight of all items currently in this inventory.

## Methods

| Method | Summary |
| --- | --- |
| [can_insert](#can-insert) | Can at least some items be inserted? |
| [can_set_filter](#can-set-filter) | If the given inventory slot filter can be set to the given filter. |
| [clear](#clear) | Clear this inventory of all items so that it becomes empty. |
| [count_empty_stacks](#count-empty-stacks) | Counts the number of empty stacks. |
| [destroy](#destroy) | Destroys this inventory. |
| [find_empty_stack](#find-empty-stack) | Finds the first empty stack. Filtered slots are excluded unless a filter item is given. |
| [find_item_stack](#find-item-stack) | Finds the first LuaItemStack in the inventory that matches the given item name. |
| [get_bar](#get-bar) | Get the current bar. This is the index at which the red area starts. |
| [get_contents](#get-contents) | Get counts of all items in this inventory. |
| [get_filter](#get-filter) | Gets the filter for the given item stack index. |
| [get_insertable_count](#get-insertable-count) | Gets the number of the given item that can be inserted into this inventory. |
| [get_item_count](#get-item-count) | Get the number of all or some items in this inventory. |
| [get_item_count_filtered](#get-item-count-filtered) | Get the number of items in this inventory that match provided filter. |
| [get_item_quality_counts](#get-item-quality-counts) | Get the number of all or some items in this inventory, aggregated by quality. |
| [insert](#insert) | Insert items into this inventory. |
| [is_empty](#is-empty) | Does this inventory contain nothing? |
| [is_filtered](#is-filtered) | If this inventory supports filters and has at least 1 filter set. |
| [is_full](#is-full) | Is every stack in this inventory full? Ignores stacks blocked by the current bar. |
| [remove](#remove) | Remove items from this inventory. |
| [resize](#resize) | Resizes the inventory. |
| [set_bar](#set-bar) | Set the current bar. |
| [set_filter](#set-filter) | Sets the filter for the given item stack index. |
| [sort_and_merge](#sort-and-merge) | Sorts and merges the items in this inventory. |
| [supports_bar](#supports-bar) | Does this inventory support a bar? Bar is the draggable red thing, found for example on chests, that limits the portion of the inventory that may be manipulated by machines. |
| [supports_filters](#supports-filters) | If this inventory supports filters. |
| [transfer_from_inventory](#transfer-from-inventory) | Transfer items from provided LuaInventory into this inventory. |
| [transfer_from_stack](#transfer-from-stack) | Transfer items from provided LuaItemStack into this inventory. |

### can_insert

`can_insert(items)`

Can at least some items be inserted?

#### Parameters

##### items

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

Items that would be inserted.

#### Return values

- [boolean](../concepts/boolean.md) — `true` if at least a part of the given items could be inserted into this inventory.

### can_set_filter

`can_set_filter(filter, index)`

If the given inventory slot filter can be set to the given filter.

#### Parameters

##### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md)

The item filter

##### index

**Type:** [uint32](../concepts/uint32.md)

The item stack index

#### Return values

- [boolean](../concepts/boolean.md)

### clear

`clear()`

Clear this inventory of all items so that it becomes empty.

### count_empty_stacks

`count_empty_stacks(include_bar, include_filtered)`

Counts the number of empty stacks.

#### Parameters

##### include_bar

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, slots blocked by the current bar will be included. Defaults to true.

##### include_filtered

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, filtered slots will be included. Defaults to false.

#### Return values

- [uint32](../concepts/uint32.md)

### destroy

`destroy()`

Destroys this inventory.

Only inventories created by [LuaGameScript::create_inventory](../classes/LuaGameScript.md#create-inventory) can be destroyed this way.

### find_empty_stack

`find_empty_stack(item)`

Finds the first empty stack. Filtered slots are excluded unless a filter item is given.

#### Parameters

##### item

**Type:** [ItemWithQualityID](../concepts/ItemWithQualityID.md) · _optional_

If given, empty stacks that are filtered for this item will be included.

#### Return values

- [LuaItemStack](../classes/LuaItemStack.md) _(optional)_ — The first empty stack, or `nil` if there aren't any empty stacks.
- [uint32](../concepts/uint32.md) _(optional)_ — The stack index of the matching stack, if any is found.

### find_item_stack

`find_item_stack(item)`

Finds the first LuaItemStack in the inventory that matches the given item name.

#### Parameters

##### item

**Type:** [ItemWithQualityID](../concepts/ItemWithQualityID.md)

The item to find

#### Return values

- [LuaItemStack](../classes/LuaItemStack.md) _(optional)_ — The first matching stack, or `nil` if none match.
- [uint32](../concepts/uint32.md) _(optional)_ — The stack index of the matching stack, if any is found.

### get_bar

`get_bar()`

Get the current bar. This is the index at which the red area starts.

Only useable if this inventory supports having a bar.

#### Return values

- [uint32](../concepts/uint32.md)

### get_contents

`get_contents()`

Get counts of all items in this inventory.

#### Return values

- array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] — List of all items in the inventory.

### get_filter

`get_filter(index)`

Gets the filter for the given item stack index.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The item stack index

#### Return values

- [ItemFilter](../concepts/ItemFilter.md) _(optional)_ — The current filter or `nil` if none.

### get_insertable_count

`get_insertable_count(item)`

Gets the number of the given item that can be inserted into this inventory.

This is a "best guess" number; things like assembling machine filtered slots, module slots, items with durability, and items with mixed health will cause the result to be inaccurate. The main use for this is in checking how many of a basic item can fit into a basic inventory.

This accounts for the 'bar' on the inventory.

#### Parameters

##### item

**Type:** [ItemWithQualityID](../concepts/ItemWithQualityID.md)

The item to check.

#### Return values

- [uint32](../concepts/uint32.md)

### get_item_count

`get_item_count(item)`

Get the number of all or some items in this inventory.

#### Parameters

##### item

**Type:** [ItemWithQualityID](../concepts/ItemWithQualityID.md) · _optional_

The item to count. If not specified, count all items.

#### Return values

- [uint32](../concepts/uint32.md)

### get_item_count_filtered

`get_item_count_filtered(filter)`

Get the number of items in this inventory that match provided filter.

#### Parameters

##### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md)

#### Return values

- [uint32](../concepts/uint32.md)

### get_item_quality_counts

`get_item_quality_counts(item)`

Get the number of all or some items in this inventory, aggregated by quality.

#### Parameters

##### item

**Type:** [ItemID](../concepts/ItemID.md) · _optional_

#### Return values

- dictionary[[string](../concepts/string.md) → [uint32](../concepts/uint32.md)]

### insert

`insert(items)`

Insert items into this inventory.

#### Parameters

##### items

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

Items to insert.

#### Return values

- [uint32](../concepts/uint32.md) — Number of items actually inserted.

### is_empty

`is_empty()`

Does this inventory contain nothing?

#### Return values

- [boolean](../concepts/boolean.md)

### is_filtered

`is_filtered()`

If this inventory supports filters and has at least 1 filter set.

#### Return values

- [boolean](../concepts/boolean.md)

### is_full

`is_full()`

Is every stack in this inventory full? Ignores stacks blocked by the current bar.

For the input slots of crafting machines that allow counts larger than the item stack size, this may return true even when more items can still be inserted.

#### Return values

- [boolean](../concepts/boolean.md)

### remove

`remove(items)`

Remove items from this inventory.

#### Parameters

##### items

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

Items to remove.

#### Return values

- [uint32](../concepts/uint32.md) — Number of items actually removed.

### resize

`resize(size)`

Resizes the inventory.

Items in slots beyond the new capacity are deleted.

Only inventories created by [LuaGameScript::create_inventory](../classes/LuaGameScript.md#create-inventory) can be resized.

#### Parameters

##### size

**Type:** [uint16](../concepts/uint16.md)

New size of a inventory

#### Raises

- `on_pre_script_inventory_resized` — 
- `on_script_inventory_resized` — 

### set_bar

`set_bar(bar)`

Set the current bar.

Only useable if this inventory supports having a bar.

#### Parameters

##### bar

**Type:** [uint32](../concepts/uint32.md) · _optional_

The new limit. Omitting this parameter or passing `nil` will clear the limit.

### set_filter

`set_filter(filter, index)`

Sets the filter for the given item stack index.

Some inventory slots don't allow some filters (gun ammo can't be filtered for non-ammo).

#### Parameters

##### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md) ∣ [nil](../concepts/nil.md)

The new filter. `nil` erases any existing filter.

##### index

**Type:** [uint32](../concepts/uint32.md)

The item stack index.

#### Return values

- [boolean](../concepts/boolean.md) — If the filter was allowed to be set.

### sort_and_merge

`sort_and_merge()`

Sorts and merges the items in this inventory.

### supports_bar

`supports_bar()`

Does this inventory support a bar? Bar is the draggable red thing, found for example on chests, that limits the portion of the inventory that may be manipulated by machines.

"Supporting a bar" doesn't mean that the bar is set to some nontrivial value. Supporting a bar means the inventory supports having this limit at all. The character's inventory is an example of an inventory without a bar; the wooden chest's inventory is an example of one with a bar.

#### Return values

- [boolean](../concepts/boolean.md)

### supports_filters

`supports_filters()`

If this inventory supports filters.

#### Return values

- [boolean](../concepts/boolean.md)

### transfer_from_inventory

`transfer_from_inventory(filter, source)`

Transfer items from provided LuaInventory into this inventory.

Note that source inventory must be different than this inventory.

#### Parameters

##### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md) · _optional_

##### source

**Type:** [LuaInventory](../classes/LuaInventory.md)

#### Return values

- [uint32](../concepts/uint32.md) — Number of items actually transferred.

### transfer_from_stack

`transfer_from_stack(source)`

Transfer items from provided LuaItemStack into this inventory.

Note that source stack must not belong to this inventory.

#### Parameters

##### source

**Type:** [LuaItemStack](../classes/LuaItemStack.md)

#### Return values

- [uint32](../concepts/uint32.md) — Number of items actually transferred.

## Operators

### index

`index()`

The indexing operator.

**Example:**

```
-- Will get the first item in the player's inventory.
game.player.get_main_inventory()[1]
```

### length

`length()`

Get the number of slots in this inventory.

**Example:**

```
-- Will print the number of slots in the player's main inventory.
game.player.print(#game.player.get_main_inventory())
```
