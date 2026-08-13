# LuaRecord

_class_

A reference to a record in the blueprint library. Records in the "my blueprints" shelf are read-only, but records in the "game blueprints" shelf are read/write.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [blueprint_absolute_snapping](#blueprint-absolute-snapping) | [boolean](../concepts/boolean.md) |  |
| [blueprint_description](#blueprint-description) | [string](../concepts/string.md) |  |
| [blueprint_position_relative_to_grid](#blueprint-position-relative-to-grid) | [TilePosition](../concepts/TilePosition.md) | yes |
| [blueprint_snap_to_grid](#blueprint-snap-to-grid) | [TilePosition](../concepts/TilePosition.md) | yes |
| [contents](#contents) | dictionary[[ItemStackIndex](../concepts/ItemStackIndex.md) → [LuaRecord](../classes/LuaRecord.md)] |  |
| [contents_size](#contents-size) | [ItemStackIndex](../concepts/ItemStackIndex.md) |  |
| [cost_to_build](#cost-to-build) | array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] |  |
| [default_icons](#default-icons) | array[[BlueprintSignalIcon](../concepts/BlueprintSignalIcon.md)] |  |
| [entity_filter_count](#entity-filter-count) | [uint32](../concepts/uint32.md) |  |
| [entity_filter_mode](#entity-filter-mode) | [defines.deconstruction_item.entity_filter_mode](../defines/defines.md) |  |
| [entity_filters](#entity-filters) | array[[ItemFilter](../concepts/ItemFilter.md)] |  |
| [is_preview](#is-preview) | [boolean](../concepts/boolean.md) |  |
| [label](#label) | [string](../concepts/string.md) | yes |
| [mapper_count](#mapper-count) | [uint32](../concepts/uint32.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [planner_description](#planner-description) | [string](../concepts/string.md) |  |
| [preview_icons](#preview-icons) | array[[BlueprintSignalIcon](../concepts/BlueprintSignalIcon.md)] |  |
| [tile_filter_count](#tile-filter-count) | [uint32](../concepts/uint32.md) |  |
| [tile_filter_mode](#tile-filter-mode) | [defines.deconstruction_item.tile_filter_mode](../defines/defines.md) |  |
| [tile_filters](#tile-filters) | array[[TileID](../concepts/TileID.md)] |  |
| [tile_selection_mode](#tile-selection-mode) | [defines.deconstruction_item.tile_selection_mode](../defines/defines.md) |  |
| [trees_and_rocks_only](#trees-and-rocks-only) | [boolean](../concepts/boolean.md) |  |
| [type](#type) | `"blueprint"` ∣ `"blueprint-book"` ∣ `"deconstruction-planner"` ∣ `"upgrade-planner"` |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [valid_for_write](#valid-for-write) | [boolean](../concepts/boolean.md) |  |

### blueprint_absolute_snapping

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If absolute snapping is enabled on this blueprint.

### blueprint_description

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The description for this blueprint or blueprint book.

### blueprint_position_relative_to_grid

**Read:** [TilePosition](../concepts/TilePosition.md) · **Write:** [TilePosition](../concepts/TilePosition.md) · _optional_

The offset from the absolute grid. `nil` if absolute snapping is not enabled.

### blueprint_snap_to_grid

**Read:** [TilePosition](../concepts/TilePosition.md) · **Write:** [TilePosition](../concepts/TilePosition.md) · _optional_

The snapping grid size in this blueprint. `nil` if snapping is not enabled.

### contents

**Read:** dictionary[[ItemStackIndex](../concepts/ItemStackIndex.md) → [LuaRecord](../classes/LuaRecord.md)] · _read-only_

The contents of this BlueprintBookRecord. This is sparse array - it may have gaps, so using `#` will not be reliable. Use [LuaRecord::contents_size](../classes/LuaRecord.md#contents-size) or `pairs()` to iterate this table.

### contents_size

**Read:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _read-only_

The highest populated index in the contents of this BlueprintBookRecord.

### cost_to_build

**Read:** array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] · _read-only_

List of raw materials required to build this blueprint.

### default_icons

**Read:** array[[BlueprintSignalIcon](../concepts/BlueprintSignalIcon.md)] · _read-only_

The default icons for a blueprint blueprint.

### entity_filter_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The number of entity filters this deconstruction planner has.

### entity_filter_mode

**Read:** [defines.deconstruction_item.entity_filter_mode](../defines/defines.md) · **Write:** [defines.deconstruction_item.entity_filter_mode](../defines/defines.md)

The blacklist/whitelist entity filter mode for this deconstruction planner.

### entity_filters

**Read:** array[[ItemFilter](../concepts/ItemFilter.md)] · **Write:** array[[ItemFilter](../concepts/ItemFilter.md)]

The entity filters for this deconstruction planner. The attribute is a sparse array with the keys representing the index of the filter. All prototypes in this array must not have the `"not-deconstructable"` flag set and are either a `cliff` or marked as `minable`.

### is_preview

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Checks if this record is in a preview state.

### label

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md) · _optional_

The current label for this record, if any.

### mapper_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The current count of mappers in the upgrade item.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### planner_description

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The description for this deconstruction planner or upgrade planner.

### preview_icons

**Read:** array[[BlueprintSignalIcon](../concepts/BlueprintSignalIcon.md)] · **Write:** array[[BlueprintSignalIcon](../concepts/BlueprintSignalIcon.md)]

The preview icons for this record.

### tile_filter_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The number of tile filters this deconstruction planner has.

### tile_filter_mode

**Read:** [defines.deconstruction_item.tile_filter_mode](../defines/defines.md) · **Write:** [defines.deconstruction_item.tile_filter_mode](../defines/defines.md)

The blacklist/whitelist tile filter mode for this deconstruction planner.

### tile_filters

**Read:** array[[TileID](../concepts/TileID.md)] · **Write:** array[[TileID](../concepts/TileID.md)]

The tile filters for this deconstruction planner. The attribute is a sparse array with the keys representing the index of the filter. Reading filters always returns an array of strings which are the tile prototype names.

### tile_selection_mode

**Read:** [defines.deconstruction_item.tile_selection_mode](../defines/defines.md) · **Write:** [defines.deconstruction_item.tile_selection_mode](../defines/defines.md)

The tile selection mode for this deconstruction planner.

### trees_and_rocks_only

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this deconstruction planner, is set to allow trees and rocks only.

### type

**Read:** `"blueprint"` ∣ `"blueprint-book"` ∣ `"deconstruction-planner"` ∣ `"upgrade-planner"` · _read-only_

The type of this blueprint record.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### valid_for_write

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this record valid for writing? A record is invalid for write if it is a BlueprintRecord preview or if it is in the "My blueprints" shelf.

## Methods

| Method | Summary |
| --- | --- |
| [build_blueprint](#build-blueprint) | Build this blueprint at the given location. |
| [cancel_deconstruct_area](#cancel-deconstruct-area) | Cancel deconstruct the given area with this deconstruction planner. |
| [clear_blueprint](#clear-blueprint) | Clears this blueprint. |
| [clear_deconstruction_data](#clear-deconstruction-data) | Clears all settings/filters on this deconstruction planner, resetting it to default values. |
| [clear_upgrade_data](#clear-upgrade-data) | Clears all settings/filters on this upgrade planner, resetting it to default values. |
| [create_blueprint](#create-blueprint) | Sets up this blueprint using the found blueprintable entities/tiles on the surface. |
| [deconstruct_area](#deconstruct-area) | Deconstruct the given area with this deconstruction planner. |
| [export_record](#export-record) | Exports this record to a string. |
| [get_active_index](#get-active-index) | The active index of this BlueprintBookRecord. For records in "my blueprints", the result will be the same regardless of the player, but records in "game blueprints" may have different active indices per player. |
| [get_blueprint_entities](#get-blueprint-entities) | The entities in this blueprint. |
| [get_blueprint_entity_count](#get-blueprint-entity-count) | Gets the number of entities in this blueprint blueprint. |
| [get_blueprint_entity_tag](#get-blueprint-entity-tag) | Gets the given tag on the given blueprint entity index in this blueprint. |
| [get_blueprint_entity_tags](#get-blueprint-entity-tags) | Gets the tags for the given blueprint entity index in this blueprint. |
| [get_blueprint_tiles](#get-blueprint-tiles) | A list of the tiles in this blueprint. |
| [get_entity_filter](#get-entity-filter) | Gets the entity filter at the given index for this deconstruction planner. |
| [get_mapper](#get-mapper) | Gets the filter at the given index for this upgrade item. Note that sources (`"from"` type) that are undefined will read as `{type = "item"}`, while destinations (`"to"` type) that are undefined will read as `nil`. |
| [get_selected_record](#get-selected-record) | Gets the currently selected record of the book for the given player. |
| [get_tile_filter](#get-tile-filter) | Gets the tile filter at the given index for this deconstruction planner. |
| [is_blueprint_setup](#is-blueprint-setup) | Is this blueprint setup? I.e. is it a non-empty blueprint? |
| [set_blueprint_entities](#set-blueprint-entities) | Set new entities to be a part of this blueprint. |
| [set_blueprint_entity_tag](#set-blueprint-entity-tag) | Sets the given tag on the given blueprint entity index in this blueprint. |
| [set_blueprint_entity_tags](#set-blueprint-entity-tags) | Sets the tags on the given blueprint entity index in this blueprint. |
| [set_blueprint_tiles](#set-blueprint-tiles) | Set specific tiles in this blueprint. |
| [set_entity_filter](#set-entity-filter) | Sets the entity filter at the given index for this deconstruction planner. |
| [set_mapper](#set-mapper) | Sets the module filter at the given index for this upgrade item. |
| [set_tile_filter](#set-tile-filter) | Sets the tile filter at the given index for this deconstruction planner. |

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

Cancel deconstruct the given area with this deconstruction planner.

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

Clears this blueprint.

### clear_deconstruction_data

`clear_deconstruction_data()`

Clears all settings/filters on this deconstruction planner, resetting it to default values.

### clear_upgrade_data

`clear_upgrade_data()`

Clears all settings/filters on this upgrade planner, resetting it to default values.

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

Deconstruct the given area with this deconstruction planner.

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

### export_record

`export_record()`

Exports this record to a string.

#### Return values

- [string](../concepts/string.md)

### get_active_index

`get_active_index(player)`

The active index of this BlueprintBookRecord. For records in "my blueprints", the result will be the same regardless of the player, but records in "game blueprints" may have different active indices per player.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

#### Return values

- [uint32](../concepts/uint32.md)

### get_blueprint_entities

`get_blueprint_entities()`

The entities in this blueprint.

#### Return values

- array[[BlueprintEntity](../concepts/BlueprintEntity.md)] _(optional)_

### get_blueprint_entity_count

`get_blueprint_entity_count()`

Gets the number of entities in this blueprint blueprint.

#### Return values

- [uint32](../concepts/uint32.md)

### get_blueprint_entity_tag

`get_blueprint_entity_tag(index, tag)`

Gets the given tag on the given blueprint entity index in this blueprint.

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

Gets the tags for the given blueprint entity index in this blueprint.

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

Gets the entity filter at the given index for this deconstruction planner.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [ItemFilter](../concepts/ItemFilter.md) _(optional)_

### get_mapper

`get_mapper(index, type)`

Gets the filter at the given index for this upgrade item. Note that sources (`"from"` type) that are undefined will read as `{type = "item"}`, while destinations (`"to"` type) that are undefined will read as `nil`.

In contrast to [LuaRecord::set_mapper](../classes/LuaRecord.md#set-mapper), indices past the upgrade item's current size are considered to be out of bounds.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index of the mapper to read.

##### type

**Type:** `"from"` ∣ `"to"`

#### Return values

- [UpgradeMapperSource](../concepts/UpgradeMapperSource.md) ∣ [UpgradeMapperDestination](../concepts/UpgradeMapperDestination.md)

### get_selected_record

`get_selected_record(player)`

Gets the currently selected record of the book for the given player.

Note: this will return a record even if the book is in a preview state.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

#### Return values

- [LuaRecord](../classes/LuaRecord.md) _(optional)_

### get_tile_filter

`get_tile_filter(index)`

Gets the tile filter at the given index for this deconstruction planner.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [string](../concepts/string.md) _(optional)_

### is_blueprint_setup

`is_blueprint_setup()`

Is this blueprint setup? I.e. is it a non-empty blueprint?

#### Return values

- [boolean](../concepts/boolean.md)

### set_blueprint_entities

`set_blueprint_entities(entities)`

Set new entities to be a part of this blueprint.

#### Parameters

##### entities

**Type:** array[[BlueprintEntity](../concepts/BlueprintEntity.md)]

The new blueprint entities.

### set_blueprint_entity_tag

`set_blueprint_entity_tag(index, tag, value)`

Sets the given tag on the given blueprint entity index in this blueprint.

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

Sets the tags on the given blueprint entity index in this blueprint.

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

Sets the entity filter at the given index for this deconstruction planner.

#### Parameters

##### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md) ∣ [nil](../concepts/nil.md)

Writing `nil` removes the filter.

##### index

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the new filter was successfully set (ie. was valid).

### set_mapper

`set_mapper(index, mapper, type)`

Sets the module filter at the given index for this upgrade item.

In contrast to [LuaRecord::get_mapper](../classes/LuaRecord.md#get-mapper), indices past the upgrade item's current size are valid and expand the list of mappings accordingly, if within reasonable bounds.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index of the mapper to set.

##### mapper

**Type:** [UpgradeMapperSource](../concepts/UpgradeMapperSource.md) ∣ [UpgradeMapperDestination](../concepts/UpgradeMapperDestination.md) ∣ [nil](../concepts/nil.md)

The mapper to set. Set `nil` to clear the mapper.

##### type

**Type:** `"from"` ∣ `"to"`

### set_tile_filter

`set_tile_filter(filter, index)`

Sets the tile filter at the given index for this deconstruction planner.

#### Parameters

##### filter

**Type:** [string](../concepts/string.md) ∣ [LuaTilePrototype](../classes/LuaTilePrototype.md) ∣ [LuaTile](../classes/LuaTile.md)

Setting to nil erases the filter.

##### index

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the new filter was successfully set (ie. was valid).
