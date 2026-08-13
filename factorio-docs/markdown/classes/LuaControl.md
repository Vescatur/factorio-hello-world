# LuaControl

_class_ · **abstract**

This is an abstract base class containing the common functionality between [LuaPlayer](../classes/LuaPlayer.md) and entities (see [LuaEntity](../classes/LuaEntity.md)). When accessing player-related functions through a [LuaEntity](../classes/LuaEntity.md), it must refer to a character entity.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [build_distance](#build-distance) | [uint32](../concepts/uint32.md) |  |
| [cargo_pod](#cargo-pod) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [character_additional_mining_categories](#character-additional-mining-categories) | array[[string](../concepts/string.md)] |  |
| [character_build_distance_bonus](#character-build-distance-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_crafting_speed_modifier](#character-crafting-speed-modifier) | [double](../concepts/double.md) |  |
| [character_health_bonus](#character-health-bonus) | [float](../concepts/float.md) |  |
| [character_inventory_slots_bonus](#character-inventory-slots-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_item_drop_distance_bonus](#character-item-drop-distance-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_item_pickup_distance_bonus](#character-item-pickup-distance-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_loot_pickup_distance_bonus](#character-loot-pickup-distance-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_maximum_following_robot_count_bonus](#character-maximum-following-robot-count-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_mining_progress](#character-mining-progress) | [double](../concepts/double.md) |  |
| [character_mining_speed_modifier](#character-mining-speed-modifier) | [double](../concepts/double.md) |  |
| [character_reach_distance_bonus](#character-reach-distance-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_resource_reach_distance_bonus](#character-resource-reach-distance-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_running_speed](#character-running-speed) | [double](../concepts/double.md) |  |
| [character_running_speed_modifier](#character-running-speed-modifier) | [double](../concepts/double.md) |  |
| [character_trash_slot_count_bonus](#character-trash-slot-count-bonus) | [uint32](../concepts/uint32.md) |  |
| [cheat_mode](#cheat-mode) | [boolean](../concepts/boolean.md) |  |
| [crafting_queue](#crafting-queue) | array[[CraftingQueueItem](../concepts/CraftingQueueItem.md)] | yes |
| [crafting_queue_progress](#crafting-queue-progress) | [double](../concepts/double.md) |  |
| [crafting_queue_size](#crafting-queue-size) | [uint32](../concepts/uint32.md) |  |
| [cursor_ghost](#cursor-ghost) | [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md) | yes |
| [cursor_record](#cursor-record) | [LuaRecord](../classes/LuaRecord.md) | yes |
| [cursor_stack](#cursor-stack) | [LuaItemStack](../classes/LuaItemStack.md) | yes |
| [driving](#driving) | [boolean](../concepts/boolean.md) |  |
| [drop_item_distance](#drop-item-distance) | [uint32](../concepts/uint32.md) |  |
| [flight_height](#flight-height) | [double](../concepts/double.md) |  |
| [following_robots](#following-robots) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [force_index](#force-index) | [uint32](../concepts/uint32.md) |  |
| [hub](#hub) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [in_combat](#in-combat) | [boolean](../concepts/boolean.md) |  |
| [is_flying](#is-flying) | [boolean](../concepts/boolean.md) |  |
| [item_pickup_distance](#item-pickup-distance) | [double](../concepts/double.md) |  |
| [loot_pickup_distance](#loot-pickup-distance) | [double](../concepts/double.md) |  |
| [mining_progress](#mining-progress) | [double](../concepts/double.md) |  |
| [mining_state](#mining-state) | table{mining, position} |  |
| [opened](#opened) | [LuaEntity](../classes/LuaEntity.md) ∣ [LuaItemStack](../classes/LuaItemStack.md) ∣ [LuaEquipment](../classes/LuaEquipment.md) ∣ [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md) ∣ [LuaPlayer](../classes/LuaPlayer.md) ∣ [LuaGuiElement](../classes/LuaGuiElement.md) ∣ [LuaInventory](../classes/LuaInventory.md) ∣ [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) ∣ [defines.gui_type](../defines/defines.md) | yes |
| [opened_gui_type](#opened-gui-type) | [defines.gui_type](../defines/defines.md) | yes |
| [picking_state](#picking-state) | [boolean](../concepts/boolean.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [reach_distance](#reach-distance) | [uint32](../concepts/uint32.md) |  |
| [render_position](#render-position) | [MapPosition](../concepts/MapPosition.md) |  |
| [repair_state](#repair-state) | table{position, repairing} |  |
| [resource_reach_distance](#resource-reach-distance) | [double](../concepts/double.md) |  |
| [riding_state](#riding-state) | [RidingState](../concepts/RidingState.md) |  |
| [selected](#selected) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [shooting_state](#shooting-state) | table{position, state} |  |
| [surface](#surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [vehicle](#vehicle) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [walking_state](#walking-state) | table{direction, walking} |  |

### build_distance

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The build distance of this character or max uint when not a character or player connected to a character.

### cargo_pod

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The cargo pod the player is currently sitting in or the cargo pod attached to this rocket silo.

### character_additional_mining_categories

**Read:** array[[string](../concepts/string.md)] · **Write:** array[[string](../concepts/string.md)]

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_build_distance_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_crafting_speed_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_health_bonus

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_inventory_slots_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_item_drop_distance_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_item_pickup_distance_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_loot_pickup_distance_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_maximum_following_robot_count_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_mining_progress

**Read:** [double](../concepts/double.md) · _read-only_

The current mining progress between 0 and 1 of this character, or 0 if they aren't mining.

### character_mining_speed_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_reach_distance_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_resource_reach_distance_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_running_speed

**Read:** [double](../concepts/double.md) · _read-only_

The current movement speed of this character, including effects from exoskeletons, tiles, stickers and shooting.

### character_running_speed_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Modifies the running speed of this character by the given value as a percentage. Setting the running modifier to `0.5` makes the character run 50% faster. The minimum value of `-1` reduces the movement speed by 100%, resulting in a speed of `0`.

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### character_trash_slot_count_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### cheat_mode

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When `true` hand crafting is free and instant.

### crafting_queue

**Read:** array[[CraftingQueueItem](../concepts/CraftingQueueItem.md)] · _read-only_ · _optional_

The current crafting queue items.

### crafting_queue_progress

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The crafting queue progress in the range `[0-1]`. `0` when no recipe is being crafted.

### crafting_queue_size

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Size of the crafting queue.

### cursor_ghost

**Read:** [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md) · **Write:** [ItemWithQualityID](../concepts/ItemWithQualityID.md) · _optional_

The ghost prototype in the player's cursor.

Items in the cursor stack will take priority over the cursor ghost.

### cursor_record

**Read:** [LuaRecord](../classes/LuaRecord.md) · _read-only_ · _optional_

The blueprint record in the player's cursor.

### cursor_stack

**Read:** [LuaItemStack](../classes/LuaItemStack.md) · _read-only_ · _optional_

The player's cursor stack. `nil` if the player controller is a spectator.

**Example:**

```
-- Even though this property is marked as read-only, it returns a LuaItemStack,
-- meaning it can be manipulated like so:
player.cursor_stack.clear()
```

### driving

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the player is in a vehicle. Writing to this attribute puts the player in or out of a vehicle.

**Raises:**

- `on_player_driving_changed_state` — Raised if the driving state successfully changed.

### drop_item_distance

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The item drop distance of this character or max uint when not a character or player connected to a character.

### flight_height

**Read:** [double](../concepts/double.md) · _read-only_

The current flight height for this player or character entity.

When called on an entity, only valid if this entity is a character.

### following_robots

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

The current combat robots following the character.

When called on a [LuaPlayer](../classes/LuaPlayer.md), it must be associated with a character (see [LuaPlayer::character](../classes/LuaPlayer.md#character)).

### force

**Read:** [LuaForce](../classes/LuaForce.md) · **Write:** [ForceID](../concepts/ForceID.md)

The force of this entity. Reading will always give a [LuaForce](../classes/LuaForce.md), but it is possible to assign either [string](../concepts/string.md), [uint8](../concepts/uint8.md) or [LuaForce](../classes/LuaForce.md) to this attribute to change the force.

### force_index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Unique [index](../classes/LuaForce.md#index) (ID) associated with the force of this entity.

### hub

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The space platform hub the player is currently sitting in.

### in_combat

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this character entity is in combat.

### is_flying

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this player or character entity is flying.

When called on an entity, only valid if this entity is a character.

### item_pickup_distance

**Read:** [double](../concepts/double.md) · _read-only_

The item pickup distance of this character or max double when not a character or player connected to a character.

### loot_pickup_distance

**Read:** [double](../concepts/double.md) · _read-only_

The loot pickup distance of this character or max double when not a character or player connected to a character.

### mining_progress

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

For characters and players the number is between 0 and 1.

For mining drills the number is with the range [0, mining_target.prototype.mineable_properties.mining_time].

For all other types the number is 0.

### mining_state

**Read:** table{mining, position} · **Write:** table{mining, position}

Current mining state. Will error if written to with a [controller_type](../classes/LuaPlayer.md#controller-type) other than `character`, `god`, or `editor`.

When the player isn't mining tiles the player will mine whatever entity is currently selected. See [LuaControl::selected](../classes/LuaControl.md#selected) and [LuaControl::update_selected_entity](../classes/LuaControl.md#update-selected-entity).

### opened

**Read:** [LuaEntity](../classes/LuaEntity.md) ∣ [LuaItemStack](../classes/LuaItemStack.md) ∣ [LuaEquipment](../classes/LuaEquipment.md) ∣ [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md) ∣ [LuaPlayer](../classes/LuaPlayer.md) ∣ [LuaGuiElement](../classes/LuaGuiElement.md) ∣ [LuaInventory](../classes/LuaInventory.md) ∣ [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) ∣ [defines.gui_type](../defines/defines.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) ∣ [LuaItemStack](../classes/LuaItemStack.md) ∣ [LuaEquipment](../classes/LuaEquipment.md) ∣ [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md) ∣ [LuaPlayer](../classes/LuaPlayer.md) ∣ [LuaGuiElement](../classes/LuaGuiElement.md) ∣ [LuaInventory](../classes/LuaInventory.md) ∣ [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) ∣ [defines.gui_type](../defines/defines.md) · _optional_

The GUI the player currently has open.

This is the GUI that will asked to close (by firing the [on_gui_closed](../events/on_gui_closed.md) event) when the `Esc` or `E` keys are pressed. If this attribute is non-nil, then writing `nil` or a new GUI to it will ask the existing GUI to close.

Write supports any of the types. Read will return the `entity`, `equipment`, `equipment-grid`, `player`, `element`, `inventory`, `item` or `nil`.

**Raises:**

- `on_gui_opened` — Raised when writing a valid GUI target to this attribute.

### opened_gui_type

**Read:** [defines.gui_type](../defines/defines.md) · _read-only_ · _optional_

### picking_state

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Current item-picking state.

### position

**Read:** [MapPosition](../concepts/MapPosition.md) · _read-only_

The current position of the entity.

### reach_distance

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The reach distance of this character or max uint when not a character or player connected to a character.

### render_position

**Read:** [MapPosition](../concepts/MapPosition.md) · _read-only_

The current render position of the entity.

### repair_state

**Read:** table{position, repairing} · **Write:** table{position, repairing}

Current repair state.

### resource_reach_distance

**Read:** [double](../concepts/double.md) · _read-only_

The resource reach distance of this character or max double when not a character or player connected to a character.

### riding_state

**Read:** [RidingState](../concepts/RidingState.md) · **Write:** [RidingState](../concepts/RidingState.md)

Current riding state of this car, or of the car this player is riding in.

### selected

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The currently selected entity. Assigning an entity will select it if is selectable, otherwise the selection is cleared.

**Raises:**

- `on_selected_entity_changed` — Raised when a selectable entity is written to this attribute.

### shooting_state

**Read:** table{position, state} · **Write:** table{position, state}

Current shooting state.

### surface

**Read:** [LuaSurface](../classes/LuaSurface.md) · _read-only_

The surface this entity is currently on.

### surface_index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Unique [index](../classes/LuaSurface.md#index) (ID) associated with the surface this entity is currently on.

### vehicle

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The vehicle the player is currently sitting in.

### walking_state

**Read:** table{direction, walking} · **Write:** table{direction, walking}

Current walking state of the player, or the spider-vehicle the character is driving.

**Example:**

```
-- Make the player go north. Note that a one-shot action like this will only make the player walk for one tick.
game.player.walking_state = {walking = true, direction = defines.direction.north}
```

## Methods

| Method | Summary |
| --- | --- |
| [begin_crafting](#begin-crafting) | Begins crafting the given count of the given recipe. |
| [can_insert](#can-insert) | Can at least some items be inserted? |
| [can_place_entity](#can-place-entity) | Checks if this character or player can build the given entity at the given location on the surface the character or player is on. |
| [can_reach_entity](#can-reach-entity) | Can a given entity be opened or accessed? |
| [cancel_crafting](#cancel-crafting) | Cancels the given amount of crafts at the given crafting queue position. If this causes any later crafts that depend on the cancelled one to have insufficient ingredients, those crafts will also be cancelled. |
| [clear_gui_arrow](#clear-gui-arrow) | Removes the arrow created by `set_gui_arrow`. |
| [clear_items_inside](#clear-items-inside) | Remove all items from this entity. |
| [clear_selected_entity](#clear-selected-entity) | Unselect any selected entity. |
| [close_factoriopedia_gui](#close-factoriopedia-gui) | Closes the Factoriopedia GUI if it's open. |
| [disable_flashlight](#disable-flashlight) | Disable the flashlight. |
| [enable_flashlight](#enable-flashlight) | Enable the flashlight. |
| [get_craftable_count](#get-craftable-count) | Gets the count of the given recipe that can be crafted. |
| [get_inventory](#get-inventory) | Get an inventory belonging to this entity. This can be either the "main" inventory or some auxiliary one, like the module slots or logistic trash slots. |
| [get_inventory_name](#get-inventory-name) | Get name of inventory. Names match keys of defines.inventory. |
| [get_item_count](#get-item-count) | Get the number of all or some items in this entity. |
| [get_main_inventory](#get-main-inventory) | Gets the main inventory for this character or player if this is a character or player. |
| [get_max_inventory_index](#get-max-inventory-index) | The highest index of all inventories this entity can use. Allows iteration over all of them if desired. |
| [get_requester_point](#get-requester-point) | Gets the requester logistic point for this entity if it has one. |
| [has_items_inside](#has-items-inside) | Does this entity have any item inside it? |
| [insert](#insert) | Insert items into this entity. This works the same way as inserters or shift-clicking: the "best" inventory is chosen automatically. |
| [is_cursor_blueprint](#is-cursor-blueprint) | Returns whether the player is holding a blueprint. This takes both blueprint items as well as blueprint records from the blueprint library into account. |
| [is_cursor_empty](#is-cursor-empty) | Returns whether the player is holding something in the cursor. Takes into account items from the blueprint library, as well as items and ghost cursor. |
| [is_flashlight_enabled](#is-flashlight-enabled) | Is the flashlight enabled for the current controller. Only supported by defines.controllers.character and defines.controllers.remote. |
| [is_player](#is-player) | When `true` control adapter is a LuaPlayer object, `false` for entities including characters with players. |
| [mine_entity](#mine-entity) | Mines the given entity as if this player (or character) mined it. |
| [mine_tile](#mine-tile) | Mines the given tile as if this player (or character) mined it. |
| [open_factoriopedia_gui](#open-factoriopedia-gui) | Open the Factoriopedia GUI and select a given entry, if any valid ID is given. |
| [open_technology_gui](#open-technology-gui) | Open the technology GUI and select a given technology. |
| [remove_item](#remove-item) | Remove items from this entity. |
| [set_driving](#set-driving) | Sets if this character or player is driving. Returns if the player or character is still driving. |
| [set_gui_arrow](#set-gui-arrow) | Create an arrow which points at this entity. This is used in the tutorial. For examples, see `control.lua` in the campaign missions. |
| [teleport](#teleport) | Teleport the entity to a given position, possibly on another surface. |
| [update_selected_entity](#update-selected-entity) | Select an entity, as if by hovering the mouse above it. |

### begin_crafting

`begin_crafting({count, recipe, silent})`

Begins crafting the given count of the given recipe.

#### Parameters

##### count

**Type:** [uint32](../concepts/uint32.md)

The count to craft.

##### recipe

**Type:** [RecipeID](../concepts/RecipeID.md)

The recipe to craft.

##### silent

**Type:** [boolean](../concepts/boolean.md) · _optional_

If false and the recipe can't be crafted the requested number of times printing the failure is skipped.

#### Return values

- [uint32](../concepts/uint32.md) — The count that was actually started crafting.

#### Raises

- `on_player_main_inventory_changed` — Raised if crafting was able to be started.
- `on_pre_player_crafted_item` — Raised if crafting was able to be started.

### can_insert

`can_insert(items)`

Can at least some items be inserted?

#### Parameters

##### items

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

Items that would be inserted.

#### Return values

- [boolean](../concepts/boolean.md) — `true` if at least a part of the given items could be inserted into this inventory.

### can_place_entity

`can_place_entity({direction, name, position})`

Checks if this character or player can build the given entity at the given location on the surface the character or player is on.

#### Parameters

##### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

Direction the entity would be facing. Defaults to `north`.

##### name

**Type:** [EntityID](../concepts/EntityID.md)

Name of the entity that would be built.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where the entity would be placed.

#### Return values

- [boolean](../concepts/boolean.md)

### can_reach_entity

`can_reach_entity(entity)`

Can a given entity be opened or accessed?

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

#### Return values

- [boolean](../concepts/boolean.md)

### cancel_crafting

`cancel_crafting({count, index})`

Cancels the given amount of crafts at the given crafting queue position. If this causes any later crafts that depend on the cancelled one to have insufficient ingredients, those crafts will also be cancelled.

#### Parameters

##### count

**Type:** [uint32](../concepts/uint32.md)

The count to cancel crafting.

##### index

**Type:** [uint32](../concepts/uint32.md)

The crafting queue index.

#### Raises

- `on_player_cancelled_crafting` — Raised if crafting was able to be cancelled.
- `on_player_main_inventory_changed` — Raised if crafting was able to be cancelled.

### clear_gui_arrow

`clear_gui_arrow()`

Removes the arrow created by `set_gui_arrow`.

### clear_items_inside

`clear_items_inside()`

Remove all items from this entity.

### clear_selected_entity

`clear_selected_entity()`

Unselect any selected entity.

#### Raises

- `on_selected_entity_changed` — Raised if there is a currently selected entity.

### close_factoriopedia_gui

`close_factoriopedia_gui()`

Closes the Factoriopedia GUI if it's open.

### disable_flashlight

`disable_flashlight()`

Disable the flashlight.

Applied per controller. Only supported by [defines.controllers.character](../defines/defines.md) and [defines.controllers.remote](../defines/defines.md).

### enable_flashlight

`enable_flashlight()`

Enable the flashlight.

Applied per controller. Only supported by [defines.controllers.character](../defines/defines.md) and [defines.controllers.remote](../defines/defines.md).

### get_craftable_count

`get_craftable_count(recipe)`

Gets the count of the given recipe that can be crafted.

#### Parameters

##### recipe

**Type:** [RecipeID](../concepts/RecipeID.md)

The recipe.

#### Return values

- [uint32](../concepts/uint32.md) — The count that can be crafted.

### get_inventory

`get_inventory(inventory)`

Get an inventory belonging to this entity. This can be either the "main" inventory or some auxiliary one, like the module slots or logistic trash slots.

A given [defines.inventory](../defines/defines.md) is only meaningful for the corresponding LuaObject type. EG: get_inventory(defines.inventory.character_main) is only meaningful if 'this' is a player character. You may get a value back but if the type of 'this' isn't the type referred to by the [defines.inventory](../defines/defines.md) it's almost guaranteed to not be the inventory asked for.

#### Parameters

##### inventory

**Type:** [defines.inventory](../defines/defines.md)

#### Return values

- [LuaInventory](../classes/LuaInventory.md) _(optional)_ — The inventory or `nil` if none with the given index was found.

### get_inventory_name

`get_inventory_name(inventory)`

Get name of inventory. Names match keys of [defines.inventory](../defines/defines.md).

#### Parameters

##### inventory

**Type:** [defines.inventory](../defines/defines.md)

#### Return values

- [string](../concepts/string.md) _(optional)_

### get_item_count

`get_item_count(item)`

Get the number of all or some items in this entity.

#### Parameters

##### item

**Type:** [ItemFilter](../concepts/ItemFilter.md) · _optional_

The item to count. If not specified, count all items.

#### Return values

- [uint32](../concepts/uint32.md)

### get_main_inventory

`get_main_inventory()`

Gets the main inventory for this character or player if this is a character or player.

#### Return values

- [LuaInventory](../classes/LuaInventory.md) _(optional)_ — The inventory or `nil` if this entity is not a character or player.

### get_max_inventory_index

`get_max_inventory_index()`

The highest index of all inventories this entity can use. Allows iteration over all of them if desired.

#### Return values

- [defines.inventory](../defines/defines.md)

**Example:**

```
for k = 1, entity.get_max_inventory_index() do [...] end
```

### get_requester_point

`get_requester_point()`

Gets the requester logistic point for this entity if it has one.

#### Return values

- [LuaLogisticPoint](../classes/LuaLogisticPoint.md) _(optional)_

### has_items_inside

`has_items_inside()`

Does this entity have any item inside it?

#### Return values

- [boolean](../concepts/boolean.md)

### insert

`insert(items)`

Insert items into this entity. This works the same way as inserters or shift-clicking: the "best" inventory is chosen automatically.

#### Parameters

##### items

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

The items to insert.

#### Return values

- [uint32](../concepts/uint32.md) — The number of items that were actually inserted.

### is_cursor_blueprint

`is_cursor_blueprint()`

Returns whether the player is holding a blueprint. This takes both blueprint items as well as blueprint records from the blueprint library into account.

Note that both this method refers to the currently selected blueprint, which means that a blueprint book with a selected blueprint will return the information as well.

#### Return values

- [boolean](../concepts/boolean.md)

### is_cursor_empty

`is_cursor_empty()`

Returns whether the player is holding something in the cursor. Takes into account items from the blueprint library, as well as items and ghost cursor.

#### Return values

- [boolean](../concepts/boolean.md)

### is_flashlight_enabled

`is_flashlight_enabled()`

Is the flashlight enabled for the current controller. Only supported by [defines.controllers.character](../defines/defines.md) and [defines.controllers.remote](../defines/defines.md).

#### Return values

- [boolean](../concepts/boolean.md)

### is_player

`is_player()`

When `true` control adapter is a LuaPlayer object, `false` for entities including characters with players.

#### Return values

- [boolean](../concepts/boolean.md)

### mine_entity

`mine_entity(entity, force)`

Mines the given entity as if this player (or character) mined it.

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity to mine

##### force

**Type:** [boolean](../concepts/boolean.md) · _optional_

Forces mining the entity even if the items can't fit in the player.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the mining succeeded.

#### Raises

- `on_player_mined_entity` — Raised if mining is successful.
- `on_player_mined_item` — Raised if mining is successful.
- `on_pre_player_mined_item` — Raised if mining is possible.

### mine_tile

`mine_tile(tile)`

Mines the given tile as if this player (or character) mined it.

#### Parameters

##### tile

**Type:** [LuaTile](../classes/LuaTile.md)

The tile to mine.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the mining succeeded.

#### Raises

- `on_player_mined_item` — Raised if mining is successful.
- `on_player_mined_tile` — Raised if mining is successful.

### open_factoriopedia_gui

`open_factoriopedia_gui(prototype)`

Open the Factoriopedia GUI and select a given entry, if any valid ID is given.

#### Parameters

##### prototype

**Type:** [FactoriopediaID](../concepts/FactoriopediaID.md) · _optional_

### open_technology_gui

`open_technology_gui(technology)`

Open the technology GUI and select a given technology.

#### Parameters

##### technology

**Type:** [TechnologyID](../concepts/TechnologyID.md) · _optional_

The technology to select after opening the GUI.

### remove_item

`remove_item(items)`

Remove items from this entity.

#### Parameters

##### items

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

The items to remove.

#### Return values

- [uint32](../concepts/uint32.md) — The number of items that were actually removed.

### set_driving

`set_driving(driving, force)`

Sets if this character or player is driving. Returns if the player or character is still driving.

#### Parameters

##### driving

**Type:** [boolean](../concepts/boolean.md)

True for enter-vehicle, false for leave.

##### force

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, the player will be ejected and left at the position of the car if normal "leave" is not possible.

### set_gui_arrow

`set_gui_arrow({margin, type})`

Create an arrow which points at this entity. This is used in the tutorial. For examples, see `control.lua` in the campaign missions.

#### Parameters

##### margin

**Type:** [uint32](../concepts/uint32.md)

##### type

**Type:** [GuiArrowType](../concepts/GuiArrowType.md)

Where to point to. This field determines what other fields are mandatory.

#### Variant parameter groups

Other attributes may be specified depending on `type`:

##### crafting_queue

###### crafting_queueindex

**Type:** [uint32](../concepts/uint32.md)

Index in the crafting queue to point to.

##### entity

###### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

##### item_stack

###### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

Which inventory the stack is in.

###### item_stack_index

**Type:** [uint32](../concepts/uint32.md)

Which stack to point to.

###### source

**Type:** `"player"` ∣ `"target"` ∣ `"player-quickbar"`

##### position

###### position

**Type:** [MapPosition](../concepts/MapPosition.md)

### teleport

`teleport(build_check_type, position, raise_teleported, snap_to_grid, surface)`

Teleport the entity to a given position, possibly on another surface.

Some entities may not be teleported. For instance, transport belts won't allow teleportation and this method will always return `false` when used on any such entity.

You can also pass 1 or 2 numbers as the parameters and they will be used as relative teleport coordinates `'teleport(0, 1)'` to move the entity 1 tile positive y. `'teleport(4)'` to move the entity 4 tiles to the positive x.

`script_raised_teleported` will not be raised if teleporting a player with no character.

#### Parameters

##### build_check_type

**Type:** [defines.build_check_type](../defines/defines.md) · _optional_

The build check type done when teleporting to the destination. Defaults to `script`. This is ignored when teleporting between surfaces.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where to teleport to.

##### raise_teleported

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, [defines.events.script_raised_teleported](../defines/defines.md) will be fired on successful entity teleportation.

##### snap_to_grid

**Type:** [boolean](../concepts/boolean.md) · _optional_

If false the exact position given is used to instead of snapping to the normal entity grid. This only applies if the entity normally snaps to the grid.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Surface to teleport to. If not given, will teleport to the entity's current surface. Only players, cars, and spidertrons can be teleported cross-surface.

#### Return values

- [boolean](../concepts/boolean.md) — `true` if the entity was successfully teleported.

#### Raises

- `on_player_changed_position` — Raised if the teleported entity is a player character.
- `script_raised_teleported` — Raised if the `raise_teleported` flag was set and the entity was successfully teleported.

### update_selected_entity

`update_selected_entity(position)`

Select an entity, as if by hovering the mouse above it.

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Position of the entity to select.

#### Raises

- `on_selected_entity_changed` — Raised if there is an entity at the given position to select.
