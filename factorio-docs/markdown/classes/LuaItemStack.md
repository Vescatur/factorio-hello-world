# LuaItemStack

_class_

**Inherits from:** [LuaItemCommon](../classes/LuaItemCommon.md)

A reference to an item and count owned by some external entity.

In most instances this is a simple reference as in: it points at a specific slot in an inventory and not the item in the slot.

In the instance this references an item on a [LuaTransportLine](../classes/LuaTransportLine.md) the reference is only guaranteed to stay valid (and refer to the same item) as long as nothing changes the transport line.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [uint32](../concepts/uint32.md) |  |
| [health](#health) | [float](../concepts/float.md) |  |
| [is_module](#is-module) | [boolean](../concepts/boolean.md) |  |
| [item](#item) | [LuaItem](../classes/LuaItem.md) | yes |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [prototype](#prototype) | [LuaItemPrototype](../classes/LuaItemPrototype.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [spoil_percent](#spoil-percent) | [double](../concepts/double.md) |  |
| [spoil_tick](#spoil-tick) | [MapTick](../concepts/MapTick.md) |  |
| [type](#type) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [valid_for_read](#valid-for-read) | [boolean](../concepts/boolean.md) |  |

### count

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

Number of items in this stack.

### health

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

How much health the item has, as a number in range `[0, 1]`.

### is_module

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is a module

### item

**Read:** [LuaItem](../classes/LuaItem.md) · _read-only_ · _optional_

If the item has additional data, returns LuaItem pointing at the extra data, otherwise returns nil.

### name

**Read:** [string](../concepts/string.md) · _read-only_

Prototype name of the item held in this stack.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### prototype

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_

Prototype of the item held in this stack.

### quality

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_

The quality of this item.

### spoil_percent

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The percent spoiled this item is if it spoils. `0` in the case of the item not spoiling.

### spoil_tick

**Read:** [MapTick](../concepts/MapTick.md) · **Write:** [MapTick](../concepts/MapTick.md)

The tick this item spoils, or `0` if it does not spoil. When writing, setting to anything < the current game tick will spoil the item instantly.

### type

**Read:** [string](../concepts/string.md) · _read-only_

Type of the item prototype.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### valid_for_read

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this valid for reading? Differs from the usual `valid` in that `valid` will be `true` even if the item stack is blank but the entity that holds it is still valid.

## Methods

| Method | Summary |
| --- | --- |
| [add_ammo](#add-ammo) | Add ammo to this ammo item. |
| [add_durability](#add-durability) | Add durability to this tool item. |
| [can_set_stack](#can-set-stack) | Would a call to LuaItemStack::set_stack succeed? |
| [clear](#clear) | Clear this item stack. |
| [create_grid](#create-grid) | Creates the equipment grid for this item if it doesn't exist and this is an item-with-entity-data that supports equipment grids. |
| [drain_ammo](#drain-ammo) | Remove ammo from this ammo item. |
| [drain_durability](#drain-durability) | Remove durability from this tool item. |
| [export_stack](#export-stack) | Export a supported item (blueprint, blueprint-book, deconstruction-planner, upgrade-planner, item-with-tags) to a string. |
| [import_stack](#import-stack) | Import a supported item (blueprint, blueprint-book, deconstruction-planner, upgrade-planner, item-with-tags) from a string. |
| [set_stack](#set-stack) | Set this item stack to another item stack. |
| [spoil](#spoil) | Spoils this item if the item can spoil. |
| [swap_stack](#swap-stack) | Swaps this item stack with the given item stack if allowed. |
| [transfer_stack](#transfer-stack) | Transfers the given item stack into this item stack. |
| [use_capsule](#use-capsule) | Use the capsule item with the entity as the source, targeting the given position. |

### add_ammo

`add_ammo(amount)`

Add ammo to this ammo item.

#### Parameters

##### amount

**Type:** [float](../concepts/float.md)

Amount of ammo to add.

### add_durability

`add_durability(amount)`

Add durability to this tool item.

#### Parameters

##### amount

**Type:** [double](../concepts/double.md)

Amount of durability to add.

### can_set_stack

`can_set_stack(stack)`

Would a call to [LuaItemStack::set_stack](../classes/LuaItemStack.md#set-stack) succeed?

#### Parameters

##### stack

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md) · _optional_

Stack that would be set, possibly `nil`.

#### Return values

- [boolean](../concepts/boolean.md)

### clear

`clear()`

Clear this item stack.

### create_grid

`create_grid()`

Creates the equipment grid for this item if it doesn't exist and this is an item-with-entity-data that supports equipment grids.

#### Return values

- [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md)

### drain_ammo

`drain_ammo(amount)`

Remove ammo from this ammo item.

#### Parameters

##### amount

**Type:** [float](../concepts/float.md)

Amount of ammo to remove.

### drain_durability

`drain_durability(amount)`

Remove durability from this tool item.

#### Parameters

##### amount

**Type:** [double](../concepts/double.md)

Amount of durability to remove.

### export_stack

`export_stack()`

Export a supported item (blueprint, blueprint-book, deconstruction-planner, upgrade-planner, item-with-tags) to a string.

#### Return values

- [string](../concepts/string.md) — The exported string

### import_stack

`import_stack(data)`

Import a supported item (blueprint, blueprint-book, deconstruction-planner, upgrade-planner, item-with-tags) from a string.

#### Parameters

##### data

**Type:** [string](../concepts/string.md)

The string to import

#### Return values

- [int32](../concepts/int32.md) — 0 if the import succeeded with no errors. -1 if the import succeeded with errors. 1 if the import failed.

### set_stack

`set_stack(stack)`

Set this item stack to another item stack.

#### Parameters

##### stack

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md) · _optional_

Item stack to set it to. Omitting this parameter or passing `nil` will clear this item stack, as if [LuaItemStack::clear](../classes/LuaItemStack.md#clear) was called.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the stack was set successfully. Returns `false` if this stack was not [valid for write](../classes/LuaItemStack.md#can-set-stack).

### spoil

`spoil()`

Spoils this item if the item can spoil.

### swap_stack

`swap_stack(stack)`

Swaps this item stack with the given item stack if allowed.

#### Parameters

##### stack

**Type:** [LuaItemStack](../classes/LuaItemStack.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the 2 stacks were swapped successfully.

### transfer_stack

`transfer_stack(amount, stack)`

Transfers the given item stack into this item stack.

#### Parameters

##### amount

**Type:** [uint32](../concepts/uint32.md) · _optional_

##### stack

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

#### Return values

- [boolean](../concepts/boolean.md) — `true` if the full stack (or requested amount) was transferred.

### use_capsule

`use_capsule(entity, target_position)`

Use the capsule item with the entity as the source, targeting the given position.

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity to use the capsule item with.

##### target_position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position to use the capsule item with.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)] — Array of the entities that were created by the capsule action.
