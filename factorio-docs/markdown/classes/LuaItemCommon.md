# LuaItemCommon

_class_ · **abstract**

Common methods related to usage of item with data. It is useful when LuaItemStack contains item with data or in general with LuaItem as it can only point at an item with data.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [active_index](#active-index) | [uint32](../concepts/uint32.md) | yes |
| [allow_manual_label_change](#allow-manual-label-change) | [boolean](../concepts/boolean.md) |  |
| [ammo](#ammo) | [uint32](../concepts/uint32.md) |  |
| [blueprint_absolute_snapping](#blueprint-absolute-snapping) | [boolean](../concepts/boolean.md) |  |
| [blueprint_description](#blueprint-description) | [string](../concepts/string.md) |  |
| [blueprint_position_relative_to_grid](#blueprint-position-relative-to-grid) | [TilePosition](../concepts/TilePosition.md) | yes |
| [blueprint_snap_to_grid](#blueprint-snap-to-grid) | [TilePosition](../concepts/TilePosition.md) | yes |
| [cost_to_build](#cost-to-build) | array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] |  |
| [custom_description](#custom-description) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [default_icons](#default-icons) | array[[BlueprintSignalIcon](../concepts/BlueprintSignalIcon.md)] |  |
| [durability](#durability) | [double](../concepts/double.md) |  |
| [entity_auto_target_with_gunner](#entity-auto-target-with-gunner) | [boolean](../concepts/boolean.md) |  |
| [entity_auto_target_without_gunner](#entity-auto-target-without-gunner) | [boolean](../concepts/boolean.md) |  |
| [entity_color](#entity-color) | [Color](../concepts/Color.md) | yes |
| [entity_driver_is_gunner](#entity-driver-is-gunner) | [boolean](../concepts/boolean.md) |  |
| [entity_enable_logistics_while_moving](#entity-enable-logistics-while-moving) | [boolean](../concepts/boolean.md) |  |
| [entity_filter_count](#entity-filter-count) | [uint32](../concepts/uint32.md) |  |
| [entity_filter_mode](#entity-filter-mode) | [defines.deconstruction_item.entity_filter_mode](../defines/defines.md) |  |
| [entity_filters](#entity-filters) | array[[ItemFilter](../concepts/ItemFilter.md)] |  |
| [entity_label](#entity-label) | [string](../concepts/string.md) | yes |
| [entity_logistic_sections](#entity-logistic-sections) | [LogisticSections](../concepts/LogisticSections.md) |  |
| [entity_logistics_enabled](#entity-logistics-enabled) | [boolean](../concepts/boolean.md) |  |
| [entity_request_from_buffers](#entity-request-from-buffers) | [boolean](../concepts/boolean.md) |  |
| [grid](#grid) | [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md) | yes |
| [is_ammo](#is-ammo) | [boolean](../concepts/boolean.md) |  |
| [is_armor](#is-armor) | [boolean](../concepts/boolean.md) |  |
| [is_blueprint](#is-blueprint) | [boolean](../concepts/boolean.md) |  |
| [is_blueprint_book](#is-blueprint-book) | [boolean](../concepts/boolean.md) |  |
| [is_deconstruction_item](#is-deconstruction-item) | [boolean](../concepts/boolean.md) |  |
| [is_item_with_entity_data](#is-item-with-entity-data) | [boolean](../concepts/boolean.md) |  |
| [is_item_with_inventory](#is-item-with-inventory) | [boolean](../concepts/boolean.md) |  |
| [is_item_with_label](#is-item-with-label) | [boolean](../concepts/boolean.md) |  |
| [is_item_with_tags](#is-item-with-tags) | [boolean](../concepts/boolean.md) |  |
| [is_repair_tool](#is-repair-tool) | [boolean](../concepts/boolean.md) |  |
| [is_selection_tool](#is-selection-tool) | [boolean](../concepts/boolean.md) |  |
| [is_tool](#is-tool) | [boolean](../concepts/boolean.md) |  |
| [is_upgrade_item](#is-upgrade-item) | [boolean](../concepts/boolean.md) |  |
| [item_number](#item-number) | [uint64](../concepts/uint64.md) | yes |
| [label](#label) | [string](../concepts/string.md) | yes |
| [label_color](#label-color) | [Color](../concepts/Color.md) | yes |
| [mapper_count](#mapper-count) | [uint32](../concepts/uint32.md) |  |
| [owner_location](#owner-location) | [ItemLocationData](../concepts/ItemLocationData.md) |  |
| [planner_description](#planner-description) | [string](../concepts/string.md) |  |
| [preview_icons](#preview-icons) | array[[BlueprintSignalIcon](../concepts/BlueprintSignalIcon.md)] | yes |
| [tags](#tags) | [Tags](../concepts/Tags.md) |  |
| [tile_filter_count](#tile-filter-count) | [uint32](../concepts/uint32.md) |  |
| [tile_filter_mode](#tile-filter-mode) | [defines.deconstruction_item.tile_filter_mode](../defines/defines.md) |  |
| [tile_filters](#tile-filters) | array[[TileID](../concepts/TileID.md)] |  |
| [tile_selection_mode](#tile-selection-mode) | [defines.deconstruction_item.tile_selection_mode](../defines/defines.md) |  |
| [trees_and_rocks_only](#trees-and-rocks-only) | [boolean](../concepts/boolean.md) |  |

### active_index

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md) · _optional_

The active blueprint index for this blueprint book. `nil` if this blueprint book is empty.

### allow_manual_label_change

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether the label for this item can be manually changed. When false the label can only be changed through the API.

### ammo

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

Number of bullets left in the magazine.

### blueprint_absolute_snapping

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If absolute snapping is enabled on this blueprint item.

### blueprint_description

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The description for this blueprint or blueprint book

### blueprint_position_relative_to_grid

**Read:** [TilePosition](../concepts/TilePosition.md) · **Write:** [TilePosition](../concepts/TilePosition.md) · _optional_

The offset from the absolute grid. `nil` if absolute snapping is not enabled.

### blueprint_snap_to_grid

**Read:** [TilePosition](../concepts/TilePosition.md) · **Write:** [TilePosition](../concepts/TilePosition.md) · _optional_

The snapping grid size in this blueprint item. `nil` if snapping is not enabled.

### cost_to_build

**Read:** array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] · _read-only_

List of raw materials required to build this blueprint.

### custom_description

**Read:** [LocalisedString](../concepts/LocalisedString.md) · **Write:** [LocalisedString](../concepts/LocalisedString.md)

The custom description this item-with-tags. This is shown over the normal item description if this is set to a non-empty value.

### default_icons

**Read:** array[[BlueprintSignalIcon](../concepts/BlueprintSignalIcon.md)] · _read-only_

The default icons for a blueprint item.

### durability

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Durability of the contained item. Automatically capped at the item's maximum durability.

### entity_auto_target_with_gunner

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this is an item with entity data, get the stored auto target with gunner state.

### entity_auto_target_without_gunner

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this is an item with entity data, get the stored auto target without gunner state.

### entity_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md) · _optional_

If this is an item with entity data, get the stored entity color.

### entity_driver_is_gunner

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this is an item with entity data, get the stored driver is gunner state.

### entity_enable_logistics_while_moving

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this is an item with entity data, get the stored enable logistics while moving state.

### entity_filter_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The number of entity filters this deconstruction item has.

### entity_filter_mode

**Read:** [defines.deconstruction_item.entity_filter_mode](../defines/defines.md) · **Write:** [defines.deconstruction_item.entity_filter_mode](../defines/defines.md)

The blacklist/whitelist entity filter mode for this deconstruction item.

### entity_filters

**Read:** array[[ItemFilter](../concepts/ItemFilter.md)] · **Write:** array[[ItemFilter](../concepts/ItemFilter.md)]

The entity filters for this deconstruction item. The attribute is a sparse array with the keys representing the index of the filter. All prototypes in this array must not have the `"not-deconstructable"` flag set and are either a `cliff` or marked as `minable`.

### entity_label

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md) · _optional_

If this is an item with entity data, get the stored entity label.

### entity_logistic_sections

**Read:** [LogisticSections](../concepts/LogisticSections.md) · **Write:** [LogisticSections](../concepts/LogisticSections.md)

If this is an item with entity data, get the stored logistic filters.

### entity_logistics_enabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this is an item with entity data, get the stored vehicle logistics enabled state.

### entity_request_from_buffers

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this is an item with entity data, get the stored request from buffer state.

### grid

**Read:** [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md) · _read-only_ · _optional_

The equipment grid of this item, if any.

### is_ammo

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is an ammo item.

### is_armor

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is an armor item.

### is_blueprint

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is a blueprint item.

### is_blueprint_book

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is a blueprint book item.

### is_deconstruction_item

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is a deconstruction tool item.

### is_item_with_entity_data

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is an item with entity data item.

### is_item_with_inventory

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is an item with inventory item.

### is_item_with_label

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is an item with label item.

### is_item_with_tags

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is an item with tags item.

### is_repair_tool

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is a repair tool item.

### is_selection_tool

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is a selection tool item.

### is_tool

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is a tool item.

### is_upgrade_item

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this is a upgrade item.

### item_number

**Read:** [uint64](../concepts/uint64.md) · _read-only_ · _optional_

The unique identifier for this item, if any. Note that this ID stays the same no matter where the item is moved to.

### label

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md) · _optional_

The current label for this item, if any.

### label_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md) · _optional_

The current label color for this item, if any.

### mapper_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The current count of mappers in the upgrade item.

### owner_location

**Read:** [ItemLocationData](../concepts/ItemLocationData.md) · _read-only_

The location of this item if it can be found.

### planner_description

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The description for this deconstruction planner or upgrade planner

### preview_icons

**Read:** array[[BlueprintSignalIcon](../concepts/BlueprintSignalIcon.md)] · **Write:** array[[BlueprintSignalIcon](../concepts/BlueprintSignalIcon.md)] · _optional_

Icons of this blueprint item, blueprint book, deconstruction item or upgrade planner. An item that doesn't have icons returns `nil` on read and throws error on write.

### tags

**Read:** [Tags](../concepts/Tags.md) · **Write:** [Tags](../concepts/Tags.md)

### tile_filter_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The number of tile filters this deconstruction item has.

### tile_filter_mode

**Read:** [defines.deconstruction_item.tile_filter_mode](../defines/defines.md) · **Write:** [defines.deconstruction_item.tile_filter_mode](../defines/defines.md)

The blacklist/whitelist tile filter mode for this deconstruction item.

### tile_filters

**Read:** array[[TileID](../concepts/TileID.md)] · **Write:** array[[TileID](../concepts/TileID.md)]

The tile filters for this deconstruction item. The attribute is a sparse array with the keys representing the index of the filter. Reading filters always returns an array of strings which are the tile prototype names.

### tile_selection_mode

**Read:** [defines.deconstruction_item.tile_selection_mode](../defines/defines.md) · **Write:** [defines.deconstruction_item.tile_selection_mode](../defines/defines.md)

The tile selection mode for this deconstruction item.

### trees_and_rocks_only

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this deconstruction item is set to allow trees and rocks only.

## Methods

| Method | Summary |
| --- | --- |
| [build_blueprint](#build-blueprint) | Build this blueprint at the given location. |
| [cancel_deconstruct_area](#cancel-deconstruct-area) | Cancel deconstruct the given area with this deconstruction item. |
| [clear_blueprint](#clear-blueprint) | Clears this blueprint item. |
| [clear_deconstruction_item](#clear-deconstruction-item) | Clears all settings/filters on this deconstruction item resetting it to default values. |
| [clear_upgrade_item](#clear-upgrade-item) | Clears all settings/filters on this upgrade item resetting it to default values. |
| [create_blueprint](#create-blueprint) | Sets up this blueprint using the found blueprintable entities/tiles on the surface. |
| [deconstruct_area](#deconstruct-area) | Deconstruct the given area with this deconstruction item. |
| [get_blueprint_entities](#get-blueprint-entities) | The entities in this blueprint. |
| [get_blueprint_entity_count](#get-blueprint-entity-count) | Gets the number of entities in this blueprint item. |
| [get_blueprint_entity_tag](#get-blueprint-entity-tag) | Gets the given tag on the given blueprint entity index in this blueprint item. |
| [get_blueprint_entity_tags](#get-blueprint-entity-tags) | Gets the tags for the given blueprint entity index in this blueprint item. |
| [get_blueprint_tiles](#get-blueprint-tiles) | A list of the tiles in this blueprint. |
| [get_entity_filter](#get-entity-filter) | Gets the entity filter at the given index for this deconstruction item. |
| [get_inventory](#get-inventory) | Access the inner inventory of an item. |
| [get_mapper](#get-mapper) | Gets the filter at the given index for this upgrade item. Note that sources (`"from"` type) that are undefined will read as `{type = "item"}`, while destinations (`"to"` type) that are undefined will read as `nil`. |
| [get_tag](#get-tag) | Gets the tag with the given name or returns `nil` if it doesn't exist. |
| [get_tag_names](#get-tag-names) | Gets the names of all tags on this item. |
| [get_tile_filter](#get-tile-filter) | Gets the tile filter at the given index for this deconstruction item. |
| [is_blueprint_setup](#is-blueprint-setup) | Is this blueprint item setup? I.e. is it a non-empty blueprint? |
| [remove_tag](#remove-tag) | Removes a tag with the given name. |
| [set_blueprint_entities](#set-blueprint-entities) | Set new entities to be a part of this blueprint. |
| [set_blueprint_entity_tag](#set-blueprint-entity-tag) | Sets the given tag on the given blueprint entity index in this blueprint item. |
| [set_blueprint_entity_tags](#set-blueprint-entity-tags) | Sets the tags on the given blueprint entity index in this blueprint item. |
| [set_blueprint_tiles](#set-blueprint-tiles) | Set specific tiles in this blueprint. |
| [set_entity_filter](#set-entity-filter) | Sets the entity filter at the given index for this deconstruction item. |
| [set_mapper](#set-mapper) | Sets the module filter at the given index for this upgrade item. |
| [set_tag](#set-tag) | Sets the tag with the given name and value. |
| [set_tile_filter](#set-tile-filter) | Sets the tile filter at the given index for this deconstruction item. |

### build_blueprint

`build_blueprint({build_mode, by_player, direction, force, position, raise_built, skip_fog_of_war, surface})`

Build this blueprint at the given location.

Built entities can be come invalid between the building of the blueprint and the function returning if by_player or raise_built is used and one of those events invalidates the entity.

#### Parameters

##### build_mode

**Type:** [defines.build_mode](../defines/defines.md) · _optional_

If `normal`, blueprint will not be built if any one thing can't be built. If `forced`, anything that can be built is built and obstructing nature entities will be deconstructed. If `superforced`, all obstructions will be deconstructed and the blueprint will be built.

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to use if any. If provided [defines.events.on_built_entity](../defines/defines.md) will be fired for new entities and [defines.events.on_blueprint_settings_pasted](../defines/defines.md) will be fired for existing entities that are updated.

##### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

The direction to use when building

##### force

**Type:** [ForceID](../concepts/ForceID.md)

Force to use for the building

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position to build at

##### raise_built

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true; [defines.events.script_raised_built](../defines/defines.md) will be fired for new entities and [defines.events.on_blueprint_settings_pasted](../defines/defines.md) will be fired for existing entities that are updated. Note: this is ignored if by_player is provided.

##### skip_fog_of_war

**Type:** [boolean](../concepts/boolean.md) · _optional_

If chunks covered by fog-of-war are skipped.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

Surface to build on

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)] — Array of created ghosts

### cancel_deconstruct_area

`cancel_deconstruct_area({area, by_player, force, skip_fog_of_war, super_forced, surface})`

Cancel deconstruct the given area with this deconstruction item.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The area to deconstruct

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to use if any.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

Force to use for canceling deconstruction

##### skip_fog_of_war

**Type:** [boolean](../concepts/boolean.md) · _optional_

If chunks covered by fog-of-war are skipped. Defaults to `false`.

##### super_forced

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the cancel deconstruction is super-forced. Defaults to `false`.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

Surface to cancel deconstruct on

### clear_blueprint

`clear_blueprint()`

Clears this blueprint item.

### clear_deconstruction_item

`clear_deconstruction_item()`

Clears all settings/filters on this deconstruction item resetting it to default values.

### clear_upgrade_item

`clear_upgrade_item()`

Clears all settings/filters on this upgrade item resetting it to default values.

### create_blueprint

`create_blueprint({always_include_tiles, area, force, include_entities, include_fuel, include_modules, include_station_names, include_trains, surface})`

Sets up this blueprint using the found blueprintable entities/tiles on the surface.

#### Parameters

##### always_include_tiles

**Type:** [boolean](../concepts/boolean.md) · _optional_

When true, blueprintable tiles are always included in the blueprint. When false they're only included if no entities exist in the setup area. Defaults to false.

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The bounding box

##### force

**Type:** [ForceID](../concepts/ForceID.md)

Force to use for the creation

##### include_entities

**Type:** [boolean](../concepts/boolean.md) · _optional_

When true, entities are included in the blueprint. Defaults to true.

##### include_fuel

**Type:** [boolean](../concepts/boolean.md) · _optional_

When true, train fuel is included in the blueprint, Defaults to true.

##### include_modules

**Type:** [boolean](../concepts/boolean.md) · _optional_

When true, modules are included in the blueprint. Defaults to true.

##### include_station_names

**Type:** [boolean](../concepts/boolean.md) · _optional_

When true, station names are included in the blueprint. Defaults to false.

##### include_trains

**Type:** [boolean](../concepts/boolean.md) · _optional_

When true, trains are included in the blueprint. Defaults to false.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

Surface to create from

#### Return values

- dictionary[[uint32](../concepts/uint32.md) → [LuaEntity](../classes/LuaEntity.md)] — The blueprint entity index to source entity mapping.

### deconstruct_area

`deconstruct_area({area, by_player, force, skip_fog_of_war, super_forced, surface})`

Deconstruct the given area with this deconstruction item.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The area to deconstruct

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to use if any.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

Force to use for the deconstruction

##### skip_fog_of_war

**Type:** [boolean](../concepts/boolean.md) · _optional_

If chunks covered by fog-of-war are skipped. Defaults to `false`.

##### super_forced

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the deconstruction is super-forced. Defaults to `false`.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

Surface to deconstruct on

### get_blueprint_entities

`get_blueprint_entities()`

The entities in this blueprint.

#### Return values

- array[[BlueprintEntity](../concepts/BlueprintEntity.md)] _(optional)_

### get_blueprint_entity_count

`get_blueprint_entity_count()`

Gets the number of entities in this blueprint item.

#### Return values

- [uint32](../concepts/uint32.md)

### get_blueprint_entity_tag

`get_blueprint_entity_tag(index, tag)`

Gets the given tag on the given blueprint entity index in this blueprint item.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The entity index.

##### tag

**Type:** [string](../concepts/string.md)

The tag to get.

#### Return values

- [AnyBasic](../concepts/AnyBasic.md) _(optional)_

### get_blueprint_entity_tags

`get_blueprint_entity_tags(index)`

Gets the tags for the given blueprint entity index in this blueprint item.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [Tags](../concepts/Tags.md)

### get_blueprint_tiles

`get_blueprint_tiles()`

A list of the tiles in this blueprint.

#### Return values

- array[[Tile](../concepts/Tile.md)] _(optional)_

### get_entity_filter

`get_entity_filter(index)`

Gets the entity filter at the given index for this deconstruction item.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [ItemFilter](../concepts/ItemFilter.md) _(optional)_

### get_inventory

`get_inventory(inventory)`

Access the inner inventory of an item.

#### Parameters

##### inventory

**Type:** [defines.inventory](../defines/defines.md)

Index of the inventory to access, which can only be [defines.inventory.item_main](../defines/defines.md).

#### Return values

- [LuaInventory](../classes/LuaInventory.md) _(optional)_ — `nil` if there is no inventory with the given index.

### get_mapper

`get_mapper(index, type)`

Gets the filter at the given index for this upgrade item. Note that sources (`"from"` type) that are undefined will read as `{type = "item"}`, while destinations (`"to"` type) that are undefined will read as `nil`.

In contrast to [LuaItemCommon::set_mapper](../classes/LuaItemCommon.md#set-mapper), indices past the upgrade item's current size are considered to be out of bounds.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index of the mapper to read.

##### type

**Type:** `"from"` ∣ `"to"`

#### Return values

- [UpgradeMapperSource](../concepts/UpgradeMapperSource.md) ∣ [UpgradeMapperDestination](../concepts/UpgradeMapperDestination.md) _(optional)_

### get_tag

`get_tag(tag_name)`

Gets the tag with the given name or returns `nil` if it doesn't exist.

#### Parameters

##### tag_name

**Type:** [string](../concepts/string.md)

#### Return values

- [AnyBasic](../concepts/AnyBasic.md) _(optional)_

### get_tag_names

`get_tag_names()`

Gets the names of all tags on this item.

#### Return values

- array[[string](../concepts/string.md)]

### get_tile_filter

`get_tile_filter(index)`

Gets the tile filter at the given index for this deconstruction item.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [string](../concepts/string.md) _(optional)_

### is_blueprint_setup

`is_blueprint_setup()`

Is this blueprint item setup? I.e. is it a non-empty blueprint?

#### Return values

- [boolean](../concepts/boolean.md)

### remove_tag

`remove_tag(tag)`

Removes a tag with the given name.

#### Parameters

##### tag

**Type:** [string](../concepts/string.md)

#### Return values

- [boolean](../concepts/boolean.md) — If the tag existed and was removed.

### set_blueprint_entities

`set_blueprint_entities(entities)`

Set new entities to be a part of this blueprint.

#### Parameters

##### entities

**Type:** array[[BlueprintEntity](../concepts/BlueprintEntity.md)]

The new blueprint entities.

### set_blueprint_entity_tag

`set_blueprint_entity_tag(index, tag, value)`

Sets the given tag on the given blueprint entity index in this blueprint item.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The entity index.

##### tag

**Type:** [string](../concepts/string.md)

The tag to set.

##### value

**Type:** [AnyBasic](../concepts/AnyBasic.md)

The tag value to set or `nil` to clear the tag.

### set_blueprint_entity_tags

`set_blueprint_entity_tags(index, tags)`

Sets the tags on the given blueprint entity index in this blueprint item.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The entity index

##### tags

**Type:** [Tags](../concepts/Tags.md)

### set_blueprint_tiles

`set_blueprint_tiles(tiles)`

Set specific tiles in this blueprint.

#### Parameters

##### tiles

**Type:** array[[Tile](../concepts/Tile.md)]

Tiles to be a part of the blueprint.

### set_entity_filter

`set_entity_filter(filter, index)`

Sets the entity filter at the given index for this deconstruction item.

#### Parameters

##### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md) ∣ [nil](../concepts/nil.md)

Writing `nil` removes the filter.

##### index

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the new filter was successfully set (meaning it was valid).

### set_mapper

`set_mapper(index, mapper, type)`

Sets the module filter at the given index for this upgrade item.

In contrast to [LuaItemCommon::get_mapper](../classes/LuaItemCommon.md#get-mapper), indices past the upgrade item's current size are valid and expand the list of mappings accordingly, if within reasonable bounds.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index of the mapper to set.

##### mapper

**Type:** [UpgradeMapperSource](../concepts/UpgradeMapperSource.md) ∣ [UpgradeMapperDestination](../concepts/UpgradeMapperDestination.md) ∣ [nil](../concepts/nil.md)

The mapper to set. Set `nil` to clear the mapper.

##### type

**Type:** `"from"` ∣ `"to"`

### set_tag

`set_tag(tag, tag_name)`

Sets the tag with the given name and value.

#### Parameters

##### tag

**Type:** [AnyBasic](../concepts/AnyBasic.md)

##### tag_name

**Type:** [string](../concepts/string.md)

### set_tile_filter

`set_tile_filter(filter, index)`

Sets the tile filter at the given index for this deconstruction item.

#### Parameters

##### filter

**Type:** [string](../concepts/string.md) ∣ [LuaTilePrototype](../classes/LuaTilePrototype.md) ∣ [LuaTile](../classes/LuaTile.md) ∣ [nil](../concepts/nil.md)

Writing `nil` removes the filter.

##### index

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the new filter was successfully set (meaning it was valid).
