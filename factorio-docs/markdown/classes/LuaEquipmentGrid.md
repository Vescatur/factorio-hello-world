# LuaEquipmentGrid

_class_

An equipment grid is for example the inside of a power armor.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [available_in_batteries](#available-in-batteries) | [double](../concepts/double.md) |  |
| [battery_capacity](#battery-capacity) | [double](../concepts/double.md) |  |
| [entity_owner](#entity-owner) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [equipment](#equipment) | array[[LuaEquipment](../classes/LuaEquipment.md)] |  |
| [height](#height) | [uint32](../concepts/uint32.md) |  |
| [inhibit_movement_bonus](#inhibit-movement-bonus) | [boolean](../concepts/boolean.md) |  |
| [inventory_bonus](#inventory-bonus) | [uint32](../concepts/uint32.md) |  |
| [itemstack_owner](#itemstack-owner) | [LuaItemStack](../classes/LuaItemStack.md) | yes |
| [max_shield](#max-shield) | [float](../concepts/float.md) |  |
| [max_solar_energy](#max-solar-energy) | [double](../concepts/double.md) |  |
| [movement_bonus](#movement-bonus) | [double](../concepts/double.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [player_owner](#player-owner) | [LuaPlayer](../classes/LuaPlayer.md) | yes |
| [prototype](#prototype) | [LuaEquipmentGridPrototype](../classes/LuaEquipmentGridPrototype.md) |  |
| [shield](#shield) | [float](../concepts/float.md) |  |
| [unique_id](#unique-id) | [uint32](../concepts/uint32.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [width](#width) | [uint32](../concepts/uint32.md) |  |

### available_in_batteries

**Read:** [double](../concepts/double.md) · _read-only_

The total energy stored in all batteries in the equipment grid.

### battery_capacity

**Read:** [double](../concepts/double.md) · _read-only_

Total energy storage capacity of all batteries in the equipment grid.

### entity_owner

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The entity that this equipment grid is owned by (in some inventory or item stack.)

If the owning entity is a character owned by some player and the player is disconnected this will return `nil`.

### equipment

**Read:** array[[LuaEquipment](../classes/LuaEquipment.md)] · _read-only_

All the equipment in this grid.

### height

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Height of the equipment grid.

### inhibit_movement_bonus

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this grid's equipment movement bonus is active.

### inventory_bonus

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The total amount of inventory bonus this equipment grid gives.

### itemstack_owner

**Read:** [LuaItemStack](../classes/LuaItemStack.md) · _read-only_ · _optional_

The item stack that this equipment grid is owned by.

### max_shield

**Read:** [float](../concepts/float.md) · _read-only_

The maximum amount of shield hitpoints this equipment grid has across all shield equipment.

### max_solar_energy

**Read:** [double](../concepts/double.md) · _read-only_

Maximum energy per tick that can be created by all solar panels in the equipment grid on the current surface. Actual generated energy varies depending on the daylight levels.

### movement_bonus

**Read:** [double](../concepts/double.md) · _read-only_

The total amount of movement bonus this equipment grid gives.

Returns `0` if [LuaEquipmentGrid::inhibit_movement_bonus](../classes/LuaEquipmentGrid.md#inhibit-movement-bonus) is `true`.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### player_owner

**Read:** [LuaPlayer](../classes/LuaPlayer.md) · _read-only_ · _optional_

The player that this equipment grid is owned by (in some inventory or item stack.)

### prototype

**Read:** [LuaEquipmentGridPrototype](../classes/LuaEquipmentGridPrototype.md) · _read-only_

### shield

**Read:** [float](../concepts/float.md) · _read-only_

The amount of shield hitpoints this equipment grid currently has across all shield equipment.

### unique_id

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Unique identifier of this equipment grid.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### width

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Width of the equipment grid.

## Methods

| Method | Summary |
| --- | --- |
| [can_move](#can-move) | Check whether moving an equipment would succeed. |
| [cancel_removal](#cancel-removal) | Cancels removal for the given equipment. |
| [clear](#clear) | Clear all equipment from the grid, removing it without actually returning it. |
| [count](#count) | Get the number of all or some equipment in this grid. |
| [find](#find) | Find equipment by name. |
| [get](#get) | Find equipment in the Equipment Grid colliding with this position. |
| [get_contents](#get-contents) | Get counts of all equipment in this grid. |
| [get_generator_energy](#get-generator-energy) | Total energy per tick generated by the equipment inside this grid. |
| [move](#move) | Move an equipment within this grid. |
| [order_removal](#order-removal) | Marks the given equipment for removal. If the given equipment is a ghost it is removed. |
| [put](#put) | Insert an equipment into the grid. |
| [revive](#revive) | Revives the given equipment ghost if possible. |
| [take](#take) | Remove an equipment from the grid. |
| [take_all](#take-all) | Remove all equipment from the grid. |

### can_move

`can_move({equipment, position})`

Check whether moving an equipment would succeed.

#### Parameters

##### equipment

**Type:** [LuaEquipment](../classes/LuaEquipment.md)

The equipment to move

##### position

**Type:** [EquipmentPosition](../concepts/EquipmentPosition.md)

Where to put it

#### Return values

- [boolean](../concepts/boolean.md)

### cancel_removal

`cancel_removal(equipment)`

Cancels removal for the given equipment.

#### Parameters

##### equipment

**Type:** [LuaEquipment](../classes/LuaEquipment.md)

#### Return values

- [boolean](../concepts/boolean.md) — If the equipment removal was successfully cancelled.

### clear

`clear(by_player)`

Clear all equipment from the grid, removing it without actually returning it.

#### Parameters

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

If provided, the action is done 'as' this player and [on_player_removed_equipment](../events/on_player_removed_equipment.md) is triggered.

### count

`count(equipment)`

Get the number of all or some equipment in this grid.

#### Parameters

##### equipment

**Type:** [EquipmentWithQualityID](../concepts/EquipmentWithQualityID.md) · _optional_

The equipment to count. If not specified, count all equipment.

#### Return values

- [uint32](../concepts/uint32.md)

### find

`find(equipment, search_ghosts)`

Find equipment by name.

#### Parameters

##### equipment

**Type:** [EquipmentWithQualityID](../concepts/EquipmentWithQualityID.md)

Prototype of the equipment to find.

##### search_ghosts

**Type:** [boolean](../concepts/boolean.md) · _optional_

If ghosts inner equipment should be searched. Defaults to `false`

#### Return values

- [LuaEquipment](../classes/LuaEquipment.md) _(optional)_ — The first found equipment, or `nil` if equipment could not be found.

### get

`get(position)`

Find equipment in the Equipment Grid colliding with this position.

#### Parameters

##### position

**Type:** [EquipmentPosition](../concepts/EquipmentPosition.md)

The position

#### Return values

- [LuaEquipment](../classes/LuaEquipment.md) _(optional)_ — The found equipment, or `nil` if equipment occupying the given position could not be found.

### get_contents

`get_contents()`

Get counts of all equipment in this grid.

#### Return values

- array[[EquipmentWithQualityCounts](../concepts/EquipmentWithQualityCounts.md)] — List of all equipment in the grid.

### get_generator_energy

`get_generator_energy(quality)`

Total energy per tick generated by the equipment inside this grid.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

Defaults to `"normal"`.

#### Return values

- [double](../concepts/double.md)

### move

`move({equipment, position})`

Move an equipment within this grid.

#### Parameters

##### equipment

**Type:** [LuaEquipment](../classes/LuaEquipment.md)

The equipment to move

##### position

**Type:** [EquipmentPosition](../concepts/EquipmentPosition.md)

Where to put it

#### Return values

- [boolean](../concepts/boolean.md) — `true` if the equipment was successfully moved.

### order_removal

`order_removal(equipment)`

Marks the given equipment for removal. If the given equipment is a ghost it is removed.

#### Parameters

##### equipment

**Type:** [LuaEquipment](../classes/LuaEquipment.md)

#### Return values

- [boolean](../concepts/boolean.md) — If the equipment was successfully marked for removal (or in the case of a ghost; removed.)

### put

`put({by_player, ghost, name, position, quality})`

Insert an equipment into the grid.

#### Parameters

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

If provided the action is done 'as' this player and [on_player_placed_equipment](../events/on_player_placed_equipment.md) is triggered.

##### ghost

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, place the equipment as a ghost.

##### name

**Type:** [EquipmentID](../concepts/EquipmentID.md)

Equipment prototype name

##### position

**Type:** [EquipmentPosition](../concepts/EquipmentPosition.md) · _optional_

Grid position to put the equipment in.

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

The quality, `nil` for any or if not provided `normal` is used.

#### Return values

- [LuaEquipment](../classes/LuaEquipment.md) _(optional)_ — The newly-added equipment, or `nil` if the equipment could not be added.

### revive

`revive(equipment)`

Revives the given equipment ghost if possible.

#### Parameters

##### equipment

**Type:** [LuaEquipment](../classes/LuaEquipment.md)

The equipment ghost to revive.

#### Return values

- [LuaEquipment](../classes/LuaEquipment.md)

### take

`take({by_player, equipment, position})`

Remove an equipment from the grid.

#### Parameters

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

If provided the action is done 'as' this player and [on_player_removed_equipment](../events/on_player_removed_equipment.md) is triggered.

##### equipment

**Type:** [LuaEquipment](../classes/LuaEquipment.md) · _optional_

Take this exact equipment.

##### position

**Type:** [EquipmentPosition](../concepts/EquipmentPosition.md) · _optional_

Take the equipment that contains this position in the grid.

#### Return values

- [ItemWithQualityCount](../concepts/ItemWithQualityCount.md) _(optional)_ — The removed equipment, or `nil` if no equipment was removed.

### take_all

`take_all(by_player)`

Remove all equipment from the grid.

#### Parameters

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

If provided, the action is done 'as' this player and [on_player_removed_equipment](../events/on_player_removed_equipment.md) is triggered.

#### Return values

- array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] — List of the equipment that has been removed.
