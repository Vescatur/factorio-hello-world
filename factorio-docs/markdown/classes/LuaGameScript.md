# LuaGameScript

_class_

Main toplevel type, provides access to most of the API though its members. An instance of LuaGameScript is available as the global object named `game`.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [allow_debug_settings](#allow-debug-settings) | [boolean](../concepts/boolean.md) |  |
| [allow_tip_activation](#allow-tip-activation) | [boolean](../concepts/boolean.md) |  |
| [autosave_enabled](#autosave-enabled) | [boolean](../concepts/boolean.md) |  |
| [backer_names](#backer-names) | LuaCustomTable[[uint32](../concepts/uint32.md) → [string](../concepts/string.md)] |  |
| [blueprints](#blueprints) | array[[LuaRecord](../classes/LuaRecord.md)] |  |
| [connected_players](#connected-players) | array[[LuaPlayer](../classes/LuaPlayer.md)] |  |
| [console_command_used](#console-command-used) | [boolean](../concepts/boolean.md) |  |
| [default_map_gen_settings](#default-map-gen-settings) | [MapGenSettings](../concepts/MapGenSettings.md) |  |
| [difficulty](#difficulty) | [defines.difficulty](../defines/defines.md) |  |
| [difficulty_settings](#difficulty-settings) | [DifficultySettings](../concepts/DifficultySettings.md) |  |
| [draw_resource_selection](#draw-resource-selection) | [boolean](../concepts/boolean.md) |  |
| [enemy_has_vision_on_land_mines](#enemy-has-vision-on-land-mines) | [boolean](../concepts/boolean.md) |  |
| [finished](#finished) | [boolean](../concepts/boolean.md) |  |
| [finished_but_continuing](#finished-but-continuing) | [boolean](../concepts/boolean.md) |  |
| [forces](#forces) | LuaCustomTable[[uint32](../concepts/uint32.md) ∣ [string](../concepts/string.md) → [LuaForce](../classes/LuaForce.md)] |  |
| [map_settings](#map-settings) | [MapSettings](../concepts/MapSettings.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [permissions](#permissions) | [LuaPermissionGroups](../classes/LuaPermissionGroups.md) |  |
| [planets](#planets) | LuaCustomTable[[string](../concepts/string.md) → [LuaPlanet](../classes/LuaPlanet.md)] |  |
| [player](#player) | [LuaPlayer](../classes/LuaPlayer.md) | yes |
| [players](#players) | LuaCustomTable[[uint32](../concepts/uint32.md) ∣ [string](../concepts/string.md) → [LuaPlayer](../classes/LuaPlayer.md)] |  |
| [simulation](#simulation) | [LuaSimulation](../classes/LuaSimulation.md) |  |
| [speed](#speed) | [float](../concepts/float.md) |  |
| [surfaces](#surfaces) | LuaCustomTable[[uint32](../concepts/uint32.md) ∣ [string](../concepts/string.md) → [LuaSurface](../classes/LuaSurface.md)] |  |
| [technology_notifications_enabled](#technology-notifications-enabled) | [boolean](../concepts/boolean.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [tick_paused](#tick-paused) | [boolean](../concepts/boolean.md) |  |
| [ticks_played](#ticks-played) | [MapTick](../concepts/MapTick.md) |  |
| [ticks_to_run](#ticks-to-run) | [uint32](../concepts/uint32.md) |  |
| [train_manager](#train-manager) | [LuaTrainManager](../classes/LuaTrainManager.md) |  |

### allow_debug_settings

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether players who are not [admins](../classes/LuaPlayer.md#admin) can access all debug settings. Set this to false to disallow access to most debug settings for non-admins.

The following debug settings are always available to all players: `"show-fps"`, `"show-playtime"`, `"show-clock"`, `"show-time-to-next-autosave"`, `"show-detailed-info"`, `"show-time-usage"`, `"show-entity-time-usage"`, `"show-gpu-time-usage"`, `"show-sprite-counts"`, `"show-particle-counts"`, `"show-collector-navmesh-time-usage"`, `"show-lua-object-statistics"`, `"show-heat-buffer-info"`, `"show-multiplayer-ups"`, `"show-multiplayer-waiting-icon"`, `"show-multiplayer-statistics"`, `"show-multiplayer-server-name"`, `"show-debug-info-in-tooltips"`, `"show-resistances-in-tooltips-always"`, `"hide-mod-guis"`, `"show-tile-grid"`, `"show-blueprint-grid"`, `"show-intermediate-volume-of-working-sounds"`, `"show-decorative-names"`, `"allow-increased-zoom"`, `"show-train-no-path-details"`, `"show-entity-tick"`, `"show-update-tick"`

### allow_tip_activation

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If the tips are allowed to be activated in this scenario, it is false by default.

Can't be modified in a simulation (menu screen, tips and tricks simulation, factoriopedia simulation etc.)

### autosave_enabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

True by default. Can be used to disable autosaving. Make sure to turn it back on soon after.

### backer_names

**Read:** LuaCustomTable[[uint32](../concepts/uint32.md) → [string](../concepts/string.md)] · _read-only_

Array of the names of all the backers that supported the game development early on. These are used as names for labs, locomotives, radars, roboports, and train stops.

### blueprints

**Read:** array[[LuaRecord](../classes/LuaRecord.md)] · _read-only_

Records contained in the "game blueprints" tab of the blueprint library.

### connected_players

**Read:** array[[LuaPlayer](../classes/LuaPlayer.md)] · _read-only_

The players that are currently online.

This does *not* index using player index. See [LuaPlayer::index](../classes/LuaPlayer.md#index) on each player instance for the player index. This is primarily useful when you want to do some action against all online players.

### console_command_used

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether a console command has been used.

### default_map_gen_settings

**Read:** [MapGenSettings](../concepts/MapGenSettings.md) · _read-only_

The default map gen settings for this save.

### difficulty

**Read:** [defines.difficulty](../defines/defines.md) · _read-only_

Current scenario difficulty.

### difficulty_settings

**Read:** [DifficultySettings](../concepts/DifficultySettings.md) · _read-only_

The currently active set of difficulty settings. Even though this property is marked as read-only, the members of the dictionary that is returned can be modified mid-game.

**Example:**

```
-- This will set the technology price multiplier to 12.
game.difficulty_settings.technology_price_multiplier = 12
```

### draw_resource_selection

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

True by default. Can be used to disable the highlighting of resource patches when they are hovered on the map.

### enemy_has_vision_on_land_mines

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Determines if enemy land mines are completely invisible or not.

### finished

**Read:** [boolean](../concepts/boolean.md) · _read-only_

True while the victory screen is shown.

### finished_but_continuing

**Read:** [boolean](../concepts/boolean.md) · _read-only_

True after players finished the game and clicked "continue".

### forces

**Read:** LuaCustomTable[[uint32](../concepts/uint32.md) ∣ [string](../concepts/string.md) → [LuaForce](../classes/LuaForce.md)] · _read-only_

Get a table of all the forces that currently exist. This sparse table allows you to find forces by indexing it with either their `name` or `index`. Iterating this table with `pairs()` will provide the `name`s as the keys. Iterating with `ipairs()` will not work at all.

### map_settings

**Read:** [MapSettings](../concepts/MapSettings.md) · _read-only_

The currently active set of map settings. Even though this property is marked as read-only, the members of the dictionary that is returned can be modified mid-game.

This does not contain difficulty settings, use [LuaGameScript::difficulty_settings](../classes/LuaGameScript.md#difficulty-settings) instead.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### permissions

**Read:** [LuaPermissionGroups](../classes/LuaPermissionGroups.md) · _read-only_

### planets

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaPlanet](../classes/LuaPlanet.md)] · _read-only_

### player

**Read:** [LuaPlayer](../classes/LuaPlayer.md) · _read-only_ · _optional_

This property is only populated inside [custom command](../classes/LuaCommandProcessor.md) handlers and when writing [Lua console commands](https://wiki.factorio.com/Console#Scripting_and_cheat_commands). Returns the player that is typing the command, `nil` in all other instances.

See [LuaGameScript::players](../classes/LuaGameScript.md#players) for accessing all players.

### players

**Read:** LuaCustomTable[[uint32](../concepts/uint32.md) ∣ [string](../concepts/string.md) → [LuaPlayer](../classes/LuaPlayer.md)] · _read-only_

Get a table of all the players that currently exist. This sparse table allows you to find players by indexing it with either their `name` or `index`. Iterating this table with `pairs()` will provide the `index`es as the keys. Iterating with `ipairs()` will not work at all.

If only a single player is required, [LuaGameScript::get_player](../classes/LuaGameScript.md#get-player) should be used instead, as it avoids the unnecessary overhead of passing the whole table to Lua.

### simulation

**Read:** [LuaSimulation](../classes/LuaSimulation.md) · _read-only_

Simulation-related functions, or `nil` if the current game is not a simulation.

### speed

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

Speed to update the map at. 1.0 is normal speed -- 60 UPS. Minimum value is 0.01.

### surfaces

**Read:** LuaCustomTable[[uint32](../concepts/uint32.md) ∣ [string](../concepts/string.md) → [LuaSurface](../classes/LuaSurface.md)] · _read-only_

Get a table of all the surfaces that currently exist. This sparse table allows you to find surfaces by indexing it with either their `name` or `index`. Iterating this table with `pairs()` will provide the `name`s as the keys. Iterating with `ipairs()` will not work at all.

### technology_notifications_enabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

True by default. Can be used to prevent the game engine from printing certain messages.

Prevented messages:

- "player-started-research"
- "player-queued-research"
- "player-cancelled-research"
- "technology-researched"

### tick

**Read:** [MapTick](../concepts/MapTick.md) · _read-only_

Current map tick.

### tick_paused

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If the tick has been paused. This means that entity update has been paused.

### ticks_played

**Read:** [MapTick](../concepts/MapTick.md) · _read-only_

The number of ticks since this game was created using either "new game" or "new game from scenario". Notably, this number progresses even when the game is [tick_paused](../classes/LuaGameScript.md#tick-paused).

This differs from [LuaGameScript::tick](../classes/LuaGameScript.md#tick) in that creating a game from a scenario always starts with this value at `0`, even if the scenario has its own level data where the `tick` has progressed past `0`.

### ticks_to_run

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The number of ticks to be run while the tick is paused.

When [LuaGameScript::tick_paused](../classes/LuaGameScript.md#tick-paused) is true, ticks_to_run behaves the following way: While this is > 0, the entity update is running normally and this value is decremented every tick. When this reaches 0, the game will pause again.

### train_manager

**Read:** [LuaTrainManager](../classes/LuaTrainManager.md) · _read-only_

## Methods

| Method | Summary |
| --- | --- |
| [auto_save](#auto-save) | Instruct the game to perform an auto-save. |
| [ban_player](#ban-player) | Bans the given player from this multiplayer game. Does nothing if this is a single player game of if the player running this isn't an admin. |
| [check_consistency](#check-consistency) | Run internal consistency checks. Allegedly prints any errors it finds. |
| [create_force](#create-force) | Create a new force. |
| [create_inventory](#create-inventory) | Creates an inventory that is not owned by any game object. |
| [create_random_generator](#create-random-generator) | Creates a deterministic standalone random generator with the given seed or if a seed is not provided the initial map seed is used. |
| [create_surface](#create-surface) | Create a new surface. |
| [delete_blueprint_library](#delete-blueprint-library) | Deletes the blueprint library of the given player. |
| [delete_surface](#delete-surface) | Deletes the given surface and all entities on it if possible. |
| [disable_replay](#disable-replay) | Disables replay saving for the current save file. Once done there's no way to re-enable replay saving for the save file without loading an old save. |
| [force_crc](#force-crc) | Force a CRC check. Tells all peers to calculate their current CRC, which are then compared to each other. If a mismatch is detected, the game desyncs and some peers are forced to reconnect. |
| [get_entity_by_tag](#get-entity-by-tag) | Gets an entity by its name tag. Entity name tags can also be set in the entity "extra settings" GUI in the map editor. |
| [get_entity_by_unit_number](#get-entity-by-unit-number) | Returns entity with a specified unit number or nil if entity with such number was not found or prototype does not have EntityPrototypeFlags::get-by-unit-number flag set. |
| [get_map_exchange_string](#get-map-exchange-string) | Gets the map exchange string for the map generation settings that were used to create this map. |
| [get_player](#get-player) | Gets the given player or returns `nil` if no player is found. |
| [get_pollution_statistics](#get-pollution-statistics) | The pollution statistics for this the given surface. |
| [get_script_inventories](#get-script-inventories) | Gets the inventories created through LuaGameScript::create_inventory. |
| [get_surface](#get-surface) | Gets the given surface or returns `nil` if no surface is found. |
| [get_vehicles](#get-vehicles) | Returns vehicles in game. |
| [is_demo](#is-demo) | Is this the demo version of Factorio? |
| [is_multiplayer](#is-multiplayer) | Whether the save is loaded as a multiplayer map. |
| [kick_player](#kick-player) | Kicks the given player from this multiplayer game. Does nothing if this is a single player game or if the player running this isn't an admin. |
| [merge_forces](#merge-forces) | Marks two forces to be merged together. All players and entities in the source force will be reassigned to the target force. The source force will then be destroyed. Importantly, this does not merge technologies or bonuses, which are instead retained from the target force. |
| [mute_player](#mute-player) | Mutes the given player. Does nothing if the player running this isn't an admin. |
| [play_music](#play-music) | Play a music track for every player in the game. |
| [play_sound](#play-sound) | Play a sound for every player in the game. |
| [print](#print) | Print text to the chat console all players. |
| [purge_player](#purge-player) | Purges the given players messages from the game. Does nothing if the player running this isn't an admin. |
| [regenerate_entity](#regenerate-entity) | Regenerate autoplacement of some entities on all surfaces. This can be used to autoplace newly-added entities. |
| [reload_mods](#reload-mods) | Forces a reload of all mods. |
| [reload_script](#reload-script) | Forces a reload of the scenario script from the original scenario location. |
| [remove_offline_players](#remove-offline-players) | Remove players who are currently not connected from the map. |
| [reset_game_state](#reset-game-state) | Reset scenario state (game_finished, player_won, etc.). |
| [reset_time_played](#reset-time-played) | Resets the amount of time played for this map. |
| [save_atlas](#save-atlas) | Saves the current configuration of Atlas to a file. This will result in huge file containing all of the game graphics moved to as small space as possible. |
| [server_save](#server-save) | Instruct the server to save the map. Only actually saves when in multiplayer. |
| [set_game_state](#set-game-state) | Set scenario state. Any parameters not provided do not change the current state. |
| [set_lose_ending_info](#set-lose-ending-info) | Set losing ending information for the current scenario. |
| [set_wait_for_screenshots_to_finish](#set-wait-for-screenshots-to-finish) | Forces the screenshot saving system to wait until all queued screenshots have been written to disk. |
| [set_win_ending_info](#set-win-ending-info) | Set winning ending information for the current scenario. |
| [show_message_dialog](#show-message-dialog) | Show an in-game message dialog. |
| [take_screenshot](#take-screenshot) | Take a screenshot of the game and save it to the `script-output` folder, located in the game's [user data directory](https://wiki.factorio.com/User_data_directory). The name of the image file can be specified via the `path` parameter. |
| [take_technology_screenshot](#take-technology-screenshot) | Take a screenshot of the technology screen and save it to the `script-output` folder, located in the game's [user data directory](https://wiki.factorio.com/User_data_directory). The name of the image file can be specified via the `path` parameter. |
| [unban_player](#unban-player) | Unbans the given player from this multiplayer game. Does nothing if this is a single player game of if the player running this isn't an admin. |
| [unmute_player](#unmute-player) | Unmutes the given player. Does nothing if the player running this isn't an admin. |

### auto_save

`auto_save(allow_in_replay, name)`

Instruct the game to perform an auto-save.

Only the server will save in multiplayer. In single player a standard auto-save is triggered.

#### Parameters

##### allow_in_replay

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to save the auto-save even during replay playback. Defaults to `false`

##### name

**Type:** [string](../concepts/string.md) · _optional_

The autosave name if any. Saves will be named _autosave-*name* when provided.

### ban_player

`ban_player(player, reason)`

Bans the given player from this multiplayer game. Does nothing if this is a single player game of if the player running this isn't an admin.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) ∣ [string](../concepts/string.md)

The player to ban.

##### reason

**Type:** [string](../concepts/string.md) · _optional_

The reason given if any.

#### Raises

- `on_console_command` — 
- `on_player_banned` — 

### check_consistency

`check_consistency()`

Run internal consistency checks. Allegedly prints any errors it finds.

Exists mainly for debugging reasons.

### create_force

`create_force(force)`

Create a new force.

The game currently supports a maximum of 64 forces, including the three built-in forces. This means that a maximum of 61 new forces may be created. Force names must be unique.

#### Parameters

##### force

**Type:** [string](../concepts/string.md)

Name of the new force

#### Return values

- [LuaForce](../classes/LuaForce.md) — The force that was just created

#### Raises

- `on_force_created` — 

### create_inventory

`create_inventory(gui_title, size)`

Creates an inventory that is not owned by any game object.

It can be resized later with [LuaInventory::resize](../classes/LuaInventory.md#resize).

Make sure to destroy it when you are done with it using [LuaInventory::destroy](../classes/LuaInventory.md#destroy).

#### Parameters

##### gui_title

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

The title of the GUI that is shown when this inventory is opened.

##### size

**Type:** [uint16](../concepts/uint16.md)

The number of slots the inventory initially has.

#### Return values

- [LuaInventory](../classes/LuaInventory.md)

### create_random_generator

`create_random_generator(seed)`

Creates a deterministic standalone random generator with the given seed or if a seed is not provided the initial map seed is used.

*Make sure* you actually want to use this over math.random(...) as this provides entirely different functionality over math.random(...).

#### Parameters

##### seed

**Type:** [uint32](../concepts/uint32.md) · _optional_

#### Return values

- [LuaRandomGenerator](../classes/LuaRandomGenerator.md)

### create_surface

`create_surface(name, settings)`

Create a new surface.

The game currently supports a maximum of 4 294 967 295 surfaces, including the default surface. Surface names must be unique.

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

Name of the new surface.

##### settings

**Type:** [MapGenSettings](../concepts/MapGenSettings.md) · _optional_

Map generation settings.

#### Return values

- [LuaSurface](../classes/LuaSurface.md) — The surface that was just created.

#### Raises

- `on_surface_created` — 

### delete_blueprint_library

`delete_blueprint_library(player)`

Deletes the blueprint library of the given player.

Note: the player must be offline (disconnected).

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

### delete_surface

`delete_surface(surface)`

Deletes the given surface and all entities on it if possible.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

The surface to be deleted. Currently the primary surface (1, 'nauvis') cannot be deleted.

#### Return values

- [boolean](../concepts/boolean.md) — If the surface was queued to be deleted.

#### Raises

- `on_pre_surface_deleted` — 
- `on_surface_deleted` — 

### disable_replay

`disable_replay()`

Disables replay saving for the current save file. Once done there's no way to re-enable replay saving for the save file without loading an old save.

### force_crc

`force_crc()`

Force a CRC check. Tells all peers to calculate their current CRC, which are then compared to each other. If a mismatch is detected, the game desyncs and some peers are forced to reconnect.

### get_entity_by_tag

`get_entity_by_tag(tag)`

Gets an entity by its [name tag](../classes/LuaEntity.md#name-tag). Entity name tags can also be set in the entity "extra settings" GUI in the map editor.

#### Parameters

##### tag

**Type:** [string](../concepts/string.md)

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_

### get_entity_by_unit_number

`get_entity_by_unit_number(unit_number)`

Returns entity with a specified unit number or nil if entity with such number was not found or prototype does not have [EntityPrototypeFlags::get-by-unit-number](../types/EntityPrototypeFlags.md#get-by-unit-number) flag set.

#### Parameters

##### unit_number

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_

### get_map_exchange_string

`get_map_exchange_string()`

Gets the map exchange string for the map generation settings that were used to create this map.

#### Return values

- [string](../concepts/string.md)

### get_player

`get_player(player)`

Gets the given player or returns `nil` if no player is found.

#### Parameters

##### player

**Type:** [uint32](../concepts/uint32.md) ∣ [string](../concepts/string.md)

The player index or name.

#### Return values

- [LuaPlayer](../classes/LuaPlayer.md) _(optional)_

### get_pollution_statistics

`get_pollution_statistics(surface)`

The pollution statistics for this the given surface.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- [LuaFlowStatistics](../classes/LuaFlowStatistics.md)

### get_script_inventories

`get_script_inventories(mod)`

Gets the inventories created through [LuaGameScript::create_inventory](../classes/LuaGameScript.md#create-inventory).

Inventories created through console commands will be owned by `"core"`.

#### Parameters

##### mod

**Type:** [string](../concepts/string.md) · _optional_

The mod whose inventories to get. If not provided all inventories are returned.

#### Return values

- dictionary[[string](../concepts/string.md) → array[[LuaInventory](../classes/LuaInventory.md)]] — A mapping of mod name to array of inventories owned by that mod.

### get_surface

`get_surface(surface)`

Gets the given surface or returns `nil` if no surface is found.

This is a shortcut for [LuaGameScript::surfaces](../classes/LuaGameScript.md#surfaces).

#### Parameters

##### surface

**Type:** [uint32](../concepts/uint32.md) ∣ [string](../concepts/string.md)

The surface index or name.

#### Return values

- [LuaSurface](../classes/LuaSurface.md) _(optional)_

### get_vehicles

`get_vehicles({force, has_passenger, is_moving, surface, type, unit_number})`

Returns vehicles in game.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

##### has_passenger

**Type:** [boolean](../concepts/boolean.md) · _optional_

##### is_moving

**Type:** [boolean](../concepts/boolean.md) · _optional_

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

##### type

**Type:** [EntityID](../concepts/EntityID.md) ∣ array[[EntityID](../concepts/EntityID.md)] · _optional_

##### unit_number

**Type:** [uint32](../concepts/uint32.md) · _optional_

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### is_demo

`is_demo()`

Is this the demo version of Factorio?

#### Return values

- [boolean](../concepts/boolean.md)

### is_multiplayer

`is_multiplayer()`

Whether the save is loaded as a multiplayer map.

#### Return values

- [boolean](../concepts/boolean.md)

### kick_player

`kick_player(player, reason)`

Kicks the given player from this multiplayer game. Does nothing if this is a single player game or if the player running this isn't an admin.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

The player to kick.

##### reason

**Type:** [string](../concepts/string.md) · _optional_

The reason given if any.

#### Raises

- `on_console_command` — 
- `on_player_kicked` — 

### merge_forces

`merge_forces(destination, source)`

Marks two forces to be merged together. All players and entities in the source force will be reassigned to the target force. The source force will then be destroyed. Importantly, this does not merge technologies or bonuses, which are instead retained from the target force.

The three built-in forces (player, enemy and neutral) can't be destroyed, meaning they can't be used as the source argument to this function.

The source force is not removed until the end of the current tick, or if called during the [on_forces_merging](../events/on_forces_merging.md) or [on_forces_merged](../events/on_forces_merged.md) event, the end of the next tick.

#### Parameters

##### destination

**Type:** [ForceID](../concepts/ForceID.md)

The force to reassign all entities to.

##### source

**Type:** [ForceID](../concepts/ForceID.md)

The force to remove.

#### Raises

- `on_forces_merged` — 
- `on_forces_merging` — 

### mute_player

`mute_player(player)`

Mutes the given player. Does nothing if the player running this isn't an admin.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

The player to mute.

#### Raises

- `on_console_command` — 
- `on_player_muted` — 

### play_music

`play_music(music_specification)`

Play a music track for every player in the game.

#### Parameters

##### music_specification

**Type:** [PlayMusicSpecification](../concepts/PlayMusicSpecification.md)

The track to play.

### play_sound

`play_sound(sound_specification)`

Play a sound for every player in the game.

The sound is not played if its location is not [charted](../classes/LuaForce.md#chart) for that player.

#### Parameters

##### sound_specification

**Type:** [PlaySoundSpecification](../concepts/PlaySoundSpecification.md)

The sound to play.

### print

`print(message, print_settings)`

Print text to the chat console all players.

By default, messages that are identical to a message sent in the last 60 ticks are not printed again.

#### Parameters

##### message

**Type:** [LocalisedString](../concepts/LocalisedString.md)

##### print_settings

**Type:** [PrintSettings](../concepts/PrintSettings.md) · _optional_

### purge_player

`purge_player(player)`

Purges the given players messages from the game. Does nothing if the player running this isn't an admin.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

The player to purge.

#### Raises

- `on_console_command` — 

### regenerate_entity

`regenerate_entity(entities)`

Regenerate autoplacement of some entities on all surfaces. This can be used to autoplace newly-added entities.

All specified entity prototypes must be autoplacable.

#### Parameters

##### entities

**Type:** [string](../concepts/string.md) ∣ array[[string](../concepts/string.md)]

Prototype names of entity or entities to autoplace.

### reload_mods

`reload_mods()`

Forces a reload of all mods.

This will act like saving and loading from the mod(s) perspective.

This will do nothing if run in multiplayer.

This disables the replay if replay is enabled.

### reload_script

`reload_script()`

Forces a reload of the scenario script from the original scenario location.

This disables the replay if replay is enabled.

### remove_offline_players

`remove_offline_players(players)`

Remove players who are currently not connected from the map.

#### Parameters

##### players

**Type:** array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · _optional_

List of players to remove. If not specified, remove all offline players.

#### Raises

- `on_player_removed` — 
- `on_pre_player_removed` — 

### reset_game_state

`reset_game_state()`

Reset scenario state (game_finished, player_won, etc.).

### reset_time_played

`reset_time_played()`

Resets the amount of time played for this map.

### save_atlas

`save_atlas()`

Saves the current configuration of Atlas to a file. This will result in huge file containing all of the game graphics moved to as small space as possible.

Exists mainly for debugging reasons.

### server_save

`server_save(name)`

Instruct the server to save the map. Only actually saves when in multiplayer.

#### Parameters

##### name

**Type:** [string](../concepts/string.md) · _optional_

Save file name. If not specified, the currently running save is overwritten. If there is no current save, no save is made.

### set_game_state

`set_game_state({can_continue, game_finished, next_level, player_won})`

Set scenario state. Any parameters not provided do not change the current state.

#### Parameters

##### can_continue

**Type:** [boolean](../concepts/boolean.md) · _optional_

##### game_finished

**Type:** [boolean](../concepts/boolean.md) · _optional_

##### next_level

**Type:** [string](../concepts/string.md) · _optional_

##### player_won

**Type:** [boolean](../concepts/boolean.md) · _optional_

### set_lose_ending_info

`set_lose_ending_info({bullet_points, final_message, image_path, message, title})`

Set losing ending information for the current scenario.

#### Parameters

##### bullet_points

**Type:** array[[LocalisedString](../concepts/LocalisedString.md)] · _optional_

##### final_message

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

##### image_path

**Type:** [string](../concepts/string.md) · _optional_

##### message

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

##### title

**Type:** [LocalisedString](../concepts/LocalisedString.md)

### set_wait_for_screenshots_to_finish

`set_wait_for_screenshots_to_finish()`

Forces the screenshot saving system to wait until all queued screenshots have been written to disk.

### set_win_ending_info

`set_win_ending_info({bullet_points, final_message, image_path, message, title})`

Set winning ending information for the current scenario.

#### Parameters

##### bullet_points

**Type:** array[[LocalisedString](../concepts/LocalisedString.md)] · _optional_

##### final_message

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

##### image_path

**Type:** [string](../concepts/string.md) · _optional_

##### message

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

##### title

**Type:** [LocalisedString](../concepts/LocalisedString.md)

### show_message_dialog

`show_message_dialog({image, point_to, style, text, wrapper_frame_style})`

Show an in-game message dialog.

Can only be used when the map contains exactly one player.

#### Parameters

##### image

**Type:** [string](../concepts/string.md) · _optional_

Path to an image to show on the dialog

##### point_to

**Type:** [GuiArrowSpecification](../concepts/GuiArrowSpecification.md) · _optional_

If specified, dialog will show an arrow pointing to this place. When not specified, the arrow will point to the player's position. (Use `point_to={type="nowhere"}` to remove the arrow entirely.) The dialog itself will be placed near the arrow's target.

##### style

**Type:** [string](../concepts/string.md) · _optional_

The gui style to use for this speech bubble. Must be of type speech_bubble.

##### text

**Type:** [LocalisedString](../concepts/LocalisedString.md)

What the dialog should say

##### wrapper_frame_style

**Type:** [string](../concepts/string.md) · _optional_

Must be of type flow_style.

### take_screenshot

`take_screenshot({allow_in_replay, anti_alias, by_player, daytime, force_render, hide_clouds, hide_fog, path, player, position, quality, resolution, show_cursor_building_preview, show_entity_info, show_gui, surface, water_tick, zoom})`

Take a screenshot of the game and save it to the `script-output` folder, located in the game's [user data directory](https://wiki.factorio.com/User_data_directory). The name of the image file can be specified via the `path` parameter.

If Factorio is running headless, this function will do nothing.

#### Parameters

##### allow_in_replay

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to save the screenshot even during replay playback. Defaults to `false`.

##### anti_alias

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to render in double resolution and downscale the result (including GUI). Defaults to `false`.

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

If defined, the screenshot will only be taken for this player.

##### daytime

**Type:** [double](../concepts/double.md) · _optional_

Overrides the current surface daytime for the duration of screenshot rendering.

##### force_render

**Type:** [boolean](../concepts/boolean.md) · _optional_

Screenshot requests are processed in between game update and render. The game may skip rendering (ie. drop frames) if the previous frame has not finished rendering or the game simulation starts to fall below 60 updates per second. If `force_render` is set to `true`, the game won't drop frames and process the screenshot request at the end of the update in which the request was created. This is not honored on multiplayer clients that are catching up to server. Defaults to `false`.

##### hide_clouds

**Type:** [boolean](../concepts/boolean.md) · _optional_

If `true` cloud shadows on ground won't be rendered. Defaults to `false`.

##### hide_fog

**Type:** [boolean](../concepts/boolean.md) · _optional_

If `true` fog effect and foreground space dust effect won't be rendered. Defaults to `false`.

##### path

**Type:** [string](../concepts/string.md) · _optional_

The name of the image file. It should include a file extension indicating the desired format. Supports `.png`, `.jpg` /`.jpeg`, `.tga` and `.bmp`. Providing a directory path (ex. `"save/here/screenshot.png"`) will create the necessary folder structure in `script-output`. Defaults to `"screenshot.png"`.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to focus on. Defaults to the local player.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

If defined, the screenshot will be centered on this position. Otherwise, the screenshot will center on `player`.

##### quality

**Type:** [int32](../concepts/int32.md) · _optional_

The `.jpg` render quality as a percentage (from 0% to 100% inclusive), if used. A lower value means a more compressed image. Defaults to `80`.

##### resolution

**Type:** [TilePosition](../concepts/TilePosition.md) · _optional_

The maximum allowed resolution is 16384x16384 (8192x8192 when `anti_alias` is `true`), but the maximum recommended resolution is 4096x4096 (resp. 2048x2048). The `x` value of the position is used as the width, the `y` value as the height.

##### show_cursor_building_preview

**Type:** [boolean](../concepts/boolean.md) · _optional_

When `true` and when `player` is specified, the building preview for the item in the player's cursor will also be rendered. Defaults to `false`.

##### show_entity_info

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to include entity info ("Alt mode") or not. Defaults to `false`.

##### show_gui

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to include GUIs in the screenshot or not. Defaults to `false`.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

If defined, the screenshot will be taken on this surface.

##### water_tick

**Type:** [uint32](../concepts/uint32.md) · _optional_

Overrides the tick of water animation, if animated water is enabled.

##### zoom

**Type:** [double](../concepts/double.md) · _optional_

The map zoom to take the screenshot at. Defaults to `1`.

### take_technology_screenshot

`take_technology_screenshot({allow_in_replay, path, player, quality, selected_technology, skip_disabled})`

Take a screenshot of the technology screen and save it to the `script-output` folder, located in the game's [user data directory](https://wiki.factorio.com/User_data_directory). The name of the image file can be specified via the `path` parameter.

#### Parameters

##### allow_in_replay

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to save the screenshot even during replay playback. Defaults to `false`.

##### path

**Type:** [string](../concepts/string.md) · _optional_

The name of the image file. It should include a file extension indicating the desired format. Supports `.png`, `.jpg` /`.jpeg`, `.tga` and `.bmp`. Providing a directory path (ex. `"save/here/screenshot.png"`) will create the necessary folder structure in `script-output`. Defaults to `"technology-screenshot.png"`.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

The screenshot will be taken for this player.

##### quality

**Type:** [int32](../concepts/int32.md) · _optional_

The `.jpg` render quality as a percentage (from 0% to 100% inclusive), if used. A lower value means a more compressed image. Defaults to `80`.

##### selected_technology

**Type:** [TechnologyID](../concepts/TechnologyID.md) · _optional_

The technology to highlight.

##### skip_disabled

**Type:** [boolean](../concepts/boolean.md) · _optional_

If `true`, disabled technologies will be skipped. Their successors will be attached to the disabled technology's parents. Defaults to `false`.

### unban_player

`unban_player(player)`

Unbans the given player from this multiplayer game. Does nothing if this is a single player game of if the player running this isn't an admin.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) ∣ [string](../concepts/string.md)

The player to unban.

#### Raises

- `on_console_command` — 
- `on_player_unbanned` — 

### unmute_player

`unmute_player(player)`

Unmutes the given player. Does nothing if the player running this isn't an admin.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

The player to unmute.

#### Raises

- `on_console_command` — 
- `on_player_unmuted` —
