# LuaSurface

_class_

A "domain" of the world, such as a planet or space platform. Surfaces are uniquely identified by their name. Every game contains at least the surface "nauvis".

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [always_day](#always-day) | [boolean](../concepts/boolean.md) |  |
| [brightness_visual_weights](#brightness-visual-weights) | [ColorModifier](../concepts/ColorModifier.md) |  |
| [darkness](#darkness) | [float](../concepts/float.md) |  |
| [dawn](#dawn) | [double](../concepts/double.md) |  |
| [daytime](#daytime) | [double](../concepts/double.md) |  |
| [daytime_parameters](#daytime-parameters) | table{dawn, dusk, evening, morning} |  |
| [deletable](#deletable) | [boolean](../concepts/boolean.md) |  |
| [dusk](#dusk) | [double](../concepts/double.md) |  |
| [evening](#evening) | [double](../concepts/double.md) |  |
| [freeze_daytime](#freeze-daytime) | [boolean](../concepts/boolean.md) |  |
| [generate_with_lab_tiles](#generate-with-lab-tiles) | [boolean](../concepts/boolean.md) |  |
| [global_effect](#global-effect) | [Effect](../concepts/Effect.md) | yes |
| [global_electric_network](#global-electric-network) | [LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md) | yes |
| [global_electric_network_statistics](#global-electric-network-statistics) | [LuaFlowStatistics](../classes/LuaFlowStatistics.md) | yes |
| [has_global_electric_network](#has-global-electric-network) | [boolean](../concepts/boolean.md) |  |
| [ignore_surface_conditions](#ignore-surface-conditions) | [boolean](../concepts/boolean.md) |  |
| [index](#index) | [uint32](../concepts/uint32.md) |  |
| [localised_name](#localised-name) | [LocalisedString](../concepts/LocalisedString.md) | yes |
| [map_gen_settings](#map-gen-settings) | [MapGenSettings](../concepts/MapGenSettings.md) |  |
| [min_brightness](#min-brightness) | [double](../concepts/double.md) |  |
| [morning](#morning) | [double](../concepts/double.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [no_enemies_mode](#no-enemies-mode) | [boolean](../concepts/boolean.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [override_pollution_type](#override-pollution-type) | [Pollutant](../concepts/Pollutant.md) | yes |
| [peaceful_mode](#peaceful-mode) | [boolean](../concepts/boolean.md) |  |
| [planet](#planet) | [LuaPlanet](../classes/LuaPlanet.md) | yes |
| [platform](#platform) | [LuaSpacePlatform](../classes/LuaSpacePlatform.md) | yes |
| [pollutant_type](#pollutant-type) | [LuaAirbornePollutantPrototype](../classes/LuaAirbornePollutantPrototype.md) | yes |
| [pollution_statistics](#pollution-statistics) | [LuaFlowStatistics](../classes/LuaFlowStatistics.md) |  |
| [show_clouds](#show-clouds) | [boolean](../concepts/boolean.md) |  |
| [solar_power_multiplier](#solar-power-multiplier) | [double](../concepts/double.md) |  |
| [ticks_per_day](#ticks-per-day) | [uint32](../concepts/uint32.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [wind_orientation](#wind-orientation) | [RealOrientation](../concepts/RealOrientation.md) |  |
| [wind_orientation_change](#wind-orientation-change) | [double](../concepts/double.md) |  |
| [wind_speed](#wind-speed) | [double](../concepts/double.md) |  |

### always_day

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When set to true, the sun will always shine.

### brightness_visual_weights

**Read:** [ColorModifier](../concepts/ColorModifier.md) · **Write:** [ColorModifier](../concepts/ColorModifier.md)

Defines how surface daytime brightness influences each color channel of the current color lookup table (LUT).

The LUT is multiplied by `((1 - weight) + brightness * weight)` and result is clamped to range `[0, 1]`.

Default is `{0, 0, 0}`, which means no influence.

**Example:**

```
-- Makes night on the surface pitch black, LuaSurface::min_brightness is set to default value 0.15.
game.surfaces[1].brightness_visual_weights = { 1 / 0.85, 1 / 0.85, 1 / 0.85 }
```

### darkness

**Read:** [float](../concepts/float.md) · _read-only_

Amount of darkness at the current time, as a number in range `[0, 1]`.

### dawn

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The daytime when dawn starts.

### daytime

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Current time of day, as a number in range `[0, 1)`.

### daytime_parameters

**Read:** table{dawn, dusk, evening, morning} · **Write:** table{dawn, dusk, evening, morning}

Parameters of daytime. Equivalent as reading [dusk](../classes/LuaSurface.md#dusk), [evening](../classes/LuaSurface.md#evening), [morning](../classes/LuaSurface.md#morning) and [dawn](../classes/LuaSurface.md#dawn) at the same time.

In order for a write to take place, a new table needs to be written in one go: changing individual members of the returned table has no effect as those are value copies.

### deletable

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this surface can be deleted.

### dusk

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The daytime when dusk starts.

### evening

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The daytime when evening starts.

### freeze_daytime

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

True if daytime is currently frozen.

### generate_with_lab_tiles

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When set to true, new chunks will be generated with lab tiles, instead of using the surface's map generation settings.

### global_effect

**Read:** [Effect](../concepts/Effect.md) · **Write:** [Effect](../concepts/Effect.md) · _optional_

Surface-wide effects applied to entities with effect receivers. `nil` if this surface is not using surface-wide effect source.

### global_electric_network

**Read:** [LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md) · _read-only_ · _optional_

Global electric network for this surface.

### global_electric_network_statistics

**Read:** [LuaFlowStatistics](../classes/LuaFlowStatistics.md) · _read-only_ · _optional_

The global electric network statistics for this surface.

If this global network is disabled or this surface is removed, the flow statistics obtained from it will also become invalid. However if the surface index of a deleted surface is reused, the related flow statistics may become valid again.

### has_global_electric_network

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this surface currently has a global electric network.

### ignore_surface_conditions

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If surface condition checks should not be performed on this surface.

### index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

This surface's index in [LuaGameScript::surfaces](../classes/LuaGameScript.md#surfaces) (unique ID). It is assigned when a surface is created, and remains so until it is [deleted](../events/on_surface_deleted.md). Indexes of deleted surfaces can be reused.

### localised_name

**Read:** [LocalisedString](../concepts/LocalisedString.md) · **Write:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

Localised name of this surface. When set, will replace the internal surface name in places where a player sees surface name.

Value may be ignored if a surface has a SpacePlatform or Planet object attached to it, which take the precedence.

### map_gen_settings

**Read:** [MapGenSettings](../concepts/MapGenSettings.md) · **Write:** [MapGenSettings](../concepts/MapGenSettings.md)

The generation settings for this surface. These can be modified after surface generation, but note that this will not retroactively update the surface. To manually regenerate it, [LuaSurface::regenerate_entity](../classes/LuaSurface.md#regenerate-entity), [LuaSurface::regenerate_decorative](../classes/LuaSurface.md#regenerate-decorative), and [LuaSurface::delete_chunk](../classes/LuaSurface.md#delete-chunk) can be used.

### min_brightness

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The minimal brightness during the night. Defaults to `0.15`. This has an effect on both rendering and game mechanics such as biter spawns and solar power.

### morning

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The daytime when morning starts.

### name

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The name of this surface. Names are unique among surfaces.

The default surface can't be renamed.

**Raises:**

- `on_surface_renamed` — 

### no_enemies_mode

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Is no-enemies mode enabled on this surface?

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### override_pollution_type

**Read:** [Pollutant](../concepts/Pollutant.md) · **Write:** [Pollutant](../concepts/Pollutant.md) · _optional_

If set, this pollution type will be used over any other planet or platform values.

If set to an empty table, pollution is disabled. If set to `nil`, the override is 'unset'.

Reading will be `nil` if unset or a table with the current override (`nil` if overridden to disabled).

### peaceful_mode

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Is peaceful mode enabled on this surface?

### planet

**Read:** [LuaPlanet](../classes/LuaPlanet.md) · _read-only_ · _optional_

The planet associated with this surface, if there is one.

Use [LuaPlanet::associate_surface](../classes/LuaPlanet.md#associate-surface) to create a new association with a planet.

### platform

**Read:** [LuaSpacePlatform](../classes/LuaSpacePlatform.md) · _read-only_ · _optional_

### pollutant_type

**Read:** [LuaAirbornePollutantPrototype](../classes/LuaAirbornePollutantPrototype.md) · _read-only_ · _optional_

The type of pollutant enabled on the surface, or `nil` if no pollutant is enabled.

### pollution_statistics

**Read:** [LuaFlowStatistics](../classes/LuaFlowStatistics.md) · _read-only_

The pollution statistics for this surface.

### show_clouds

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If clouds are shown on this surface. If false, clouds are never shown. If true the player must also have clouds enabled in graphics settings for them to be shown.

By default, clouds are shown on all surfaces.

### solar_power_multiplier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The multiplier of solar power on this surface. Cannot be less than 0.

### ticks_per_day

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The number of ticks per day for this surface.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### wind_orientation

**Read:** [RealOrientation](../concepts/RealOrientation.md) · **Write:** [RealOrientation](../concepts/RealOrientation.md)

Current wind direction.

### wind_orientation_change

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Change in wind orientation per tick.

### wind_speed

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Current wind speed in tiles per tick.

## Methods

| Method | Summary |
| --- | --- |
| [add_script_area](#add-script-area) | Adds the given script area. |
| [add_script_position](#add-script-position) | Adds the given script position. |
| [build_checkerboard](#build-checkerboard) | Sets the given area to the checkerboard lab tiles. |
| [build_enemy_base](#build-enemy-base) | Send a group to build a new base. |
| [calculate_tile_properties](#calculate-tile-properties) | Calculate values for a list of tile properties at a list of positions. Requests for unrecognized properties will be ignored, so this can also be used to test whether those properties exist. |
| [can_fast_replace](#can-fast-replace) | If there exists an entity at the given location that can be fast-replaced with the given entity parameters. |
| [can_place_entity](#can-place-entity) | Check for collisions with terrain or other entities. |
| [cancel_deconstruct_area](#cancel-deconstruct-area) | Cancel a deconstruction order. |
| [cancel_upgrade_area](#cancel-upgrade-area) | Cancel a upgrade order. |
| [clear](#clear) | Clears this surface deleting all entities and chunks on it. |
| [clear_hidden_tiles](#clear-hidden-tiles) | Completely removes hidden and double hidden tiles data on this surface. |
| [clear_pollution](#clear-pollution) | Clears all pollution on this surface. |
| [clear_territory_for_chunks](#clear-territory-for-chunks) | Removes the chunk from the territory it is associated with (if any) and allows the map generator to potentially generate a new territory for the chunk in the future. To prevent the game from generating a new territory for the chunk, use LuaSurface::set_chunk_territory to set the chunk's territory to `nil`. |
| [clone_area](#clone-area) | Clones the given area. |
| [clone_brush](#clone-brush) | Clones the given area. |
| [clone_entities](#clone-entities) | Clones the given entities. |
| [count_entities_filtered](#count-entities-filtered) | Count entities of given type or name in a given area. Works just like LuaSurface::find_entities_filtered, except this only returns the count. As it doesn't construct all the wrapper objects, this is more efficient if one is only interested in the number of entities. |
| [count_tiles_filtered](#count-tiles-filtered) | Count tiles of a given name in a given area. Works just like LuaSurface::find_tiles_filtered, except this only returns the count. As it doesn't construct all the wrapper objects, this is more efficient if one is only interested in the number of tiles. |
| [create_decoratives](#create-decoratives) | Adds the given decoratives to the surface. |
| [create_entities_from_blueprint_string](#create-entities-from-blueprint-string) | This method only works when used in simulations. |
| [create_entity](#create-entity) | Create an entity on this surface. |
| [create_global_electric_network](#create-global-electric-network) | Creates a global electric network for this surface, if one doesn't exist already. |
| [create_particle](#create-particle) | Creates a particle at the given location |
| [create_segmented_unit](#create-segmented-unit) | Create a segmented unit on the surface. This differs from creating an entity with type `"segmented-unit"` in that this method can create the entity in non-generated chunks and with any arbitrary body shape and pre-assigned to a territory. |
| [create_territory](#create-territory) | Create a territory on the surface. |
| [create_trivial_smoke](#create-trivial-smoke) |  |
| [create_unit_group](#create-unit-group) | Create a new unit group at a given position. |
| [deconstruct_area](#deconstruct-area) | Place a deconstruction request. |
| [decorative_prototype_collides](#decorative-prototype-collides) | Whether the given decorative prototype collides at the given position and direction. |
| [delete_chunk](#delete-chunk) |  |
| [destroy_decoratives](#destroy-decoratives) | Removes all decoratives from the given area. If no area and no position are given, then the entire surface is searched. |
| [destroy_global_electric_network](#destroy-global-electric-network) | Destroys the global electric network for this surface, if it exists. |
| [edit_script_area](#edit-script-area) | Sets the given script area to the new values. |
| [edit_script_position](#edit-script-position) | Sets the given script position to the new values. |
| [entity_prototype_collides](#entity-prototype-collides) | Whether the given entity prototype collides at the given position and direction. |
| [execute_lightning](#execute-lightning) | Creates lightning. If other entities which can be lightning targets are nearby, the final position will be adjusted. |
| [find_closest_logistic_network_by_position](#find-closest-logistic-network-by-position) | Find the logistic network with a cell closest to a given position. |
| [find_decoratives_filtered](#find-decoratives-filtered) | Find decoratives of a given name in a given area. |
| [find_enemy_units](#find-enemy-units) | Find enemy units (entities with type "unit") of a given force within an area. |
| [find_entities](#find-entities) | Find entities in a given area. |
| [find_entities_filtered](#find-entities-filtered) | Find all entities of the given type or name in the given area. |
| [find_entity](#find-entity) | Find an entity of the given name at the given position. This checks both the exact position and the bounding box of the entity. |
| [find_logistic_network_by_position](#find-logistic-network-by-position) | Find the logistic network that covers a given position. |
| [find_logistic_networks_by_construction_area](#find-logistic-networks-by-construction-area) | Finds all of the logistics networks whose construction area intersects with the given position. |
| [find_nearest_enemy](#find-nearest-enemy) | Find the enemy military target ([military entity](https://wiki.factorio.com/Military_units_and_structures)) closest to the given position. |
| [find_nearest_enemy_entity_with_owner](#find-nearest-enemy-entity-with-owner) | Find the enemy entity-with-owner closest to the given position. |
| [find_non_colliding_position](#find-non-colliding-position) | Find a non-colliding position within a given radius. |
| [find_non_colliding_position_in_box](#find-non-colliding-position-in-box) | Find a non-colliding position within a given rectangle. |
| [find_tiles_filtered](#find-tiles-filtered) | Find all tiles of the given name in the given area. |
| [find_units](#find-units) | Find units (entities with type "unit") of a given force and force condition within a given area. |
| [force_generate_chunk_requests](#force-generate-chunk-requests) | Blocks and generates all chunks that have been requested using all available threads. |
| [get_chunks](#get-chunks) | Get an iterator going over every chunk on this surface. |
| [get_closest](#get-closest) | Gets the closest entity in the list to this position. |
| [get_connected_tiles](#get-connected-tiles) | Gets all tiles of the given types that are connected horizontally or vertically to the given tile position including the given tile position. |
| [get_default_cover_tile](#get-default-cover-tile) | Gets the cover tile for the given force and tile on this surface if one is set. |
| [get_double_hidden_tile](#get-double-hidden-tile) | The double hidden tile name or `nil` if there isn't one for the given position. |
| [get_entities_with_force](#get-entities-with-force) | Returns all the military targets (entities with force) on this chunk for the given force. |
| [get_hidden_tile](#get-hidden-tile) | The hidden tile name. |
| [get_map_exchange_string](#get-map-exchange-string) | Gets the map exchange string for the current map generation settings of this surface. |
| [get_pollution](#get-pollution) | Get the pollution for a given position. |
| [get_property](#get-property) | Gets the value of surface property on this surface. |
| [get_random_chunk](#get-random-chunk) | Gets a random generated chunk position or nil if no chunks have been generated on this surface. |
| [get_resource_counts](#get-resource-counts) | Gets the resource amount of all resources on this surface |
| [get_script_area](#get-script-area) | Gets the first script area by name or id. |
| [get_script_areas](#get-script-areas) | Gets the script areas that match the given name or if no name is given all areas are returned. |
| [get_script_position](#get-script-position) | Gets the first script position by name or id. |
| [get_script_positions](#get-script-positions) | Gets the script positions that match the given name or if no name is given all positions are returned. |
| [get_segmented_units](#get-segmented-units) | Get all segmented units that exist on the surface. |
| [get_starting_area_radius](#get-starting-area-radius) | Gets the starting area radius of this surface. |
| [get_territories](#get-territories) | Get all territories on the surface. |
| [get_territory_for_chunk](#get-territory-for-chunk) | Get the territory that the given chunk is assigned to. If the chunk is not part of any territory or the territory for the chunk has not yet been generated, then this returns `nil`. |
| [get_tile](#get-tile) | Get the tile at a given position. An alternative call signature for this method is passing it a single TilePosition. |
| [get_total_pollution](#get-total-pollution) | Gets the total amount of pollution on the surface by iterating over all the chunks containing pollution. |
| [is_chunk_generated](#is-chunk-generated) | Is a given chunk generated? |
| [play_music](#play-music) | Play a music track for every player on this surface. |
| [play_sound](#play-sound) | Play a sound for every player on this surface. |
| [pollute](#pollute) | Spawn pollution at the given position. |
| [print](#print) | Print text to the chat console of all players on this surface. |
| [regenerate_decorative](#regenerate-decorative) | Regenerate autoplacement of some decoratives on this surface. This can be used to autoplace newly-added decoratives. |
| [regenerate_entity](#regenerate-entity) | Regenerate autoplacement of some entities on this surface. This can be used to autoplace newly-added entities. |
| [remove_script_area](#remove-script-area) | Removes the given script area. |
| [remove_script_position](#remove-script-position) | Removes the given script position. |
| [request_path](#request-path) | Generates a path with the specified constraints (as an array of PathfinderWaypoints) using the unit pathfinding algorithm. This path can be used to emulate pathing behavior by script for non-unit entities, such as vehicles. If you want to command actual units (such as biters or spitters) to move, use LuaCommandable::set_command via LuaEntity::commandable instead. |
| [request_to_generate_chunks](#request-to-generate-chunks) | Request that the game's map generator generate chunks at the given position for the given radius on this surface. If the radius is `0`, then only the chunk at the given position is generated. |
| [set_chunk_generated_status](#set-chunk-generated-status) | Set generated status of a chunk. Useful when copying chunks. |
| [set_default_cover_tile](#set-default-cover-tile) | Sets the cover tile for the given force and tile on this surface. |
| [set_double_hidden_tile](#set-double-hidden-tile) | Set double hidden tile for the specified position. During normal gameplay, only non-mineable tiles can become double hidden. |
| [set_hidden_tile](#set-hidden-tile) | Set the hidden tile for the specified position. While during normal gameplay only non-mineable or foundation tiles can become hidden, this method allows any kind of tile to be set as the hidden one. |
| [set_multi_command](#set-multi-command) | Give a command to multiple units. This will automatically select suitable units for the task. |
| [set_pollution](#set-pollution) | Set the pollution for a given position. |
| [set_property](#set-property) | Sets the value of surface property on this surface. |
| [set_territory_for_chunks](#set-territory-for-chunks) | Removes the given chunks from their current territories and adds them to the given territory if provided. |
| [set_tiles](#set-tiles) | Set tiles at specified locations. Can automatically correct the edges around modified tiles. |
| [spill_inventory](#spill-inventory) | Spill inventory on the ground centered at a given location. |
| [spill_item_stack](#spill-item-stack) | Spill items on the ground centered at a given location. |
| [upgrade_area](#upgrade-area) | Place an upgrade request. |

### add_script_area

`add_script_area(area)`

Adds the given script area.

#### Parameters

##### area

**Type:** [ScriptArea](../concepts/ScriptArea.md)

#### Return values

- [uint32](../concepts/uint32.md) — The id of the created area.

### add_script_position

`add_script_position(position)`

Adds the given script position.

#### Parameters

##### position

**Type:** [ScriptPosition](../concepts/ScriptPosition.md)

#### Return values

- [uint32](../concepts/uint32.md) — The id of the created position.

### build_checkerboard

`build_checkerboard(area)`

Sets the given area to the checkerboard lab tiles.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The tile area.

### build_enemy_base

`build_enemy_base(force, position, unit_count)`

Send a group to build a new base.

The specified force must be AI-controlled; i.e. `force.ai_controllable` must be `true`.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

Force the new base will belong to. Defaults to enemy.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Location of the new base.

##### unit_count

**Type:** [uint32](../concepts/uint32.md)

Number of biters to send for the base-building task.

### calculate_tile_properties

`calculate_tile_properties(positions, property_names)`

Calculate values for a list of tile properties at a list of positions. Requests for unrecognized properties will be ignored, so this can also be used to test whether those properties exist.

#### Parameters

##### positions

**Type:** array[[MapPosition](../concepts/MapPosition.md)]

Positions for which to calculate property values.

##### property_names

**Type:** array[[string](../concepts/string.md)]

Names of properties (`"elevation"`, etc) to calculate.

#### Return values

- dictionary[[string](../concepts/string.md) → array[[double](../concepts/double.md)]] — Table of property value lists, keyed by property name.

### can_fast_replace

`can_fast_replace({direction, force, name, position})`

If there exists an entity at the given location that can be fast-replaced with the given entity parameters.

#### Parameters

##### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

Direction the entity would be placed. Defaults to `north`.

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

The force that would place the entity. Defaults to the `"neutral"` force.

##### name

**Type:** [EntityID](../concepts/EntityID.md)

Name of the entity to check.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where the entity would be placed.

#### Return values

- [boolean](../concepts/boolean.md)

### can_place_entity

`can_place_entity({build_check_type, direction, force, forced, inner_name, name, position})`

Check for collisions with terrain or other entities.

#### Parameters

##### build_check_type

**Type:** [defines.build_check_type](../defines/defines.md) · _optional_

Which type of check should be carried out. Defaults to `ghost_revive`.

##### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

Direction of the placed entity. Defaults to `north`.

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

The force that would place the entity. Defaults to the `"neutral"` force.

##### forced

**Type:** [boolean](../concepts/boolean.md) · _optional_

If `true`, entities that can be marked for deconstruction are ignored. Only used if `build_check_type` is either `manual_ghost`, `script_ghost` or `blueprint_ghost`. Defaults to `false`.

##### inner_name

**Type:** [string](../concepts/string.md) · _optional_

The prototype name of the entity contained in the ghost. Only used if `name` is `entity-ghost`.

##### name

**Type:** [EntityID](../concepts/EntityID.md)

Name of the entity prototype to check.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where the entity would be placed.

#### Return values

- [boolean](../concepts/boolean.md)

### cancel_deconstruct_area

`cancel_deconstruct_area({area, force, item, player, skip_fog_of_war, super_forced, undo_index})`

Cancel a deconstruction order.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The area to cancel deconstruction orders in.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force whose deconstruction orders to cancel.

##### item

**Type:** [LuaItemStack](../classes/LuaItemStack.md) · _optional_

The deconstruction item to use if any.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to set the last_user to, if any.  Also the player whose undo queue this action should be added to.

##### skip_fog_of_war

**Type:** [boolean](../concepts/boolean.md) · _optional_

If chunks covered by fog-of-war are skipped. Defaults to `false`.

##### super_forced

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the cancel deconstruction is super-forced. Defaults to `false`.

##### undo_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index of the undo item to add this action to. An index of `0` creates a new undo item for it. Defaults to putting it into the appropriate undo item automatically if not specified.

#### Raises

- `on_cancelled_deconstruction` — Raised for every entity whose deconstruction has been successfully cancelled.

### cancel_upgrade_area

`cancel_upgrade_area({area, force, item, player, skip_fog_of_war})`

Cancel a upgrade order.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The area to cancel upgrade orders in.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force whose upgrade orders to cancel.

##### item

**Type:** [LuaItemStack](../classes/LuaItemStack.md)

The upgrade item to use.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to set the last_user to if any.

##### skip_fog_of_war

**Type:** [boolean](../concepts/boolean.md) · _optional_

If chunks covered by fog-of-war are skipped.

#### Raises

- `on_cancelled_upgrade` — Raised for every entity whose upgrade has been successfully cancelled.

### clear

`clear(ignore_characters)`

Clears this surface deleting all entities and chunks on it.

#### Parameters

##### ignore_characters

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether characters on this surface that are connected to or associated with players should be ignored (not destroyed). Defaults to `false`.

#### Raises

- `on_pre_surface_cleared` — 
- `on_surface_cleared` — 

### clear_hidden_tiles

`clear_hidden_tiles()`

Completely removes hidden and double hidden tiles data on this surface.

### clear_pollution

`clear_pollution()`

Clears all pollution on this surface.

### clear_territory_for_chunks

`clear_territory_for_chunks(chunk_positions)`

Removes the chunk from the territory it is associated with (if any) and allows the map generator to potentially generate a new territory for the chunk in the future. To prevent the game from generating a new territory for the chunk, use [LuaSurface::set_chunk_territory](../classes/LuaSurface.md#set-chunk-territory) to set the chunk's territory to `nil`.

Territories that do not contain at least one generated chunk as a result of calling this method will be automatically deleted.

#### Parameters

##### chunk_positions

**Type:** array[[ChunkPosition](../concepts/ChunkPosition.md)]

The chunk positions. The chunks at these positions does not need to exist.

### clone_area

`clone_area({clear_destination_decoratives, clear_destination_entities, clone_decoratives, clone_entities, clone_tiles, create_build_effect_smoke, destination_area, destination_force, destination_surface, expand_map, source_area})`

Clones the given area.

Entities are cloned in an order such that they can always be created, eg rails before trains.

#### Parameters

##### clear_destination_decoratives

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the destination decoratives should be cleared

##### clear_destination_entities

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the destination entities should be cleared

##### clone_decoratives

**Type:** [boolean](../concepts/boolean.md) · _optional_

If decoratives should be cloned

##### clone_entities

**Type:** [boolean](../concepts/boolean.md) · _optional_

If entities should be cloned

##### clone_tiles

**Type:** [boolean](../concepts/boolean.md) · _optional_

If tiles should be cloned

##### create_build_effect_smoke

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, the building effect smoke will be shown around the new entities. Defaults to `false`.

##### destination_area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

##### destination_force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

##### destination_surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

##### expand_map

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the destination surface should be expanded when destination_area is outside current bounds. Defaults to `false`.

##### source_area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

#### Raises

- `on_area_cloned` — Raised after the individual `on_entity_cloned` events.
- `on_entity_cloned` — Raised for every entity that was cloned.

### clone_brush

`clone_brush({clear_destination_decoratives, clear_destination_entities, clone_decoratives, clone_entities, clone_tiles, create_build_effect_smoke, destination_force, destination_offset, destination_surface, expand_map, manual_collision_mode, source_offset, source_positions})`

Clones the given area.

[defines.events.on_entity_cloned](../defines/defines.md) is raised for each entity, and then [defines.events.on_area_cloned](../defines/defines.md) is raised.

Entities are cloned in an order such that they can always be created, eg rails before trains.

#### Parameters

##### clear_destination_decoratives

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the destination decoratives should be cleared

##### clear_destination_entities

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the destination entities should be cleared

##### clone_decoratives

**Type:** [boolean](../concepts/boolean.md) · _optional_

If decoratives should be cloned

##### clone_entities

**Type:** [boolean](../concepts/boolean.md) · _optional_

If entities should be cloned

##### clone_tiles

**Type:** [boolean](../concepts/boolean.md) · _optional_

If tiles should be cloned

##### create_build_effect_smoke

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, the building effect smoke will be shown around the new entities.

##### destination_force

**Type:** [LuaForce](../classes/LuaForce.md) ∣ [string](../concepts/string.md) · _optional_

##### destination_offset

**Type:** [TilePosition](../concepts/TilePosition.md)

##### destination_surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

##### expand_map

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the destination surface should be expanded when destination_area is outside current bounds. Defaults to `false`.

##### manual_collision_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

If manual-style collision checks should be done.

##### source_offset

**Type:** [TilePosition](../concepts/TilePosition.md)

##### source_positions

**Type:** array[[TilePosition](../concepts/TilePosition.md)]

### clone_entities

`clone_entities({create_build_effect_smoke, destination_force, destination_offset, destination_surface, entities, snap_to_grid})`

Clones the given entities.

Entities are cloned in an order such that they can always be created, eg rails before trains.

#### Parameters

##### create_build_effect_smoke

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, the building effect smoke will be shown around the new entities.

##### destination_force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

##### destination_offset

**Type:** [Vector](../concepts/Vector.md)

##### destination_surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

##### entities

**Type:** array[[LuaEntity](../classes/LuaEntity.md)]

##### snap_to_grid

**Type:** [boolean](../concepts/boolean.md) · _optional_

#### Raises

- `on_entity_cloned` — Raised for every entity that was cloned.

### count_entities_filtered

`count_entities_filtered(filter)`

Count entities of given type or name in a given area. Works just like [LuaSurface::find_entities_filtered](../classes/LuaSurface.md#find-entities-filtered), except this only returns the count. As it doesn't construct all the wrapper objects, this is more efficient if one is only interested in the number of entities.

- If no `area` or `position` are given, the entire surface is searched.

- If `position` is given, this returns the entities colliding with that position (i.e the given position is within the entity's collision box).

- If `position` and `radius` are given, this returns entities in the radius of the position.

- If `area` is specified, this returns entities colliding with that area.

#### Parameters

##### filter

**Type:** [EntitySearchFilters](../concepts/EntitySearchFilters.md)

#### Return values

- [uint32](../concepts/uint32.md)

### count_tiles_filtered

`count_tiles_filtered(filter)`

Count tiles of a given name in a given area. Works just like [LuaSurface::find_tiles_filtered](../classes/LuaSurface.md#find-tiles-filtered), except this only returns the count. As it doesn't construct all the wrapper objects, this is more efficient if one is only interested in the number of tiles.

If no `area` or `position` and `radius` is given, the entire surface is searched. If `position` and `radius` are given, only tiles within the radius of the position are included.

#### Parameters

##### filter

**Type:** [TileSearchFilters](../concepts/TileSearchFilters.md)

#### Return values

- [uint32](../concepts/uint32.md)

### create_decoratives

`create_decoratives({check_collision, decoratives})`

Adds the given decoratives to the surface.

This will merge decoratives of the same type that already exist effectively increasing the "amount" field.

#### Parameters

##### check_collision

**Type:** [boolean](../concepts/boolean.md) · _optional_

If collision should be checked against entities/tiles.

##### decoratives

**Type:** array[[Decorative](../concepts/Decorative.md)]

### create_entities_from_blueprint_string

`create_entities_from_blueprint_string({by_player, direction, flip_horizontal, flip_vertical, force, position, string})`

This method only works when used in simulations.

Places entities via the given blueprint string. These entities are force-built.

#### Parameters

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player that placed the blueprint. Defaults to `nil`.

##### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

The direction to place the blueprint in. Defaults to north.

##### flip_horizontal

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to flip the blueprint horizontally. Defaults to `false`.

##### flip_vertical

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to flip the blueprint vertically. Defaults to `false`.

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

The force to place the blueprint for. Defaults to the player force.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position to place the blueprint at.

##### string

**Type:** [string](../concepts/string.md)

The blueprint string to import.

#### Return values

- [int32](../concepts/int32.md) _(optional)_ — If the blueprint string was invalid, `1` is returned. Otherwise, `nil` is returned.

### create_entity

`create_entity({burner_fuel_inventory, cause, character, create_build_effect_smoke, direction, fast_replace, force, item, mirror, move_stuck_players, name, player, position, preserve_ghosts_and_corpses, quality, raise_built, register_plant, snap_to_grid, source, spawn_decorations, spill, target, undo_index})`

Create an entity on this surface.

#### Parameters

##### burner_fuel_inventory

**Type:** [BlueprintInventoryWithFilters](../concepts/BlueprintInventoryWithFilters.md) · _optional_

Used by entities with a burner energy source.

##### cause

**Type:** [LuaEntity](../classes/LuaEntity.md) ∣ [ForceID](../concepts/ForceID.md) · _optional_

Cause entity / force. The entity or force that triggered the chain of events that led to this entity being created. Used for beams, projectiles, stickers, etc. so that the damage receiver can know which entity or force to retaliate against. Defaults to the value of `source`.

##### character

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

If fast_replace is true simulate fast replace using this character.

##### create_build_effect_smoke

**Type:** [boolean](../concepts/boolean.md) · _optional_

If false, the building effect smoke will not be shown around the new entity. Defaults to `true`.

##### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

Desired orientation of the entity after creation.

##### fast_replace

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, building will attempt to simulate fast-replace building. Defaults to `false`.

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

Force of the entity, default is enemy.

##### item

**Type:** [LuaItemStack](../classes/LuaItemStack.md) · _optional_

If provided, the entity will attempt to pull stored values from this item (for example; creating a spidertron from a previously named and mined spidertron)

##### mirror

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether this entity is mirrored. Defaults to `false`.

##### move_stuck_players

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, any characters that are in the way of the entity are teleported out of the way.

##### name

**Type:** [EntityID](../concepts/EntityID.md)

The entity prototype name to create.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

If given set the last_user to this player. If fast_replace is true simulate fast replace using this player. Also the player whose undo queue this action should be added to.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where to create the entity.

##### preserve_ghosts_and_corpses

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, colliding ghosts and corpses will not be removed by the creation of some entity types. Defaults to `false`.

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

Quality of the entity to be created. Defaults to `normal`.

##### raise_built

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true; [defines.events.script_raised_built](../defines/defines.md) will be fired on successful entity creation. Defaults to `false`.

##### register_plant

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, plants created will register in any in-range agricultural towers.

##### snap_to_grid

**Type:** [boolean](../concepts/boolean.md) · _optional_

If false the exact position given is used to instead of snapping to the normal entity grid. This only applies if the entity normally snaps to the grid.

##### source

**Type:** [LuaEntity](../classes/LuaEntity.md) ∣ [MapPosition](../concepts/MapPosition.md) · _optional_

Source entity. Used for beams, projectiles, and highlight-boxes.

##### spawn_decorations

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, entity types that have [spawn_decoration](../classes/LuaEntityPrototype.md#spawn-decorations) property will apply triggers defined in the property. Defaults to `false`.

##### spill

**Type:** [boolean](../concepts/boolean.md) · _optional_

If false while fast_replace is true and player is nil any items from fast-replacing will be deleted instead of dropped on the ground. Defaults to `true`.

##### target

**Type:** [LuaEntity](../classes/LuaEntity.md) ∣ [MapPosition](../concepts/MapPosition.md) · _optional_

Entity with health for the new entity to target.

##### undo_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index of the undo item to add this action to. An index of `0` creates a new undo item for it. Defaults to putting it into the appropriate undo item automatically if not specified.

#### Variant parameter groups

Other attributes may be specified depending on the type of entity:

##### accumulator

###### control_behavior

**Type:** [AccumulatorBlueprintControlBehavior](../concepts/AccumulatorBlueprintControlBehavior.md) · _optional_

##### agricultural-tower

###### control_behavior

**Type:** [AgriculturalTowerBlueprintControlBehavior](../concepts/AgriculturalTowerBlueprintControlBehavior.md) · _optional_

##### ammo-turret

###### control_behavior

**Type:** [TurretBlueprintControlBehavior](../concepts/TurretBlueprintControlBehavior.md) · _optional_

###### ignore-unprioritised

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

###### priority-list

**Type:** array[[SlotFilter](../concepts/SlotFilter.md)] · _optional_

##### arithmetic-combinator

###### control_behavior

**Type:** [ArithmeticCombinatorBlueprintControlBehavior](../concepts/ArithmeticCombinatorBlueprintControlBehavior.md) · _optional_

###### player_description

**Type:** [string](../concepts/string.md) · _optional_

##### artillery-flare

###### frame_speed

**Type:** [float](../concepts/float.md)

###### height

**Type:** [float](../concepts/float.md)

###### movement

**Type:** [Vector](../concepts/Vector.md)

###### vertical_speed

**Type:** [float](../concepts/float.md)

##### artillery-projectile

###### speed

**Type:** [double](../concepts/double.md) · _optional_

Defaults to 1.

##### artillery-turret

###### artillery_auto_targeting

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### control_behavior

**Type:** [ArtilleryTurretBlueprintControlBehavior](../concepts/ArtilleryTurretBlueprintControlBehavior.md) · _optional_

##### artillery-wagon

###### artillery_auto_targeting

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### auto_connect

**Type:** [boolean](../concepts/boolean.md) · _optional_

True by default. If set to false, rolling stock will not connect to other rolling stocks nearby.

###### color

**Type:** [Color](../concepts/Color.md) · _optional_

The color of this rolling stock, if it supports colors.

###### copy_color_from_train_stop

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### enable_logistics_while_moving

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### grid

**Type:** array[[BlueprintEquipment](../concepts/BlueprintEquipment.md)] · _optional_

###### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The orientation of this rolling stock.

##### assembling-machine

###### control_behavior

**Type:** [AssemblingMachineBlueprintControlBehavior](../concepts/AssemblingMachineBlueprintControlBehavior.md) · _optional_

###### recipe

**Type:** [string](../concepts/string.md) · _optional_

###### recipe_quality

**Type:** [string](../concepts/string.md) · _optional_

##### asteroid

###### velocity

**Type:** [Vector](../concepts/Vector.md) · _optional_

##### asteroid-collector

###### chunk-filter

**Type:** array[[SlotFilter](../concepts/SlotFilter.md)] · _optional_

###### control_behavior

**Type:** [AsteroidCollectorBlueprintControlBehavior](../concepts/AsteroidCollectorBlueprintControlBehavior.md) · _optional_

###### result-inventory

**Type:** [BlueprintInventory](../concepts/BlueprintInventory.md) · _optional_

##### beam

###### duration

**Type:** [uint32](../concepts/uint32.md) · _optional_

If set, beam will be destroyed after this value of ticks.

###### max_length

**Type:** [uint32](../concepts/uint32.md) · _optional_

If set, beam will be destroyed when distance between source and target is greater than this value.

###### source_offset

**Type:** [Vector](../concepts/Vector.md) · _optional_

Source position will be offset by this value when rendering the beam.

###### source_position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

Absolute source position that can be used instead of source entity (entity has precedence if both entity and position are defined).

###### target_position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

Absolute target position that can be used instead of target entity (entity has precedence if both entity and position are defined).

##### boiler

###### control_behavior

**Type:** [BoilerBlueprintControlBehavior](../concepts/BoilerBlueprintControlBehavior.md) · _optional_

##### car

###### ammo_inventory

**Type:** [BlueprintInventoryWithFilters](../concepts/BlueprintInventoryWithFilters.md) · _optional_

###### driver_is_main_gunner

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### enable_logistics_while_moving

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### grid

**Type:** array[[BlueprintEquipment](../concepts/BlueprintEquipment.md)] · _optional_

###### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

###### request_filters

**Type:** [BlueprintLogisticSections](../concepts/BlueprintLogisticSections.md) · _optional_

###### selected_gun_index

**Type:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _optional_

###### trunk_inventory

**Type:** [BlueprintInventoryWithFilters](../concepts/BlueprintInventoryWithFilters.md) · _optional_

##### cargo-landing-pad

###### bar

**Type:** [uint32](../concepts/uint32.md) · _optional_

###### control_behavior

**Type:** [CargoLandingPadBlueprintControlBehavior](../concepts/CargoLandingPadBlueprintControlBehavior.md) · _optional_

###### request_filters

**Type:** [BlueprintLogisticSections](../concepts/BlueprintLogisticSections.md) · _optional_

##### cargo-wagon

###### auto_connect

**Type:** [boolean](../concepts/boolean.md) · _optional_

True by default. If set to false, rolling stock will not connect to other rolling stocks nearby.

###### color

**Type:** [Color](../concepts/Color.md) · _optional_

The color of this rolling stock, if it supports colors.

###### copy_color_from_train_stop

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### enable_logistics_while_moving

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### grid

**Type:** array[[BlueprintEquipment](../concepts/BlueprintEquipment.md)] · _optional_

###### inventory

**Type:** [BlueprintInventoryWithFilters](../concepts/BlueprintInventoryWithFilters.md) · _optional_

###### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The orientation of this rolling stock.

##### character-corpse

###### color

**Type:** [Color](../concepts/Color.md) · _optional_

###### inventory_size

**Type:** [uint32](../concepts/uint32.md) · _optional_

###### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

##### cliff

###### cliff_orientation

**Type:** [CliffOrientation](../concepts/CliffOrientation.md) · _optional_

If not specified, `direction` will be used instead.

##### constant-combinator

###### control_behavior

**Type:** [ConstantCombinatorBlueprintControlBehavior](../concepts/ConstantCombinatorBlueprintControlBehavior.md) · _optional_

###### player_description

**Type:** [string](../concepts/string.md) · _optional_

##### container

###### bar

**Type:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _optional_

Inventory index where the red limiting bar should be set.

###### control_behavior

**Type:** [ContainerBlueprintControlBehavior](../concepts/ContainerBlueprintControlBehavior.md) · _optional_

###### filters

**Type:** array[[BlueprintItemFilter](../concepts/BlueprintItemFilter.md)] · _optional_

##### decider-combinator

###### control_behavior

**Type:** [DeciderCombinatorBlueprintControlBehavior](../concepts/DeciderCombinatorBlueprintControlBehavior.md) · _optional_

###### player_description

**Type:** [string](../concepts/string.md) · _optional_

##### deconstructible-tile-proxy

###### proxy_type

**Type:** `"cover"` ∣ `"foundation"` · _optional_

##### display-panel

###### always_show

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### control_behavior

**Type:** [DisplayPanelBlueprintControlBehavior](../concepts/DisplayPanelBlueprintControlBehavior.md) · _optional_

###### icon

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

###### show_in_chart

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### text

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

##### electric-energy-interface

###### buffer_size

**Type:** [double](../concepts/double.md) · _optional_

###### power_production

**Type:** [double](../concepts/double.md) · _optional_

###### power_usage

**Type:** [double](../concepts/double.md) · _optional_

##### electric-pole

###### auto_connect

**Type:** [boolean](../concepts/boolean.md) · _optional_

True by default. If set to false, created electric pole will not auto connect to neighbour electric poles.

##### electric-turret

###### control_behavior

**Type:** [TurretBlueprintControlBehavior](../concepts/TurretBlueprintControlBehavior.md) · _optional_

###### ignore-unprioritised

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

###### priority-list

**Type:** array[[SlotFilter](../concepts/SlotFilter.md)] · _optional_

##### entity-ghost

###### inner_name

**Type:** [string](../concepts/string.md)

The prototype name of the entity contained in the ghost.

###### tags

**Type:** [Tags](../concepts/Tags.md) · _optional_

The [LuaEntity::tags](../classes/LuaEntity.md#tags) associated with this entity ghost.

##### fire

###### initial_ground_flame_count

**Type:** [uint8](../concepts/uint8.md) · _optional_

With how many small flames should the fire on ground be created. Defaults to the initial flame count of the prototype.

##### fluid-turret

###### control_behavior

**Type:** [TurretBlueprintControlBehavior](../concepts/TurretBlueprintControlBehavior.md) · _optional_

###### ignore-unprioritised

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

###### priority-list

**Type:** array[[SlotFilter](../concepts/SlotFilter.md)] · _optional_

##### fluid-wagon

###### auto_connect

**Type:** [boolean](../concepts/boolean.md) · _optional_

True by default. If set to false, rolling stock will not connect to other rolling stocks nearby.

###### color

**Type:** [Color](../concepts/Color.md) · _optional_

The color of this rolling stock, if it supports colors.

###### copy_color_from_train_stop

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### enable_logistics_while_moving

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### grid

**Type:** array[[BlueprintEquipment](../concepts/BlueprintEquipment.md)] · _optional_

###### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The orientation of this rolling stock.

##### furnace

###### control_behavior

**Type:** [FurnaceBlueprintControlBehavior](../concepts/FurnaceBlueprintControlBehavior.md) · _optional_

##### heat-interface

###### mode

**Type:** [HeatSettingMode](../concepts/HeatSettingMode.md) · _optional_

###### temperature

**Type:** [double](../concepts/double.md) · _optional_

##### heat-pipe

###### control_behavior

**Type:** [HeatPipeBlueprintControlBehavior](../concepts/HeatPipeBlueprintControlBehavior.md) · _optional_

##### highlight-box

###### blink_interval

**Type:** [uint32](../concepts/uint32.md) · _optional_

The blink interval for this highlight box. Makes it be shown every `blink_interval` ticks. Defaults to `0` (constantly shown).

###### bounding_box

**Type:** [BoundingBox](../concepts/BoundingBox.md) · _optional_

The bounding box defining the highlight box using absolute map coordinates. If specified, the general `position` parameter still needs to be present, but will be ignored. If not specified, the game falls back to the `source` parameter first, then the `target` parameter second. One of these three parameters need to be specified.

###### box_type

**Type:** [CursorBoxRenderType](../concepts/CursorBoxRenderType.md) · _optional_

Specifies the graphical appearance (color) of the highlight box. Defaults to `"electricity"`.

###### render_player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player to render the highlight box for. If not provided, it will be rendered for all players.

###### time_to_live

**Type:** [uint32](../concepts/uint32.md) · _optional_

The amount of time in ticks that the highlight box will exist for. Defaults to existing forever.

##### infinity-cargo-wagon

###### auto_connect

**Type:** [boolean](../concepts/boolean.md) · _optional_

True by default. If set to false, rolling stock will not connect to other rolling stocks nearby.

###### color

**Type:** [Color](../concepts/Color.md) · _optional_

The color of this rolling stock, if it supports colors.

###### copy_color_from_train_stop

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### enable_logistics_while_moving

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### grid

**Type:** array[[BlueprintEquipment](../concepts/BlueprintEquipment.md)] · _optional_

###### infinity_settings

**Type:** [BlueprintInfinityInventorySettings](../concepts/BlueprintInfinityInventorySettings.md) · _optional_

###### inventory

**Type:** [BlueprintInventoryWithFilters](../concepts/BlueprintInventoryWithFilters.md) · _optional_

###### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The orientation of this rolling stock.

##### infinity-container

###### bar

**Type:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _optional_

###### control_behavior

**Type:** [LogisticContainerBlueprintControlBehavior](../concepts/LogisticContainerBlueprintControlBehavior.md) · _optional_

###### filters

**Type:** array[[BlueprintItemFilter](../concepts/BlueprintItemFilter.md)] · _optional_

###### infinity_settings

**Type:** [BlueprintInfinityInventorySettings](../concepts/BlueprintInfinityInventorySettings.md) · _optional_

###### override_logistic_mode

**Type:** [LogisticMode](../concepts/LogisticMode.md) · _optional_

###### request_filters

**Type:** [BlueprintLogisticSections](../concepts/BlueprintLogisticSections.md) · _optional_

###### saved_request_filters

**Type:** [LogisticSections](../concepts/LogisticSections.md) · _optional_

###### saved_request_from_buffers

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### saved_set_requests

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### saved_storage_filters

**Type:** [LogisticSections](../concepts/LogisticSections.md) · _optional_

##### infinity-pipe

###### infinity_settings

**Type:** [InfinityPipeFilter](../concepts/InfinityPipeFilter.md) · _optional_

##### inserter

###### control_behavior

**Type:** [InserterBlueprintControlBehavior](../concepts/InserterBlueprintControlBehavior.md) · _optional_

###### drop_position

**Type:** [Vector](../concepts/Vector.md) · _optional_

Used only if [InserterPrototype::allow_custom_vectors](../prototypes/InserterPrototype.md#allow-custom-vectors) is true.

###### filter_mode

**Type:** `"blacklist"` ∣ `"whitelist"` · _optional_

###### filters

**Type:** array[[BlueprintItemFilter](../concepts/BlueprintItemFilter.md)] · _optional_

###### override_stack_size

**Type:** [uint8](../concepts/uint8.md) · _optional_

###### pickup_position

**Type:** [Vector](../concepts/Vector.md) · _optional_

Used only if [InserterPrototype::allow_custom_vectors](../prototypes/InserterPrototype.md#allow-custom-vectors) is true.

###### spoil_priority

**Type:** [BlueprintSpoilPriority](../concepts/BlueprintSpoilPriority.md) · _optional_

###### use_filters

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

##### item-entity

###### stack

**Type:** [string](../concepts/string.md) ∣ [ItemStackDefinition](../concepts/ItemStackDefinition.md)

The stack of items to create. Either the name of an item, which will create a full stack, or a detailed item stack definition.

##### item-request-proxy

###### modules

**Type:** array[[BlueprintInsertPlan](../concepts/BlueprintInsertPlan.md)] · _optional_

Specification of items to be delivered to the target entity by the logistic network. While this is called "modules", any item can be specified.

###### removal_plan

**Type:** array[[BlueprintInsertPlan](../concepts/BlueprintInsertPlan.md)] · _optional_

Specification of items to be removed from the target entity by the logistic network.

###### target

**Type:** [LuaEntity](../classes/LuaEntity.md)

The target items are to be delivered to.

##### lab

###### control_behavior

**Type:** [LabBlueprintControlBehavior](../concepts/LabBlueprintControlBehavior.md) · _optional_

##### lamp

###### always_on

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to false.

###### color

**Type:** [Color](../concepts/Color.md) · _optional_

Defaults to white.

###### control_behavior

**Type:** [LampBlueprintControlBehavior](../concepts/LampBlueprintControlBehavior.md) · _optional_

##### land-mine

###### control_behavior

**Type:** [LandMineBlueprintControlBehavior](../concepts/LandMineBlueprintControlBehavior.md) · _optional_

##### lane-splitter

###### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md) · _optional_

###### input_priority

**Type:** [SplitterPriority](../concepts/SplitterPriority.md) · _optional_

###### output_priority

**Type:** [SplitterPriority](../concepts/SplitterPriority.md) · _optional_

##### linked-belt

###### type

**Type:** [BeltConnectionType](../concepts/BeltConnectionType.md) · _optional_

##### linked-container

###### link_id

**Type:** [uint32](../concepts/uint32.md) · _optional_

##### loader

###### belt_stack_size_override

**Type:** [uint8](../concepts/uint8.md) · _optional_

###### control_behavior

**Type:** [LoaderBlueprintControlBehavior](../concepts/LoaderBlueprintControlBehavior.md) · _optional_

###### filter_mode

**Type:** [PrototypeFilterMode](../concepts/PrototypeFilterMode.md) · _optional_

###### filters

**Type:** array[[SlotFilter](../concepts/SlotFilter.md)] · _optional_

###### type

**Type:** [BeltConnectionType](../concepts/BeltConnectionType.md) · _optional_

Defaults to `"input"`.

##### loader-1x1

###### belt_stack_size_override

**Type:** [uint8](../concepts/uint8.md) · _optional_

###### control_behavior

**Type:** [LoaderBlueprintControlBehavior](../concepts/LoaderBlueprintControlBehavior.md) · _optional_

###### filter_mode

**Type:** [PrototypeFilterMode](../concepts/PrototypeFilterMode.md) · _optional_

###### filters

**Type:** array[[SlotFilter](../concepts/SlotFilter.md)] · _optional_

###### type

**Type:** [BeltConnectionType](../concepts/BeltConnectionType.md) · _optional_

Defaults to `"input"`.

##### locomotive

###### auto_connect

**Type:** [boolean](../concepts/boolean.md) · _optional_

True by default. If set to false, rolling stock will not connect to other rolling stocks nearby.

###### color

**Type:** [Color](../concepts/Color.md) · _optional_

The color of this rolling stock, if it supports colors.

###### copy_color_from_train_stop

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### enable_logistics_while_moving

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### grid

**Type:** array[[BlueprintEquipment](../concepts/BlueprintEquipment.md)] · _optional_

###### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The orientation of this rolling stock.

###### snap_to_train_stop

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the locomotive should snap to an adjacent train stop. Defaults to true.

##### logistic-container

###### bar

**Type:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _optional_

###### control_behavior

**Type:** [LogisticContainerBlueprintControlBehavior](../concepts/LogisticContainerBlueprintControlBehavior.md) · _optional_

###### filters

**Type:** array[[BlueprintItemFilter](../concepts/BlueprintItemFilter.md)] · _optional_

###### request_filters

**Type:** array[[SlotFilter](../concepts/SlotFilter.md)] · _optional_

##### mining-drill

###### control_behavior

**Type:** [MiningDrillBlueprintControlBehavior](../concepts/MiningDrillBlueprintControlBehavior.md) · _optional_

###### filter

**Type:** [BlueprintMiningDrillFilter](../concepts/BlueprintMiningDrillFilter.md) · _optional_

##### offshore-pump

###### control_behavior

**Type:** [GenericOnOffBlueprintControlBehavior](../concepts/GenericOnOffBlueprintControlBehavior.md) · _optional_

##### particle

###### frame_speed

**Type:** [float](../concepts/float.md)

###### height

**Type:** [float](../concepts/float.md)

###### movement

**Type:** [Vector](../concepts/Vector.md)

###### vertical_speed

**Type:** [float](../concepts/float.md)

##### pipe

###### control_behavior

**Type:** [SingleFluidBoxBlueprintControlBehavior](../concepts/SingleFluidBoxBlueprintControlBehavior.md) · _optional_

##### pipe-to-ground

###### control_behavior

**Type:** [SingleFluidBoxBlueprintControlBehavior](../concepts/SingleFluidBoxBlueprintControlBehavior.md) · _optional_

##### plant

###### tick_grown

**Type:** [MapTick](../concepts/MapTick.md) · _optional_

The tick the plant will be fully grown. If not specified, the plants normal growth time is used.

##### power-switch

###### control_behavior

**Type:** [GenericOnOffBlueprintControlBehavior](../concepts/GenericOnOffBlueprintControlBehavior.md) · _optional_

###### switch_state

**Type:** [boolean](../concepts/boolean.md) · _optional_

##### programmable-speaker

###### alert_parameters

**Type:** [ProgrammableSpeakerAlertParameters](../concepts/ProgrammableSpeakerAlertParameters.md) · _optional_

###### control_behavior

**Type:** [ProgrammableSpeakerBlueprintControlBehavior](../concepts/ProgrammableSpeakerBlueprintControlBehavior.md) · _optional_

###### parameters

**Type:** [ProgrammableSpeakerParameters](../concepts/ProgrammableSpeakerParameters.md) · _optional_

##### projectile

###### base_damage_modifiers

**Type:** [TriggerModifierData](../concepts/TriggerModifierData.md) · _optional_

###### bonus_damage_modifiers

**Type:** [TriggerModifierData](../concepts/TriggerModifierData.md) · _optional_

###### max_range

**Type:** [double](../concepts/double.md) · _optional_

Defaults to 1000.

###### speed

**Type:** [double](../concepts/double.md) · _optional_

Defaults to 0.

##### proxy-container

###### control_behavior

**Type:** [ProxyContainerBlueprintControlBehavior](../concepts/ProxyContainerBlueprintControlBehavior.md) · _optional_

##### pump

###### control_behavior

**Type:** [PumpBlueprintControlBehavior](../concepts/PumpBlueprintControlBehavior.md) · _optional_

###### fluid_filter

**Type:** [string](../concepts/string.md) · _optional_

##### radar

###### control_behavior

**Type:** [RadarBlueprintControlBehavior](../concepts/RadarBlueprintControlBehavior.md) · _optional_

##### rail-chain-signal

###### control_behavior

**Type:** [RailSignalBaseBlueprintControlBehavior](../concepts/RailSignalBaseBlueprintControlBehavior.md) · _optional_

###### rail_layer

**Type:** [defines.rail_layer](../defines/defines.md) · _optional_

Defaults to [defines.rail_layer.ground](../defines/defines.md).

##### rail-signal

###### control_behavior

**Type:** [RailSignalBaseBlueprintControlBehavior](../concepts/RailSignalBaseBlueprintControlBehavior.md) · _optional_

###### rail_layer

**Type:** [defines.rail_layer](../defines/defines.md) · _optional_

Defaults to [defines.rail_layer.ground](../defines/defines.md).

##### reactor

###### control_behavior

**Type:** [ReactorBlueprintControlBehavior](../concepts/ReactorBlueprintControlBehavior.md) · _optional_

##### resource

###### amount

**Type:** [uint32](../concepts/uint32.md) · _optional_

###### enable_cliff_removal

**Type:** [boolean](../concepts/boolean.md) · _optional_

If colliding cliffs are removed. Default is true.

###### enable_tree_removal

**Type:** [boolean](../concepts/boolean.md) · _optional_

If colliding trees are removed normally for this resource entity based off the prototype tree removal values. Default is true.

###### snap_to_tile_center

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, the resource entity will be placed to center of a tile as map generator would place it, otherwise standard non-resource grid alignment rules will apply. Default is true.

##### roboport

###### control_behavior

**Type:** [RoboportBlueprintControlBehavior](../concepts/RoboportBlueprintControlBehavior.md) · _optional_

###### request_filters

**Type:** [BlueprintLogisticSections](../concepts/BlueprintLogisticSections.md) · _optional_

##### rocket-silo

###### control_behavior

**Type:** [RocketSiloBlueprintControlBehavior](../concepts/RocketSiloBlueprintControlBehavior.md) · _optional_

###### launch_to_orbit_automatically

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### recipe

**Type:** [string](../concepts/string.md) · _optional_

###### recipe_quality

**Type:** [string](../concepts/string.md) · _optional_

###### use_transitional_requests

**Type:** [boolean](../concepts/boolean.md) · _optional_

##### selector-combinator

###### control_behavior

**Type:** [SelectorCombinatorParameters](../concepts/SelectorCombinatorParameters.md) · _optional_

###### player_description

**Type:** [string](../concepts/string.md) · _optional_

##### simple-entity-with-force

###### color

**Type:** [Color](../concepts/Color.md) · _optional_

###### render_player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

###### variation

**Type:** [uint8](../concepts/uint8.md) · _optional_

##### simple-entity-with-owner

###### color

**Type:** [Color](../concepts/Color.md) · _optional_

###### render_player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

###### variation

**Type:** [uint8](../concepts/uint8.md) · _optional_

##### space-platform-hub

###### bar

**Type:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _optional_

###### control_behavior

**Type:** [SpacePlatformHubBlueprintControlBehavior](../concepts/SpacePlatformHubBlueprintControlBehavior.md) · _optional_

###### providing_to_other_platforms

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### request_filters

**Type:** [BlueprintLogisticSections](../concepts/BlueprintLogisticSections.md) · _optional_

###### request_missing_construction_materials

**Type:** [boolean](../concepts/boolean.md) · _optional_

##### speech-bubble

###### lifetime

**Type:** [uint32](../concepts/uint32.md) · _optional_

###### text

**Type:** [LocalisedString](../concepts/LocalisedString.md)

##### spider-vehicle

###### ammo_inventory

**Type:** [BlueprintInventoryWithFilters](../concepts/BlueprintInventoryWithFilters.md) · _optional_

###### automatic_targeting_parameters

**Type:** [VehicleAutomaticTargetingParameters](../concepts/VehicleAutomaticTargetingParameters.md) · _optional_

###### color

**Type:** [Color](../concepts/Color.md) · _optional_

###### driver_is_main_gunner

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### enable_logistics_while_moving

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### grid

**Type:** array[[BlueprintEquipment](../concepts/BlueprintEquipment.md)] · _optional_

###### label

**Type:** [string](../concepts/string.md) · _optional_

###### request_filters

**Type:** [BlueprintLogisticSections](../concepts/BlueprintLogisticSections.md) · _optional_

###### selected_gun_index

**Type:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _optional_

###### trunk_inventory

**Type:** [BlueprintInventoryWithFilters](../concepts/BlueprintInventoryWithFilters.md) · _optional_

##### splitter

###### control_behavior

**Type:** [SplitterBlueprintControlBehavior](../concepts/SplitterBlueprintControlBehavior.md) · _optional_

###### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md) · _optional_

###### input_priority

**Type:** [SplitterPriority](../concepts/SplitterPriority.md) · _optional_

###### output_priority

**Type:** [SplitterPriority](../concepts/SplitterPriority.md) · _optional_

##### storage-tank

###### control_behavior

**Type:** [SingleFluidBoxBlueprintControlBehavior](../concepts/SingleFluidBoxBlueprintControlBehavior.md) · _optional_

##### stream

###### source_position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

Absolute source position that can be used instead of source entity (entity has precedence if both entity and position are defined).

###### target_position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

Absolute target position that can be used instead of target entity (entity has precedence if both entity and position are defined).

##### tile-ghost

###### inner_name

**Type:** [string](../concepts/string.md)

The prototype name of the tile contained in the ghost.

##### train-stop

###### color

**Type:** [Color](../concepts/Color.md) · _optional_

###### control_behavior

**Type:** [TrainStopBlueprintControlBehavior](../concepts/TrainStopBlueprintControlBehavior.md) · _optional_

###### manual_trains_limit

**Type:** [uint32](../concepts/uint32.md) · _optional_

###### priority

**Type:** [uint8](../concepts/uint8.md) · _optional_

###### station

**Type:** [string](../concepts/string.md) · _optional_

##### transport-belt

###### control_behavior

**Type:** [TransportBeltBlueprintControlBehavior](../concepts/TransportBeltBlueprintControlBehavior.md) · _optional_

##### turret

###### control_behavior

**Type:** [TurretBlueprintControlBehavior](../concepts/TurretBlueprintControlBehavior.md) · _optional_

###### ignore-unprioritised

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

###### priority-list

**Type:** array[[SlotFilter](../concepts/SlotFilter.md)] · _optional_

##### underground-belt

###### type

**Type:** [BeltConnectionType](../concepts/BeltConnectionType.md) · _optional_

Defaults to `"input"`.

##### valve

###### valve_threshold_override

**Type:** [float](../concepts/float.md) · _optional_

##### wall

###### control_behavior

**Type:** [WallBlueprintControlBehavior](../concepts/WallBlueprintControlBehavior.md) · _optional_

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — The created entity or `nil` if the creation failed.

#### Raises

- `script_raised_built` — Raised if the `raise_built` flag was set and the entity was successfully created.

**Examples:**

```
local asm = game.surfaces[1].create_entity{name = "assembling-machine-1", position = {15, 3}, force = game.forces.player, recipe = "iron-stick"}
```

```
-- Creates a filter inserter with circuit conditions and a filter
game.surfaces[1].create_entity{
  name = "filter-inserter", position = {20, 15}, force = game.player.force,
  conditions =
  {
    red = {name = "wood", count = 3, operator = ">"},
    green = {name = "iron-ore", count = 1, operator = "<"},
    logistics = {name = "wood", count = 3, operator = "="}
  },
  filters = {{index = 1, name = "iron-ore"}}
}
```

```
-- Creates a requester chest already set to request 128 iron plates.
game.surfaces[1].create_entity{
  name = "requester-chest", position = {game.player.position.x+3, game.player.position.y},
  force = game.player.force, request_filters = {{index = 1, name = "iron-plate", count = 128}}
}
```

```
game.surfaces[1].create_entity{name = "big-biter", position = {15, 3}, force = game.forces.player} -- Friendly biter
game.surfaces[1].create_entity{name = "medium-biter", position = {15, 3}, force = game.forces.enemy} -- Enemy biter
```

```
-- Creates a basic inserter at the player's location facing north
game.surfaces[1].create_entity{name = "inserter", position = game.player.position, direction = defines.direction.north}
```

### create_global_electric_network

`create_global_electric_network()`

Creates a global electric network for this surface, if one doesn't exist already.

### create_particle

`create_particle({frame_speed, height, movement, name, position, vertical_speed})`

Creates a particle at the given location

#### Parameters

##### frame_speed

**Type:** [float](../concepts/float.md)

##### height

**Type:** [float](../concepts/float.md)

##### movement

**Type:** [Vector](../concepts/Vector.md)

##### name

**Type:** [ParticleID](../concepts/ParticleID.md)

The particle name.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where to create the particle.

##### vertical_speed

**Type:** [float](../concepts/float.md)

### create_segmented_unit

`create_segmented_unit({force, name, quality, territory})`

Create a segmented unit on the surface. This differs from creating an entity with type `"segmented-unit"` in that this method can create the entity in non-generated chunks and with any arbitrary body shape and pre-assigned to a territory.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

Force of the segmented unit. Defaults to `enemy`.

##### name

**Type:** [EntityID](../concepts/EntityID.md)

The segmented-unit prototype name to create. Must be of type `"segmented-unit"`.

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

Quality of the entity to be created. Defaults to `normal`.

##### territory

**Type:** [LuaTerritory](../classes/LuaTerritory.md) · _optional_

The territory that the segmented unit is assigned to. If `nil`, the segmented unit will patrol around its spawn location. Must be located on this same surface.

#### Variant parameter groups

These attributes provide different methods of specifying the unit's spawn location:

##### body-nodes

###### body_nodes

**Type:** array[[MapPosition](../concepts/MapPosition.md)]

The body nodes that define the shape of the body. The array must contain at least one value and should have no more than [SegmentEngineSpecification::max_body_nodes](../types/SegmentEngineSpecification.md#max-body-nodes). The nodes should be about 1 tile apart from each other, but it is not strictly required.

##### position-and-direction

###### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

The initial orientation of the head. Defaults to `defines.direction.north`.

###### extended

**Type:** [boolean](../concepts/boolean.md) · _optional_

If `true`, will create the segmented unit so that the entire body is stretches in a straight line behind the head. If `false`, then only the head segment will be created and the remainder of the body segments will be created over time as the head moves forward. Defaults to `false`.

###### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The head position.

#### Return values

- [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) _(optional)_ — The created segmented unit or `nil` if the creation failed or the unit was destroyed during creation.

#### Raises

- `on_segmented_unit_created` — Raised if the segmented unit was successfully created. [cause](../events/on_segmented_unit_created.md) will be set to [script_created](../defines/defines.md).

### create_territory

`create_territory({chunks, patrol_path})`

Create a territory on the surface.

#### Parameters

##### chunks

**Type:** array[[ChunkPosition](../concepts/ChunkPosition.md)]

The chunks to assign to the new territory. Must contain at least one generated chunk. Any chunks already assigned to existing territories will be removed from those territories. Any territories left with no generated chunks will be deleted from the surface as a result.

##### patrol_path

**Type:** array[[MapPosition](../concepts/MapPosition.md)] · _optional_

The path that patrolling units will follow. If `nil` or empty, one will be generated for the new territory based on `chunks`.

#### Return values

- [LuaTerritory](../classes/LuaTerritory.md) _(optional)_ — The created territory or `nil` if the creation failed or the territory was destroyed during creation.

#### Raises

- `on_territory_created` — Raised if the territory was successfully created.

### create_trivial_smoke

`create_trivial_smoke({name, position})`

#### Parameters

##### name

**Type:** [TrivialSmokeID](../concepts/TrivialSmokeID.md)

The smoke prototype name to create.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where to create the smoke.

### create_unit_group

`create_unit_group({force, position})`

Create a new unit group at a given position.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

Force of the new unit group. Defaults to `"enemy"`.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Initial position of the new unit group.

#### Return values

- [LuaCommandable](../classes/LuaCommandable.md)

#### Raises

- `on_unit_group_created` — 

### deconstruct_area

`deconstruct_area({area, force, item, player, skip_fog_of_war, super_forced})`

Place a deconstruction request.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The area to mark for deconstruction.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force whose bots should perform the deconstruction.

##### item

**Type:** [LuaItemStack](../classes/LuaItemStack.md) · _optional_

The deconstruction item to use if any.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to set the last_user to if any.

##### skip_fog_of_war

**Type:** [boolean](../concepts/boolean.md) · _optional_

If chunks covered by fog-of-war are skipped. Defaults to `false`.

##### super_forced

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the deconstruction is super-forced. Defaults to `false`.

#### Raises

- `on_marked_for_deconstruction` — Raised for every entity that has been successfully marked for deconstruction.

### decorative_prototype_collides

`decorative_prototype_collides(position, prototype)`

Whether the given decorative prototype collides at the given position and direction.

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position to check.

##### prototype

**Type:** [DecorativeID](../concepts/DecorativeID.md)

The decorative prototype to check.

#### Return values

- [boolean](../concepts/boolean.md)

### delete_chunk

`delete_chunk(chunk_position)`

#### Parameters

##### chunk_position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

The chunk position to delete

#### Raises

- `on_chunk_deleted` — 
- `on_pre_chunk_deleted` — 
- `on_territory_destroyed` — Raised if a territory is automatically destroyed as a result of deleting the chunk.

### destroy_decoratives

`destroy_decoratives({area, collision_mask, exclude_soft, from_layer, invert, limit, name, position, to_layer})`

Removes all decoratives from the given area. If no area and no position are given, then the entire surface is searched.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md) · _optional_

##### collision_mask

**Type:** [CollisionLayerID](../concepts/CollisionLayerID.md) ∣ array[[CollisionLayerID](../concepts/CollisionLayerID.md)] ∣ dictionary[[CollisionLayerID](../concepts/CollisionLayerID.md) → `true`] · _optional_

##### exclude_soft

**Type:** [boolean](../concepts/boolean.md) · _optional_

Soft decoratives can be drawn over rails.

##### from_layer

**Type:** [string](../concepts/string.md) · _optional_

##### invert

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the filters should be inverted.

##### limit

**Type:** [uint32](../concepts/uint32.md) · _optional_

##### name

**Type:** [DecorativeID](../concepts/DecorativeID.md) ∣ array[[DecorativeID](../concepts/DecorativeID.md)] · _optional_

##### position

**Type:** [TilePosition](../concepts/TilePosition.md) · _optional_

##### to_layer

**Type:** [string](../concepts/string.md) · _optional_

### destroy_global_electric_network

`destroy_global_electric_network()`

Destroys the global electric network for this surface, if it exists.

### edit_script_area

`edit_script_area(area, id)`

Sets the given script area to the new values.

#### Parameters

##### area

**Type:** [ScriptArea](../concepts/ScriptArea.md)

##### id

**Type:** [uint32](../concepts/uint32.md)

The area to edit.

### edit_script_position

`edit_script_position(id, position)`

Sets the given script position to the new values.

#### Parameters

##### id

**Type:** [uint32](../concepts/uint32.md)

The position to edit.

##### position

**Type:** [ScriptPosition](../concepts/ScriptPosition.md)

### entity_prototype_collides

`entity_prototype_collides(direction, position, prototype, use_map_generation_bounding_box)`

Whether the given entity prototype collides at the given position and direction.

#### Parameters

##### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position to check.

##### prototype

**Type:** [EntityID](../concepts/EntityID.md)

The entity prototype to check.

##### use_map_generation_bounding_box

**Type:** [boolean](../concepts/boolean.md)

If the map generation bounding box should be used instead of the collision bounding box.

#### Return values

- [boolean](../concepts/boolean.md)

### execute_lightning

`execute_lightning({name, position})`

Creates lightning. If other entities which can be lightning targets are nearby, the final position will be adjusted.

#### Parameters

##### name

**Type:** [EntityID](../concepts/EntityID.md)

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

### find_closest_logistic_network_by_position

`find_closest_logistic_network_by_position(force, position)`

Find the logistic network with a cell closest to a given position.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

Force the logistic network should belong to.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

#### Return values

- [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) _(optional)_ — The found network or `nil` if no such network was found.

### find_decoratives_filtered

`find_decoratives_filtered({area, collision_mask, exclude_soft, from_layer, invert, limit, name, position, to_layer})`

Find decoratives of a given name in a given area.

If no filters are given, returns all decoratives in the search area. If multiple filters are specified, returns only decoratives matching every given filter. If no area and no position are given, the entire surface is searched.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md) · _optional_

##### collision_mask

**Type:** [CollisionLayerID](../concepts/CollisionLayerID.md) ∣ array[[CollisionLayerID](../concepts/CollisionLayerID.md)] ∣ dictionary[[CollisionLayerID](../concepts/CollisionLayerID.md) → `true`] · _optional_

##### exclude_soft

**Type:** [boolean](../concepts/boolean.md) · _optional_

Soft decoratives can be drawn over rails.

##### from_layer

**Type:** [string](../concepts/string.md) · _optional_

##### invert

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the filters should be inverted.

##### limit

**Type:** [uint32](../concepts/uint32.md) · _optional_

##### name

**Type:** [DecorativeID](../concepts/DecorativeID.md) ∣ array[[DecorativeID](../concepts/DecorativeID.md)] · _optional_

##### position

**Type:** [TilePosition](../concepts/TilePosition.md) · _optional_

##### to_layer

**Type:** [string](../concepts/string.md) · _optional_

#### Return values

- array[[DecorativeResult](../concepts/DecorativeResult.md)]

**Example:**

```
game.surfaces[1].find_decoratives_filtered{area = {{-10, -10}, {10, 10}}, name = "sand-decal"} -- gets all sand-decals in the rectangle
game.surfaces[1].find_decoratives_filtered{area = {{-10, -10}, {10, 10}}, limit = 5}  -- gets the first 5 decoratives in the rectangle
```

### find_enemy_units

`find_enemy_units(center, force, radius)`

Find enemy units (entities with type "unit") of a given force within an area.

This is more efficient than [LuaSurface::find_entities](../classes/LuaSurface.md#find-entities).

#### Parameters

##### center

**Type:** [MapPosition](../concepts/MapPosition.md)

Center of the search area

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

Force to find enemies of. If not given, uses the player force.

##### radius

**Type:** [double](../concepts/double.md)

Radius of the circular search area

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

**Example:**

```
-- Find all units who would be interested to attack the player, within 100-tile area.
local enemies = game.player.surface.find_enemy_units(game.player.position, 100)
```

### find_entities

`find_entities(area)`

Find entities in a given area.

If no area is given all entities on the surface are returned.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md) · _optional_

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

**Example:**

```
-- Will evaluate to a list of all entities within given area.
game.surfaces["nauvis"].find_entities({{-10, -10}, {10, 10}})
```

### find_entities_filtered

`find_entities_filtered(filter)`

Find all entities of the given type or name in the given area.

If no filters (`name`, `type`, `force`, etc.) are given, this returns all entities in the search area. If multiple filters are specified, only entities matching all given filters are returned.

- If no `area` or `position` are given, the entire surface is searched.

- If `position` is given, this returns the entities colliding with that position (i.e the given position is within the entity's collision box).

- If `position` and `radius` are given, this returns the entities within the radius of the position. Looks for the center of entities.

- If `area` is specified, this returns the entities colliding with that area.

#### Parameters

##### filter

**Type:** [EntitySearchFilters](../concepts/EntitySearchFilters.md)

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

**Example:**

```
game.surfaces[1].find_entities_filtered{area = {{-10, -10}, {10, 10}}, type = "resource"} -- gets all resources in the rectangle
game.surfaces[1].find_entities_filtered{area = {{-10, -10}, {10, 10}}, name = "iron-ore"} -- gets all iron ores in the rectangle
game.surfaces[1].find_entities_filtered{area = {{-10, -10}, {10, 10}}, name = {"iron-ore", "copper-ore"}} -- gets all iron ore and copper ore in the rectangle
game.surfaces[1].find_entities_filtered{area = {{-10, -10}, {10, 10}}, force = "player"}  -- gets player owned entities in the rectangle
game.surfaces[1].find_entities_filtered{area = {{-10, -10}, {10, 10}}, limit = 5}  -- gets the first 5 entities in the rectangle
game.surfaces[1].find_entities_filtered{position = {0, 0}, radius = 10}  -- gets all entities within 10 tiles of the position [0,0].
```

### find_entity

`find_entity(entity, position)`

Find an entity of the given name at the given position. This checks both the exact position and the bounding box of the entity.

#### Parameters

##### entity

**Type:** [EntityWithQualityID](../concepts/EntityWithQualityID.md)

Name of the entity to look for.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Coordinates to look at.

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — `nil` if no such entity is found.

**Example:**

```
game.player.selected.surface.find_entity('filter-inserter', {0,0})
```

### find_logistic_network_by_position

`find_logistic_network_by_position(force, position)`

Find the logistic network that covers a given position.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

Force the logistic network should belong to.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

#### Return values

- [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) _(optional)_ — The found network or `nil` if no such network was found.

### find_logistic_networks_by_construction_area

`find_logistic_networks_by_construction_area(force, position)`

Finds all of the logistics networks whose construction area intersects with the given position.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

Force the logistic networks should belong to.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

#### Return values

- array[[LuaLogisticNetwork](../classes/LuaLogisticNetwork.md)]

### find_nearest_enemy

`find_nearest_enemy({force, max_distance, position})`

Find the enemy military target ([military entity](https://wiki.factorio.com/Military_units_and_structures)) closest to the given position.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

The force the result will be an enemy of. Uses the player force if not specified.

##### max_distance

**Type:** [double](../concepts/double.md)

Radius of the circular search area.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Center of the search area.

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — The nearest enemy military target or `nil` if no enemy could be found within the given area.

### find_nearest_enemy_entity_with_owner

`find_nearest_enemy_entity_with_owner({force, max_distance, position})`

Find the enemy entity-with-owner closest to the given position.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

The force the result will be an enemy of. Uses the player force if not specified.

##### max_distance

**Type:** [double](../concepts/double.md)

Radius of the circular search area.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Center of the search area.

#### Return values

- [LuaEntity](../classes/LuaEntity.md) — The nearest enemy entity-with-owner or `nil` if no enemy could be found within the given area.

### find_non_colliding_position

`find_non_colliding_position(center, force_to_tile_center, name, precision, radius)`

Find a non-colliding position within a given radius.

Special care needs to be taken when using a radius of `0`. The game will not stop searching until it finds a suitable position, so it is important to make sure such a position exists. One particular case where it would not be able to find a solution is running it before any chunks have been generated.

#### Parameters

##### center

**Type:** [MapPosition](../concepts/MapPosition.md)

Center of the search area.

##### force_to_tile_center

**Type:** [boolean](../concepts/boolean.md) · _optional_

Will only check tile centers. This can be useful when your intent is to place a building at the resulting position, as they must generally be placed at tile centers. Defaults to `false`.

##### name

**Type:** [EntityID](../concepts/EntityID.md)

Prototype name of the entity to find a position for. (The bounding box for the collision checking is taken from this prototype.)

##### precision

**Type:** [double](../concepts/double.md)

The step length from the given position as it searches, in tiles. Minimum value is `0.01`.

##### radius

**Type:** [double](../concepts/double.md)

Max distance from `center` to search in. A radius of `0` means an infinitely-large search area.

#### Return values

- [MapPosition](../concepts/MapPosition.md) _(optional)_ — The non-colliding position. May be `nil` if no suitable position was found.

### find_non_colliding_position_in_box

`find_non_colliding_position_in_box(force_to_tile_center, name, precision, search_space)`

Find a non-colliding position within a given rectangle.

#### Parameters

##### force_to_tile_center

**Type:** [boolean](../concepts/boolean.md) · _optional_

Will only check tile centers. This can be useful when your intent is to place a building at the resulting position, as they must generally be placed at tile centers. Defaults to `false`.

##### name

**Type:** [EntityID](../concepts/EntityID.md)

Prototype name of the entity to find a position for. (The bounding box for the collision checking is taken from this prototype.)

##### precision

**Type:** [double](../concepts/double.md)

The step length from the given position as it searches, in tiles. Minimum value is 0.01.

##### search_space

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The rectangle to search inside.

#### Return values

- [MapPosition](../concepts/MapPosition.md) _(optional)_ — The non-colliding position. May be `nil` if no suitable position was found.

### find_tiles_filtered

`find_tiles_filtered(filter)`

Find all tiles of the given name in the given area.

If no filters are given, this returns all tiles in the search area.

If no `area` or `position` and `radius` is given, the entire surface is searched. If `position` and `radius` are given, only tiles within the radius of the position are included.

#### Parameters

##### filter

**Type:** [TileSearchFilters](../concepts/TileSearchFilters.md)

#### Return values

- array[[LuaTile](../classes/LuaTile.md)]

### find_units

`find_units({area, condition, force})`

Find units (entities with type "unit") of a given force and force condition within a given area.

This is more efficient than [LuaSurface::find_entities](../classes/LuaSurface.md#find-entities).

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

Box to find units within.

##### condition

**Type:** [ForceCondition](../concepts/ForceCondition.md)

Only forces which meet the condition will be included in the search.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

Force performing the search.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

**Examples:**

```
-- Find friendly units to "player" force
local friendly_units = game.player.surface.find_units({area = {{-10, -10},{10, 10}}, force = "player", condition = "friend")
```

```
-- Find units of "player" force
local units = game.player.surface.find_units({area = {{-10, -10},{10, 10}}, force = "player", condition = "same"})
```

### force_generate_chunk_requests

`force_generate_chunk_requests()`

Blocks and generates all chunks that have been requested using all available threads.

### get_chunks

`get_chunks()`

Get an iterator going over every chunk on this surface.

Chunks may or may not be generated; use [LuaSurface::is_chunk_generated](../classes/LuaSurface.md#is-chunk-generated) to check a chunk's state before accessing it.

#### Return values

- [LuaChunkIterator](../classes/LuaChunkIterator.md)

### get_closest

`get_closest(entities, position)`

Gets the closest entity in the list to this position.

#### Parameters

##### entities

**Type:** array[[LuaEntity](../classes/LuaEntity.md)]

The Entities to check.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_

### get_connected_tiles

`get_connected_tiles(area, include_diagonal, position, tiles)`

Gets all tiles of the given types that are connected horizontally or vertically to the given tile position including the given tile position.

This won't find tiles in non-generated chunks.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md) · _optional_

The area to find connected tiles in. If provided the start position must be in this area.

##### include_diagonal

**Type:** [boolean](../concepts/boolean.md) · _optional_

Include tiles that are connected diagonally.

##### position

**Type:** [TilePosition](../concepts/TilePosition.md)

The tile position to start at.

##### tiles

**Type:** array[[TileID](../concepts/TileID.md)]

The tiles to search for.

#### Return values

- array[[TilePosition](../concepts/TilePosition.md)] — The resulting set of tiles.

### get_default_cover_tile

`get_default_cover_tile(force, tile)`

Gets the cover tile for the given force and tile on this surface if one is set.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

##### tile

**Type:** [TileID](../concepts/TileID.md)

#### Return values

- [LuaTilePrototype](../classes/LuaTilePrototype.md) _(optional)_

### get_double_hidden_tile

`get_double_hidden_tile(position)`

The double hidden tile name or `nil` if there isn't one for the given position.

#### Parameters

##### position

**Type:** [TilePosition](../concepts/TilePosition.md)

The tile position.

#### Return values

- [string](../concepts/string.md)

### get_entities_with_force

`get_entities_with_force(chunk_position, force)`

Returns all the military targets (entities with force) on this chunk for the given force.

#### Parameters

##### chunk_position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

The chunk's position.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

Entities of this force will be returned.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_hidden_tile

`get_hidden_tile(position)`

The hidden tile name.

#### Parameters

##### position

**Type:** [TilePosition](../concepts/TilePosition.md)

The tile position.

#### Return values

- [string](../concepts/string.md) _(optional)_ — `nil` if there isn't one for the given position.

### get_map_exchange_string

`get_map_exchange_string()`

Gets the map exchange string for the current map generation settings of this surface.

#### Return values

- [string](../concepts/string.md)

### get_pollution

`get_pollution(position)`

Get the pollution for a given position.

Pollution is stored per chunk, so this will return the same value for all positions in one chunk.

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position to poll the chunk's pollution

#### Return values

- [double](../concepts/double.md)

**Example:**

```
game.surfaces[1].get_pollution({1,2})
```

### get_property

`get_property(property)`

Gets the value of surface property on this surface.

#### Parameters

##### property

**Type:** [SurfacePropertyID](../concepts/SurfacePropertyID.md)

Property to read.

#### Return values

- [double](../concepts/double.md) — Value of the property.

### get_random_chunk

`get_random_chunk()`

Gets a random generated chunk position or nil if no chunks have been generated on this surface.

#### Return values

- [ChunkPosition](../concepts/ChunkPosition.md) _(optional)_

### get_resource_counts

`get_resource_counts()`

Gets the resource amount of all resources on this surface

#### Return values

- dictionary[[string](../concepts/string.md) → [uint32](../concepts/uint32.md)]

### get_script_area

`get_script_area(key)`

Gets the first script area by name or id.

#### Parameters

##### key

**Type:** [string](../concepts/string.md) ∣ [uint32](../concepts/uint32.md) · _optional_

The name or id of the area to get.

#### Return values

- [ScriptArea](../concepts/ScriptArea.md) _(optional)_

### get_script_areas

`get_script_areas(name)`

Gets the script areas that match the given name or if no name is given all areas are returned.

#### Parameters

##### name

**Type:** [string](../concepts/string.md) · _optional_

#### Return values

- array[[ScriptArea](../concepts/ScriptArea.md)]

### get_script_position

`get_script_position(key)`

Gets the first script position by name or id.

#### Parameters

##### key

**Type:** [string](../concepts/string.md) ∣ [uint32](../concepts/uint32.md) · _optional_

The name or id of the position to get.

#### Return values

- [ScriptPosition](../concepts/ScriptPosition.md) _(optional)_

### get_script_positions

`get_script_positions(name)`

Gets the script positions that match the given name or if no name is given all positions are returned.

#### Parameters

##### name

**Type:** [string](../concepts/string.md) · _optional_

#### Return values

- array[[ScriptPosition](../concepts/ScriptPosition.md)]

### get_segmented_units

`get_segmented_units()`

Get all segmented units that exist on the surface.

#### Return values

- array[[LuaSegmentedUnit](../classes/LuaSegmentedUnit.md)]

### get_starting_area_radius

`get_starting_area_radius()`

Gets the starting area radius of this surface.

#### Return values

- [double](../concepts/double.md)

### get_territories

`get_territories()`

Get all territories on the surface.

#### Return values

- array[[LuaTerritory](../classes/LuaTerritory.md)]

### get_territory_for_chunk

`get_territory_for_chunk(chunk_position)`

Get the territory that the given chunk is assigned to. If the chunk is not part of any territory or the territory for the chunk has not yet been generated, then this returns `nil`.

#### Parameters

##### chunk_position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

The chunk's position. The chunk at this position does not need to exist.

#### Return values

- [LuaTerritory](../classes/LuaTerritory.md) _(optional)_

### get_tile

`get_tile(x, y)`

Get the tile at a given position. An alternative call signature for this method is passing it a single [TilePosition](../concepts/TilePosition.md).

Non-integer values will result in them being rounded down.

#### Parameters

##### x

**Type:** [int32](../concepts/int32.md)

##### y

**Type:** [int32](../concepts/int32.md)

#### Return values

- [LuaTile](../classes/LuaTile.md)

### get_total_pollution

`get_total_pollution()`

Gets the total amount of pollution on the surface by iterating over all the chunks containing pollution.

#### Return values

- [double](../concepts/double.md)

### is_chunk_generated

`is_chunk_generated(chunk_position)`

Is a given chunk generated?

#### Parameters

##### chunk_position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

The chunk's position.

#### Return values

- [boolean](../concepts/boolean.md)

### play_music

`play_music(music_specification)`

Play a music track for every player on this surface.

#### Parameters

##### music_specification

**Type:** [PlayMusicSpecification](../concepts/PlayMusicSpecification.md)

The track to play.

### play_sound

`play_sound(sound_specification)`

Play a sound for every player on this surface.

The sound is not played if its location is not [charted](../classes/LuaForce.md#chart) for that player.

#### Parameters

##### sound_specification

**Type:** [PlaySoundSpecification](../concepts/PlaySoundSpecification.md)

The sound to play.

### pollute

`pollute(amount, prototype, source)`

Spawn pollution at the given position.

#### Parameters

##### amount

**Type:** [double](../concepts/double.md)

How much pollution to add.

##### prototype

**Type:** [EntityID](../concepts/EntityID.md) · _optional_

The entity prototype to attribute the pollution change to in statistics. If not defined, the pollution change will not show up in statistics.

##### source

**Type:** [MapPosition](../concepts/MapPosition.md)

Where to spawn the pollution.

### print

`print(message, print_settings)`

Print text to the chat console of all players on this surface.

By default, messages that are identical to a message sent in the last 60 ticks are not printed again.

#### Parameters

##### message

**Type:** [LocalisedString](../concepts/LocalisedString.md)

##### print_settings

**Type:** [PrintSettings](../concepts/PrintSettings.md) · _optional_

### regenerate_decorative

`regenerate_decorative(chunks, decoratives)`

Regenerate autoplacement of some decoratives on this surface. This can be used to autoplace newly-added decoratives.

All specified decorative prototypes must be autoplacable. If nothing is given all decoratives are generated on all chunks.

#### Parameters

##### chunks

**Type:** array[[ChunkPosition](../concepts/ChunkPosition.md)] · _optional_

The chunk positions to regenerate the decoratives on. If not given all chunks are regenerated. Note chunks with status < entities are ignored.

##### decoratives

**Type:** [string](../concepts/string.md) ∣ array[[string](../concepts/string.md)] · _optional_

Prototype names of decorative or decoratives to autoplace. When `nil` all decoratives with an autoplace are used.

### regenerate_entity

`regenerate_entity(chunks, entities)`

Regenerate autoplacement of some entities on this surface. This can be used to autoplace newly-added entities.

All specified entity prototypes must be autoplacable. If nothing is given all entities are generated on all chunks.

#### Parameters

##### chunks

**Type:** array[[ChunkPosition](../concepts/ChunkPosition.md)] · _optional_

The chunk positions to regenerate the entities on. If not given all chunks are regenerated. Note chunks with status < entities are ignored.

##### entities

**Type:** [string](../concepts/string.md) ∣ array[[string](../concepts/string.md)] · _optional_

Prototype names of entity or entities to autoplace. When `nil` all entities with an autoplace are used.

### remove_script_area

`remove_script_area(id)`

Removes the given script area.

#### Parameters

##### id

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [boolean](../concepts/boolean.md) — If the area was actually removed. False when it didn't exist.

### remove_script_position

`remove_script_position(id)`

Removes the given script position.

#### Parameters

##### id

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [boolean](../concepts/boolean.md) — If the position was actually removed. False when it didn't exist.

### request_path

`request_path({bounding_box, can_open_gates, collision_mask, entity_to_ignore, force, goal, max_attack_distance, max_gap_size, path_resolution_modifier, pathfind_flags, radius, start})`

Generates a path with the specified constraints (as an array of [PathfinderWaypoints](../concepts/PathfinderWaypoint.md)) using the unit pathfinding algorithm. This path can be used to emulate pathing behavior by script for non-unit entities, such as vehicles. If you want to command actual units (such as biters or spitters) to move, use [LuaCommandable::set_command](../classes/LuaCommandable.md#set-command) via [LuaEntity::commandable](../classes/LuaEntity.md#commandable) instead.

The resulting path is ultimately returned asynchronously via [on_script_path_request_finished](../events/on_script_path_request_finished.md).

#### Parameters

##### bounding_box

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The dimensions of the object that's supposed to travel the path.

##### can_open_gates

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the path request can open gates. Defaults to `false`.

##### collision_mask

**Type:** [CollisionMask](../concepts/CollisionMask.md)

The collision mask the `bounding_box` collides with.

##### entity_to_ignore

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

Makes the pathfinder ignore collisions with this entity if it is given.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force for which to generate the path, determining which gates can be opened for example.

##### goal

**Type:** [MapPosition](../concepts/MapPosition.md)

The position to find a path to.

##### max_attack_distance

**Type:** [double](../concepts/double.md) · _optional_

Defines the maximum allowed distance between the last traversable path waypoint and an obstacle entity to be destroyed. Only used when finding a discontiguous path, i.e. when `max_gap_size` > 0. This field filters out paths that are blocked by obstacles that are outside the entity's attack range. Allowed values are `0` or greater. Defaults to `max_gap_size`.

##### max_gap_size

**Type:** [int32](../concepts/int32.md) · _optional_

Defines the maximum allowed distance between path waypoints. 0 means that paths must be contiguous (as they are for biters). Values greater than 0 will produce paths with "gaps" that are suitable for spiders. Allowed values are from `0` to `31`. Defaults to `0`.

##### path_resolution_modifier

**Type:** [int32](../concepts/int32.md) · _optional_

Defines how coarse the pathfinder's grid is, where smaller values mean a coarser grid. Defaults to `0`, which equals a resolution of `1x1` tiles, centered on tile centers. Values range from `-8` to `8` inclusive, where each integer increment doubles/halves the resolution. So, a resolution of `-8` equals a grid of `256x256` tiles, and a resolution of `8` equals `1/256` of a tile.

##### pathfind_flags

**Type:** [PathfinderFlags](../concepts/PathfinderFlags.md) · _optional_

Flags that affect pathfinder behavior.

##### radius

**Type:** [double](../concepts/double.md) · _optional_

How close the pathfinder needs to get to its `goal` (in tiles). Defaults to `1`.

##### start

**Type:** [MapPosition](../concepts/MapPosition.md)

The position from which to start pathfinding.

#### Return values

- [uint32](../concepts/uint32.md) — A unique handle to identify this call when [on_script_path_request_finished](../events/on_script_path_request_finished.md) fires.

#### Raises

- `on_script_path_request_finished` — 

### request_to_generate_chunks

`request_to_generate_chunks(position, radius)`

Request that the game's map generator generate chunks at the given position for the given radius on this surface. If the radius is `0`, then only the chunk at the given position is generated.

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where to generate the new chunks.

##### radius

**Type:** [uint32](../concepts/uint32.md) · _optional_

The chunk radius from `position` to generate new chunks in. Defaults to `0`.

### set_chunk_generated_status

`set_chunk_generated_status(chunk_position, status)`

Set generated status of a chunk. Useful when copying chunks.

#### Parameters

##### chunk_position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

The chunk's position.

##### status

**Type:** [defines.chunk_generated_status](../defines/defines.md)

The chunk's new status.

### set_default_cover_tile

`set_default_cover_tile(force, from_tile, to_tile)`

Sets the cover tile for the given force and tile on this surface.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

##### from_tile

**Type:** [TileID](../concepts/TileID.md)

##### to_tile

**Type:** [TileID](../concepts/TileID.md) ∣ [nil](../concepts/nil.md)

### set_double_hidden_tile

`set_double_hidden_tile(position, tile)`

Set double hidden tile for the specified position. During normal gameplay, only [non-mineable](../classes/LuaTilePrototype.md#mineable-properties) tiles can become double hidden.

Does nothing if hidden tile at specified position does not exist.

#### Parameters

##### position

**Type:** [TilePosition](../concepts/TilePosition.md)

The tile position.

##### tile

**Type:** [TileID](../concepts/TileID.md) · _optional_

The new double hidden tile or `nil` to clear the double hidden tile.

### set_hidden_tile

`set_hidden_tile(position, tile)`

Set the hidden tile for the specified position. While during normal gameplay only [non-mineable](../classes/LuaTilePrototype.md#mineable-properties) or [foundation](../classes/LuaTilePrototype.md#is-foundation) tiles can become hidden, this method allows any kind of tile to be set as the hidden one.

#### Parameters

##### position

**Type:** [TilePosition](../concepts/TilePosition.md)

The tile position.

##### tile

**Type:** [TileID](../concepts/TileID.md) · _optional_

The new hidden tile or `nil` to clear the hidden tile.

### set_multi_command

`set_multi_command({command, force, unit_count, unit_search_distance})`

Give a command to multiple units. This will automatically select suitable units for the task.

#### Parameters

##### command

**Type:** [Command](../concepts/Command.md)

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

Force of the units this command is to be given to. If not specified, uses the enemy force.

##### unit_count

**Type:** [uint32](../concepts/uint32.md)

Number of units to give the command to.

##### unit_search_distance

**Type:** [uint32](../concepts/uint32.md) · _optional_

Radius to search for units. The search area is centered on the destination of the command. If not specified uses default value of 150.

#### Return values

- [uint32](../concepts/uint32.md) — Number of units actually sent. May be less than `count` if not enough units were available.

### set_pollution

`set_pollution(amount, position)`

Set the pollution for a given position.

Pollution changes by this are not included in pollution statistics and do not affect evolution factors (as opposed to [LuaSurface::pollute](../classes/LuaSurface.md#pollute)).

#### Parameters

##### amount

**Type:** [double](../concepts/double.md)

New amount of pollution to be set on the chunk. Must be >= 0.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position to set the chunk's pollution

### set_property

`set_property(property, value)`

Sets the value of surface property on this surface.

#### Parameters

##### property

**Type:** [SurfacePropertyID](../concepts/SurfacePropertyID.md)

Property to change.

##### value

**Type:** [double](../concepts/double.md)

The wanted value of the property.

### set_territory_for_chunks

`set_territory_for_chunks(chunk_positions, territory)`

Removes the given chunks from their current territories and adds them to the given territory if provided.

This does not affect the [LuaTerritory::get_patrol_path](../classes/LuaTerritory.md#get-patrol-path). It is your responsibility to update the patrol path if needed.

It's recommended that territory chunks are connected to each other, but this is not required.

Territories that do not contain at least one generated chunk as a result of calling this method will be automatically deleted.

#### Parameters

##### chunk_positions

**Type:** array[[ChunkPosition](../concepts/ChunkPosition.md)]

The chunk positions. The chunks at these positions do not need to exist in order to be assigned to a territory.

##### territory

**Type:** [LuaTerritory](../classes/LuaTerritory.md) · _optional_

The territory to associate the chunks with. If not `nil`, the territory must belong to this same surface or else an error will be produced. If `nil`, then the chunks get removed from the territory it is currently associated with and will prevent the map generator from automatically re-generate a new territory for the chunk in the future.

#### Raises

- `on_territory_destroyed` — Raised for each territory that is destroyed as a result of calling this method.

### set_tiles

`set_tiles(correct_tiles, player, raise_event, remove_colliding_decoratives, remove_colliding_entities, tiles, undo_index)`

Set tiles at specified locations. Can automatically correct the edges around modified tiles.

Placing a [mineable](../classes/LuaTilePrototype.md#mineable-properties) tile on top of a non-mineable or [foundation](../classes/LuaTilePrototype.md#is-foundation) one will turn the latter into the [LuaTile::hidden_tile](../classes/LuaTile.md#hidden-tile) for that tile. Placing a mineable non-foundation tile on a mineable non-foundation one or a mineable foundation tile on a mineable foundation one will not modify the hidden tile. This restriction can however be circumvented by using [LuaSurface::set_hidden_tile](../classes/LuaSurface.md#set-hidden-tile). Placing a non-foundation tile on top of a foundation one when there already exists a hidden tile will push hidden tile to [double hidden](../classes/LuaTile.md#double-hidden-tile), and foundation tile will turn into hidden. Placing a mineable foundation tile over a mineable non-foundation tile with hidden mineable foundation tile, the hidden tile will be replaced by previously double hidden tile and double hidden tile will be erased. Placing a non-mineable tile will erase hidden and double hidden tiles.

It is recommended to call this method once for all the tiles you want to change rather than calling it individually for every tile. As the tile correction is used after every step, calling it one by one could cause the tile correction logic to redo some of the changes. Also, many small API calls are generally more performance intensive than one big one.

#### Parameters

##### correct_tiles

**Type:** [boolean](../concepts/boolean.md) · _optional_

If `false`, the correction logic is not applied to the changed tiles. Defaults to `true`.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player whose undo queue to add these actions to.

##### raise_event

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

##### remove_colliding_decoratives

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `true`.

##### remove_colliding_entities

**Type:** [boolean](../concepts/boolean.md) ∣ `"abort_on_collision"` · _optional_

Defaults to `true`.

##### tiles

**Type:** array[[Tile](../concepts/Tile.md)]

##### undo_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index of the undo item to add this action to. An index of `0` creates a new undo item for it. Defaults to putting it into the appropriate undo item automatically if not specified.

#### Raises

- `script_raised_set_tiles` — Raised if the `raise_event` flag was set.

### spill_inventory

`spill_inventory({allow_belts, drop_full_stack, enable_looted, force, inventory, max_radius, position, use_start_position_on_failure})`

Spill inventory on the ground centered at a given location.

#### Parameters

##### allow_belts

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether items can be spilled onto belts. Defaults to `true`.

##### drop_full_stack

**Type:** [boolean](../concepts/boolean.md) · _optional_

If item on ground should be made out of an entire provided stack. Defaults to `false`.

##### enable_looted

**Type:** [boolean](../concepts/boolean.md) · _optional_

When true, each created item will be flagged with the [LuaEntity::to_be_looted](../classes/LuaEntity.md#to-be-looted) flag. Defaults to `false`.

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

When provided (and not `nil`) the items will be marked for deconstruction by this force.

##### inventory

**Type:** [LuaInventory](../classes/LuaInventory.md)

Inventory to spill

##### max_radius

**Type:** [double](../concepts/double.md) · _optional_

Max radius from the specified `position` to spill items.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Center of the spillage

##### use_start_position_on_failure

**Type:** [boolean](../concepts/boolean.md) · _optional_

Allow spilling items at `position` if no non-colliding position is found. Note: Setting to false might cause some items not to be spilled. Defaults to `true`.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)] — The created item-on-ground entities.

### spill_item_stack

`spill_item_stack({allow_belts, drop_full_stack, enable_looted, force, max_radius, position, stack, use_start_position_on_failure})`

Spill items on the ground centered at a given location.

#### Parameters

##### allow_belts

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether items can be spilled onto belts. Defaults to `true`.

##### drop_full_stack

**Type:** [boolean](../concepts/boolean.md) · _optional_

If item on ground should be made out of an entire provided stack. Defaults to `false`.

##### enable_looted

**Type:** [boolean](../concepts/boolean.md) · _optional_

When true, each created item will be flagged with the [LuaEntity::to_be_looted](../classes/LuaEntity.md#to-be-looted) flag. Defaults to `false`.

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

When provided (and not `nil`) the items will be marked for deconstruction by this force.

##### max_radius

**Type:** [double](../concepts/double.md) · _optional_

Max radius from the specified `position` to spill items.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Center of the spillage

##### stack

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

Stack of items to spill

##### use_start_position_on_failure

**Type:** [boolean](../concepts/boolean.md) · _optional_

Allow spilling items at `position` if no non-colliding position is found. Note: Setting to false might cause some items not to be spilled. Defaults to `true`.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)] — The created item-on-ground entities.

### upgrade_area

`upgrade_area({area, force, item, player, skip_fog_of_war})`

Place an upgrade request.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The area to mark for upgrade.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force whose bots should perform the upgrade.

##### item

**Type:** [LuaItemStack](../classes/LuaItemStack.md)

The upgrade item to use.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to set the last_user to if any.

##### skip_fog_of_war

**Type:** [boolean](../concepts/boolean.md) · _optional_

If chunks covered by fog-of-war are skipped.

#### Raises

- `on_marked_for_upgrade` — Raised for every entity that has been successfully marked for upgrade.
