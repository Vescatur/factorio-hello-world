# LuaPlayer

_class_

**Inherits from:** [LuaControl](../classes/LuaControl.md)

A player in the game. Pay attention that a player may or may not have a character, which is the [LuaEntity](../classes/LuaEntity.md) of the little guy running around the world doing things.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [admin](#admin) | [boolean](../concepts/boolean.md) |  |
| [afk_time](#afk-time) | [uint32](../concepts/uint32.md) |  |
| [auto_sort_main_inventory](#auto-sort-main-inventory) | [boolean](../concepts/boolean.md) |  |
| [blueprint_to_setup](#blueprint-to-setup) | [LuaItemStack](../classes/LuaItemStack.md) |  |
| [blueprints](#blueprints) | array[[LuaRecord](../classes/LuaRecord.md)] |  |
| [centered_on](#centered-on) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [character](#character) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [chat_color](#chat-color) | [Color](../concepts/Color.md) |  |
| [color](#color) | [Color](../concepts/Color.md) |  |
| [connected](#connected) | [boolean](../concepts/boolean.md) |  |
| [controller_type](#controller-type) | [defines.controllers](../defines/defines.md) |  |
| [current_music](#current-music) | [string](../concepts/string.md) |  |
| [cursor_stack_temporary](#cursor-stack-temporary) | [boolean](../concepts/boolean.md) |  |
| [cutscene_character](#cutscene-character) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [disable_space_map](#disable-space-map) | [boolean](../concepts/boolean.md) |  |
| [display_density_scale](#display-density-scale) | [double](../concepts/double.md) |  |
| [display_resolution](#display-resolution) | [DisplayResolution](../concepts/DisplayResolution.md) |  |
| [display_scale](#display-scale) | [double](../concepts/double.md) |  |
| [drag_target](#drag-target) | [DragTarget](../concepts/DragTarget.md) | yes |
| [editor_settings](#editor-settings) | [MapEditorSetting](../concepts/MapEditorSetting.md) | yes |
| [entity_copy_source](#entity-copy-source) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [game_view_settings](#game-view-settings) | [GameViewSettings](../concepts/GameViewSettings.md) |  |
| [gui](#gui) | [LuaGui](../classes/LuaGui.md) |  |
| [hand_location](#hand-location) | [ItemStackLocation](../concepts/ItemStackLocation.md) | yes |
| [hide_locked_prototypes_in_factoriopedia](#hide-locked-prototypes-in-factoriopedia) | [boolean](../concepts/boolean.md) |  |
| [index](#index) | [uint32](../concepts/uint32.md) |  |
| [infinity_inventory_filters](#infinity-inventory-filters) | array[[InfinityInventoryFilter](../concepts/InfinityInventoryFilter.md)] |  |
| [input_method](#input-method) | [defines.input_method](../defines/defines.md) |  |
| [last_online](#last-online) | [uint32](../concepts/uint32.md) |  |
| [locale](#locale) | [string](../concepts/string.md) |  |
| [map_view_settings](#map-view-settings) | [MapViewSettings](../concepts/MapViewSettings.md) |  |
| [minimap_enabled](#minimap-enabled) | [boolean](../concepts/boolean.md) |  |
| [mod_settings](#mod-settings) | LuaCustomTable[[string](../concepts/string.md) → [ModSetting](../concepts/ModSetting.md)] |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [online_time](#online-time) | [uint32](../concepts/uint32.md) |  |
| [opened_self](#opened-self) | [boolean](../concepts/boolean.md) |  |
| [permission_group](#permission-group) | [LuaPermissionGroup](../classes/LuaPermissionGroup.md) | yes |
| [physical_controller_type](#physical-controller-type) | [defines.controllers](../defines/defines.md) |  |
| [physical_position](#physical-position) | [MapPosition](../concepts/MapPosition.md) |  |
| [physical_surface](#physical-surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [physical_surface_index](#physical-surface-index) | [uint32](../concepts/uint32.md) |  |
| [physical_vehicle](#physical-vehicle) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [quick_bar_width](#quick-bar-width) | [uint8](../concepts/uint8.md) |  |
| [remove_unfiltered_items](#remove-unfiltered-items) | [boolean](../concepts/boolean.md) |  |
| [render_mode](#render-mode) | [defines.render_mode](../defines/defines.md) |  |
| [respawn_quality](#respawn-quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [saved_logistic_filters](#saved-logistic-filters) | [SavedLogisticFilters](../concepts/SavedLogisticFilters.md) |  |
| [show_on_map](#show-on-map) | [boolean](../concepts/boolean.md) |  |
| [spectator](#spectator) | [boolean](../concepts/boolean.md) |  |
| [spidertron_remote_selection](#spidertron-remote-selection) | array[[LuaEntity](../classes/LuaEntity.md)] | yes |
| [stashed_controller_type](#stashed-controller-type) | [defines.controllers](../defines/defines.md) | yes |
| [tag](#tag) | [string](../concepts/string.md) |  |
| [ticks_to_respawn](#ticks-to-respawn) | [uint32](../concepts/uint32.md) | yes |
| [toggle_menu_leaves_remote_view](#toggle-menu-leaves-remote-view) | [boolean](../concepts/boolean.md) |  |
| [undo_redo_stack](#undo-redo-stack) | [LuaUndoRedoStack](../classes/LuaUndoRedoStack.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [zoom](#zoom) | [double](../concepts/double.md) |  |
| [zoom_limits](#zoom-limits) | [ZoomLimits](../concepts/ZoomLimits.md) |  |

### admin

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the player is an admin.

Trying to change player admin status from the console when you aren't an admin does nothing.

### afk_time

**Read:** [uint32](../concepts/uint32.md) · _read-only_

How many ticks since the last action of this player.

### auto_sort_main_inventory

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If the main inventory will be auto sorted.

### blueprint_to_setup

**Read:** [LuaItemStack](../classes/LuaItemStack.md) · _read-only_

The item stack containing a blueprint to be setup.

### blueprints

**Read:** array[[LuaRecord](../classes/LuaRecord.md)] · _read-only_

Records contained in the player's blueprint library.

### centered_on

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity being centered on in remote view.

When writing, the player will be switched to remote view (if not already in it) and centered on the given entity.

### character

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The character attached to this player, if any. Returns `nil` when the player is disconnected (see [LuaPlayer::connected](../classes/LuaPlayer.md#connected)).

### chat_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

The color used when this player talks in game.

### color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

The color associated with the player. This will be used to tint the player's character as well as their buildings and vehicles.

### connected

**Read:** [boolean](../concepts/boolean.md) · _read-only_

`true` if the player is currently connected to the game.

### controller_type

**Read:** [defines.controllers](../defines/defines.md) · _read-only_

### current_music

**Read:** [string](../concepts/string.md) · _read-only_

The name of an ambient sound (music) the player is currently listening to.

If music is not playing, returns an empty string.

If the player is disconnected, returns the last played ambient sound.

### cursor_stack_temporary

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Returns true if the current item stack in cursor will be destroyed after clearing the cursor. Manually putting it into inventory still preserves the item. If the cursor stack is not one of the supported types (blueprint, blueprint-book, deconstruction-planner, upgrade-planner), write operation will be silently ignored.

### cutscene_character

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

When in a cutscene; the character this player would be using once the cutscene is over, if any. Returns `nil` when the player is disconnected (see [LuaPlayer::connected](../classes/LuaPlayer.md#connected)).

### disable_space_map

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Set to `true` to disallow opening the space map and hide the space map button.

### display_density_scale

**Read:** [double](../concepts/double.md) · _read-only_

The display density scale for this player. The display density scale is the factor of [LuaPlayer::display_scale](../classes/LuaPlayer.md#display-scale) that is determined by the physical DPI of the screen that Factorio is running on. In most cases, the default value is 1. If the player is playing on a high-density display, this value may be 2 or greater.

During [on_player_created](../events/on_player_created.md), this attribute will always return a scale of `1`. To get the actual scale, listen to the [on_player_display_density_scale_changed](../events/on_player_display_density_scale_changed.md) event raised shortly afterwards.

### display_resolution

**Read:** [DisplayResolution](../concepts/DisplayResolution.md) · _read-only_

The display resolution for this player.

During [on_player_created](../events/on_player_created.md), this attribute will always return a resolution of `{width=1920, height=1080}`. To get the actual resolution, listen to the [on_player_display_resolution_changed](../events/on_player_display_resolution_changed.md) event raised shortly afterwards.

### display_scale

**Read:** [double](../concepts/double.md) · _read-only_

The display scale for this player.

During [on_player_created](../events/on_player_created.md), this attribute will always return a scale of `1`. To get the actual scale, listen to the [on_player_display_scale_changed](../events/on_player_display_scale_changed.md) event raised shortly afterwards.

### drag_target

**Read:** [DragTarget](../concepts/DragTarget.md) · _read-only_ · _optional_

The wire drag target for this player, if any.

### editor_settings

**Read:** [MapEditorSetting](../concepts/MapEditorSetting.md) · **Write:** [MapEditorSetting](../concepts/MapEditorSetting.md) · _optional_

The map editor settings if the map editor exists for this player.

When reading this may return nil if the map editor does not yet exist for this player.

When writing the full table of settings is always required.

### entity_copy_source

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The source entity used during entity settings copy-paste, if any.

### game_view_settings

**Read:** [GameViewSettings](../concepts/GameViewSettings.md) · **Write:** [GameViewSettings](../concepts/GameViewSettings.md)

The player's game view settings.

### gui

**Read:** [LuaGui](../classes/LuaGui.md) · _read-only_

### hand_location

**Read:** [ItemStackLocation](../concepts/ItemStackLocation.md) · **Write:** [ItemStackLocation](../concepts/ItemStackLocation.md) · _optional_

The original location of the item in the cursor, marked with a hand. `nil` if the cursor stack is empty. When writing, the specified inventory slot must be empty and the cursor stack must not be empty.

### hide_locked_prototypes_in_factoriopedia

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Set to `true` to hide prototypes in Factoriopedia if they aren't unlocked yet.

### index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

This player's index in [LuaGameScript::players](../classes/LuaGameScript.md#players) (unique ID). It is assigned when a player is created, and remains so (even when the player is not [connected](../classes/LuaPlayer.md#connected)) until the player is irreversibly [removed](../events/on_player_removed.md). Indexes of removed players can be reused.

### infinity_inventory_filters

**Read:** array[[InfinityInventoryFilter](../concepts/InfinityInventoryFilter.md)] · **Write:** array[[InfinityInventoryFilter](../concepts/InfinityInventoryFilter.md)]

The filters for this map editor infinity inventory settings.

### input_method

**Read:** [defines.input_method](../defines/defines.md) · _read-only_

The input method of the player, mouse and keyboard or game controller

### last_online

**Read:** [uint32](../concepts/uint32.md) · _read-only_

At what tick this player was last online.

### locale

**Read:** [string](../concepts/string.md) · _read-only_

The active locale for this player.

During [on_player_created](../events/on_player_created.md), this attribute will be `en`. To get the actual value, listen to the [on_player_locale_changed](../events/on_player_locale_changed.md) event raised shortly afterwards.

### map_view_settings

**Write:** [MapViewSettings](../concepts/MapViewSettings.md)

The player's map view settings. To write to this, use a table containing the fields that should be changed.

### minimap_enabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the minimap is visible.

### mod_settings

**Read:** LuaCustomTable[[string](../concepts/string.md) → [ModSetting](../concepts/ModSetting.md)] · _read-only_

The current per-player settings for the this player, indexed by prototype name. Returns the same structure as [LuaSettings::get_player_settings](../classes/LuaSettings.md#get-player-settings). This table becomes invalid if its associated player does.

Even though this attribute is marked as read-only, individual settings can be changed by overwriting their [ModSetting](../concepts/ModSetting.md) table. Mods can only change their own settings. Using the in-game console, all player settings can be changed.

**Example:**

```
-- Change the value of the "active_lifestyle" setting
player.mod_settings["active_lifestyle"] = {value = true}
```

### name

**Read:** [string](../concepts/string.md) · _read-only_

The player's username.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### online_time

**Read:** [uint32](../concepts/uint32.md) · _read-only_

How many ticks did this player spend playing this save (all sessions combined).

### opened_self

**Read:** [boolean](../concepts/boolean.md) · _read-only_

`true` if the player opened itself. I.e. if they opened the character or god-controller GUI.

### permission_group

**Read:** [LuaPermissionGroup](../classes/LuaPermissionGroup.md) · **Write:** [LuaPermissionGroup](../classes/LuaPermissionGroup.md) · _optional_

The permission group this player is part of, if any.

### physical_controller_type

**Read:** [defines.controllers](../defines/defines.md) · _read-only_

The player's "physical" controller. When a player is in the remote controller, this specifies the controller they will return to. When the player is not in the remote controller, this is equivalent to [LuaPlayer::controller_type](../classes/LuaPlayer.md#controller-type).

### physical_position

**Read:** [MapPosition](../concepts/MapPosition.md) · _read-only_

The current position of this player's physical controller.

### physical_surface

**Read:** [LuaSurface](../classes/LuaSurface.md) · _read-only_

The surface this player's physical controller is on.

### physical_surface_index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Unique ID associated with the surface this player's physical controller is currently on.

### physical_vehicle

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The current vehicle of this player's physical controller.

### quick_bar_width

**Read:** [uint8](../concepts/uint8.md) · _read-only_

Amount of slots one row(page) of quickbar has.

### remove_unfiltered_items

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If items not included in this map editor infinity inventory filters should be removed.

### render_mode

**Read:** [defines.render_mode](../defines/defines.md) · _read-only_

The render mode of the player, like map or zoom to world.

### respawn_quality

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · **Write:** [QualityID](../concepts/QualityID.md) · _optional_

The quality used when this player respawns.

This can be set at any time however it is best to set it during the [defines.events.on_player_died](../defines/defines.md) event.

### saved_logistic_filters

**Read:** [SavedLogisticFilters](../concepts/SavedLogisticFilters.md) · **Write:** [SavedLogisticFilters](../concepts/SavedLogisticFilters.md)

The filters that will be applied when this player respawns. These only have meaning if the player is actively waiting to respawn.

### show_on_map

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If `true`, circle and name of given player is rendered on the map/chart.

### spectator

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If `true`, zoom-to-world noise effect will be disabled and environmental sounds will be based on zoom-to-world view instead of position of player's character.

### spidertron_remote_selection

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · **Write:** array[[LuaEntity](../classes/LuaEntity.md)] · _optional_

All SpiderVehicles currently selected by the player, if they are holding a spidertron remote.

### stashed_controller_type

**Read:** [defines.controllers](../defines/defines.md) · _read-only_ · _optional_

The stashed controller type, if any. This is mainly useful when a player is in the map editor.

### tag

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The tag that is shown after the player in chat, on the map and above multiplayer selection rectangles.

### ticks_to_respawn

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md) · _optional_

The number of ticks until this player will respawn. `nil` if this player is not waiting to respawn.

Set to `nil` to immediately respawn the player.

Set to any positive value to trigger the respawn state for this player.

### toggle_menu_leaves_remote_view

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Set to `false` to disallow leaving remote view using the toggle menu hotkey.

### undo_redo_stack

**Read:** [LuaUndoRedoStack](../classes/LuaUndoRedoStack.md) · _read-only_

The undo and redo stack for this player.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### zoom

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The current player controller's zoom level. Must be positive. The baseline zoom level is 1. Values greater than 1 will zoom in closer to the world and values between 0 and 1 will zoom out away from the world.

Writing values outside the current zoom limits is always valid, but read values will always be clamped to the range defined by [LuaPlayer::zoom_limits](../classes/LuaPlayer.md#zoom-limits).

### zoom_limits

**Read:** [ZoomLimits](../concepts/ZoomLimits.md) · **Write:** [ZoomLimits](../concepts/ZoomLimits.md)

The player's current controller's zoom limits.

Reading this field creates a copy, so modifying the returned table's fields directly will not alter the player's zoom limits. To change the zoom limits for the player's current controller, set the entire field to the desired [ZoomLimits](../concepts/ZoomLimits.md) table.

Zoom limits are defined and remembered per controller type. If you set the zoom limits of the character controller, then every time the player uses the character controller, it will remember and use the zoom limits previously set. However, other controller types will not use the character controller zoom limits; each controller type must have its zoom limits defined separately.

To set the zoom limits of ANY controller type, not just the currently active one, use [LuaPlayer::set_zoom_limits](../classes/LuaPlayer.md#set-zoom-limits).

**Examples:**

```
-- Lets the player zoom in to 4x the standard zoom level. (3x is the default for most controllers.)
-- Increases the player zoom out level so that they can view approximately 800 tiles across.
-- Sets furthest_game_view to furthest so that all zoom levels are rendered in game view, never chart (map) view.
game.player.zoom_limits = {
  closest = { zoom = 4 },
  furthest = { distance = 800, max_distance = 1000 },
  furthest_game_view = { distance = 800, max_distance = 1000 }
}
```

```
-- Resets the closest and furthest_game_view limits to their defaults.
-- Increases the furthest a player can zoom out to approximately 400 tiles across. There's a hard zoom limit at
-- 800 tiles (either vertically or horizontally, whichever is more).
game.player.zoom_limits = {
  furthest = { distance = 400, max_distance = 800 }
}
```

```
-- Sets the closest that the player can zoom in to 3x (the default for most controllers).
-- Sets the furthest that the player can view in game view to some number GREATER than
-- closest, guaranteeing that the player can only view the chart. However, this does NOT mean that the player
-- can interact with the game as if in remote view if they are not explicitly using remote view.
game.player.zoom_limits = {
  closest = { zoom = 3 },
  furthest_game_view = { zoom = 4 }
}
```

```
-- Save a copy of whatever zoom limits any script has previously set.
local custom_limits = game.player.zoom_limits
-- Resets all zoom limits to default.
game.player.zoom_limits = {}
-- Save a copy of whatever the default zoom limits are for the current controller.
local default_limits = game.player.zoom_limits
-- Set the zoom limits to a modification of the engine-default closest zoom limit (or 6 if the engine-default is
-- not a fixed zoom value), the furthest limit previously defined by script (or the engine default if not
-- previously set by a script), and some arbitrary value for `furthest_game_view`.
game.player.zoom_limits = {
  closest = { zoom = (default_limits.furthest.zoom or 3.0) * 2 },
  furthest = custom_limits.furthest,
  furthest_game_view = { zoom = 0.25 }
}
```

## Methods

| Method | Summary |
| --- | --- |
| [activate_paste](#activate-paste) | Gets a copy of the currently selected blueprint in the clipboard queue into the player's cursor, as if the player activated Paste. |
| [add_alert](#add-alert) | Adds an alert to this player for the given entity of the given alert type. |
| [add_custom_alert](#add-custom-alert) | Adds a custom alert to this player. |
| [add_pin](#add-pin) | Adds a pin to this player for the given pin specification. Either entity, player, or surface and position must be defined. |
| [add_recipe_notification](#add-recipe-notification) | Adds the given recipe to the list of recipe notifications for this player. |
| [add_to_clipboard](#add-to-clipboard) | Adds the given blueprint to this player's clipboard queue. |
| [associate_character](#associate-character) | Associates a character with this player. |
| [build_from_cursor](#build-from-cursor) | Builds whatever is in the cursor on the surface the player is on. The cursor stack will automatically be reduced as if the player built normally. |
| [can_build_from_cursor](#can-build-from-cursor) | Checks if this player can build what ever is in the cursor on the surface the player is on. |
| [clear_console](#clear-console) | Clear the chat console. |
| [clear_cursor](#clear-cursor) | Invokes the "clear cursor" action on the player as if the user pressed it. |
| [clear_inventory_highlights](#clear-inventory-highlights) | Clears the blinking of the inventory based on insertion of items |
| [clear_local_flying_texts](#clear-local-flying-texts) | Clear any active flying texts for this player. |
| [clear_pins](#clear-pins) | Removes all pins from this player. |
| [clear_recipe_notification](#clear-recipe-notification) | Clears the given recipe from the list of recipe notifications for this player. |
| [clear_recipe_notifications](#clear-recipe-notifications) | Clears all recipe notifications for this player. |
| [clear_selection](#clear-selection) | Clears the player's selection tool selection position. |
| [connect_to_server](#connect-to-server) | Asks the player if they would like to connect to the given server. |
| [create_character](#create-character) | Creates and attaches a character entity to this player. |
| [create_local_flying_text](#create-local-flying-text) | Spawn flying text that is only visible to this player. Either `position` or `create_at_cursor` are required. When `create_at_cursor` is `true`, all parameters other than `text` are ignored. |
| [cursor_split](#cursor-split) | Performs the cursor split action on the given inventory at the given index as if the player did it. |
| [cursor_transfer](#cursor-transfer) | Performs the cursor transfer action on the given inventory at the given index as if the player did it. |
| [disable_alert](#disable-alert) | Disables alerts for the given alert category. |
| [disable_recipe_groups](#disable-recipe-groups) | Disable recipe groups. |
| [disable_recipe_subgroups](#disable-recipe-subgroups) | Disable recipe subgroups. |
| [disassociate_character](#disassociate-character) | Disassociates a character from this player. This is functionally the same as setting LuaEntity::associated_player to `nil`. |
| [drag_wire](#drag-wire) | Start/end wire dragging at the specified location, wire type is based on the cursor contents |
| [enable_alert](#enable-alert) | Enables alerts for the given alert category. |
| [enable_recipe_groups](#enable-recipe-groups) | Enable recipe groups. |
| [enable_recipe_subgroups](#enable-recipe-subgroups) | Enable recipe subgroups. |
| [enter_space_platform](#enter-space-platform) | Enters the given space platform if possible. |
| [exit_cutscene](#exit-cutscene) | Exit the current cutscene. Errors if not in a cutscene. |
| [exit_remote_view](#exit-remote-view) | Exit remote view if possible. Exiting will fail if the player is in a rocket or in a platform. |
| [get_active_quick_bar_page](#get-active-quick-bar-page) | Gets which quick bar page is being used for the given screen page or `nil` if not known. |
| [get_alerts](#get-alerts) | Get all alerts matching the given filters, or all alerts if no filters are given. |
| [get_associated_characters](#get-associated-characters) | The characters associated with this player. |
| [get_goal_description](#get-goal-description) | Get the current goal description, as a localised string. |
| [get_infinity_inventory_filter](#get-infinity-inventory-filter) | Gets the filter for this map editor infinity filters at the given index or `nil` if the filter index doesn't exist or is empty. |
| [get_pins](#get-pins) | Gets all of the pins that this player has. |
| [get_quick_bar_slot](#get-quick-bar-slot) | Gets the quick bar filter for the given slot or `nil`. |
| [get_recipe_notifications](#get-recipe-notifications) | Get all recipes that currently have recipe notifications for this player. |
| [is_alert_enabled](#is-alert-enabled) | If the given alert type is currently enabled. |
| [is_alert_muted](#is-alert-muted) | If the given alert type is currently muted. |
| [is_shortcut_available](#is-shortcut-available) | Is a custom Lua shortcut currently available? |
| [is_shortcut_toggled](#is-shortcut-toggled) | Is a custom Lua shortcut currently toggled? |
| [jump_to_cutscene_waypoint](#jump-to-cutscene-waypoint) | Jump to the specified cutscene waypoint. Only works when the player is viewing a cutscene. |
| [land_on_planet](#land-on-planet) | Ejects this player from the current space platform and lands on the current planet. |
| [leave_space_platform](#leave-space-platform) | Ejects this player from the current space platform if in a platform. The player is left on the platform at the position of the hub. |
| [mute_alert](#mute-alert) | Mutes alerts for the given alert category. |
| [pipette](#pipette) | Emulates the player using the "smart pipette" that results in the given id and quality. |
| [play_music](#play-music) | Play a music track for this player. |
| [play_sound](#play-sound) | Play a sound for this player. |
| [print](#print) | Print text to the chat console. |
| [print_entity_statistics](#print-entity-statistics) | Print entity statistics to the player's console. |
| [print_lua_object_statistics](#print-lua-object-statistics) | Print LuaObject counts per mod. |
| [print_robot_jobs](#print-robot-jobs) | Print construction robot job counts to the player's console. |
| [remove_alert](#remove-alert) | Removes all alerts matching the given filters or if an empty filters table is given all alerts are removed. |
| [request_translation](#request-translation) | Requests a translation for the given localised string. The on_string_translated event will be fired with the results. |
| [request_translations](#request-translations) | Requests translation for the given set of localised strings. A on_string_translated event will be fired for each string with the results. |
| [set_active_quick_bar_page](#set-active-quick-bar-page) | Sets which quick bar page is being used for the given screen page. |
| [set_controller](#set-controller) | Set the controller type of the player. |
| [set_ending_screen_data](#set-ending-screen-data) | Setup the screen to be shown when the game is finished. |
| [set_goal_description](#set-goal-description) | Set the text in the goal window (top left). |
| [set_infinity_inventory_filter](#set-infinity-inventory-filter) | Sets the filter for this map editor infinity filters at the given index. |
| [set_quick_bar_slot](#set-quick-bar-slot) | Sets the quick bar filter for the given slot. If a LuaItemStack is provided, the slot will be set to that particular item instance if it has extra data, for example a specific blueprint or spidertron remote. Otherwise, it will be set to all items of that prototype, for example iron plates. |
| [set_shortcut_available](#set-shortcut-available) | Make a custom Lua shortcut available or unavailable. |
| [set_shortcut_toggled](#set-shortcut-toggled) | Toggle or untoggle a custom Lua shortcut |
| [set_zoom_limits](#set-zoom-limits) | Sets the zoom limits for a specific controller type. To reset a controller's zoom limits to default, pass an empty table for `zoom_limits`. |
| [stack_transfers](#stack-transfers) | Performs the given transfer action between the source and target as if the player did the action. |
| [start_selection](#start-selection) | Starts selection with selection tool from the specified position. Does nothing if the player's cursor is not a selection tool. |
| [swap_characters](#swap-characters) | Swaps this player's character with another player's character. |
| [toggle_map_editor](#toggle-map-editor) | Toggles this player into or out of the map editor. Does nothing if this player isn't an admin or if the player doesn't have permission to use the map editor. |
| [unlock_achievement](#unlock-achievement) | Unlock the achievements of the given player. This has any effect only when this is the local player, the achievement isn't unlocked so far and the achievement is of the type "achievement". |
| [unmute_alert](#unmute-alert) | Unmutes alerts for the given alert category. |
| [use_from_cursor](#use-from-cursor) | Uses the current item in the cursor if it's a capsule or does nothing if not. |

### activate_paste

`activate_paste()`

Gets a copy of the currently selected blueprint in the clipboard queue into the player's cursor, as if the player activated Paste.

### add_alert

`add_alert(entity, type)`

Adds an alert to this player for the given entity of the given alert type.

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

##### type

**Type:** [defines.alert_type](../defines/defines.md)

### add_custom_alert

`add_custom_alert(entity, icon, message, show_on_map)`

Adds a custom alert to this player.

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

If the alert is clicked, the map will open at the position of this entity.

##### icon

**Type:** [SignalID](../concepts/SignalID.md)

##### message

**Type:** [LocalisedString](../concepts/LocalisedString.md)

##### show_on_map

**Type:** [boolean](../concepts/boolean.md)

### add_pin

`add_pin({always_visible, chart_tag, entity, label, player, position, preview_distance, resource, surface})`

Adds a pin to this player for the given pin specification. Either entity, player, or surface and position must be defined.

#### Parameters

##### always_visible

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `true`.

##### chart_tag

**Type:** [LuaCustomChartTag](../classes/LuaCustomChartTag.md) · _optional_

The tag to pin.

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity to pin.

##### label

**Type:** [string](../concepts/string.md) · _optional_

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to pin.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

Where to create the pin. Required when surface is defined or resource is defined.

##### preview_distance

**Type:** [uint16](../concepts/uint16.md) · _optional_

Defaults to `16`.

##### resource

**Type:** [EntityID](../concepts/EntityID.md) · _optional_

The resource prototype to add an entire resource patch with.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

The surface to create the pin on. Required when resource is defined.

#### Return values

- [LuaPin](../classes/LuaPin.md)

### add_recipe_notification

`add_recipe_notification(recipe)`

Adds the given recipe to the list of recipe notifications for this player.

#### Parameters

##### recipe

**Type:** [RecipeID](../concepts/RecipeID.md)

Recipe to add.

### add_to_clipboard

`add_to_clipboard(blueprint)`

Adds the given blueprint to this player's clipboard queue.

#### Parameters

##### blueprint

**Type:** [LuaItemStack](../classes/LuaItemStack.md)

The blueprint to add.

### associate_character

`associate_character(character)`

Associates a character with this player.

The character must not be connected to any controller.

If this player is currently disconnected (see [LuaPlayer::connected](../classes/LuaPlayer.md#connected)) the character will be immediately "logged off".

See [LuaPlayer::get_associated_characters](../classes/LuaPlayer.md#get-associated-characters) for more information.

#### Parameters

##### character

**Type:** [LuaEntity](../classes/LuaEntity.md)

The character entity.

### build_from_cursor

`build_from_cursor({build_mode, direction, flip_horizontal, flip_vertical, mirror, position, skip_fog_of_war, terrain_building_size})`

Builds whatever is in the cursor on the surface the player is on. The cursor stack will automatically be reduced as if the player built normally.

#### Parameters

##### build_mode

**Type:** [defines.build_mode](../defines/defines.md) · _optional_

Which build mode should be used instead of normal build. Defaults to `defines.build_mode.normal`.

##### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

Direction the entity would be placed

##### flip_horizontal

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to flip the blueprint horizontally. Defaults to `false`.

##### flip_vertical

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to flip the blueprint vertically. Defaults to `false`.

##### mirror

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to mirror the entity

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where the entity would be placed

##### skip_fog_of_war

**Type:** [boolean](../concepts/boolean.md) · _optional_

If chunks covered by fog-of-war are skipped. Defaults to `false`.

##### terrain_building_size

**Type:** [uint32](../concepts/uint32.md) · _optional_

The size for building terrain if building terrain. Defaults to `2`.

#### Raises

- `on_built_entity` — Raised if the cursor was successfully built.
- `on_pre_build` — Raised if the cursor was successfully built.

### can_build_from_cursor

`can_build_from_cursor({build_mode, direction, flip_horizontal, flip_vertical, position, skip_fog_of_war, terrain_building_size})`

Checks if this player can build what ever is in the cursor on the surface the player is on.

#### Parameters

##### build_mode

**Type:** [defines.build_mode](../defines/defines.md) · _optional_

Which build mode should be used instead of normal build. Defaults to `defines.build_mode.normal`.

##### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

Direction the entity would be placed

##### flip_horizontal

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to flip the blueprint horizontally. Defaults to `false`.

##### flip_vertical

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to flip the blueprint vertically. Defaults to `false`.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where the entity would be placed

##### skip_fog_of_war

**Type:** [boolean](../concepts/boolean.md) · _optional_

If chunks covered by fog-of-war are skipped. Defaults to `false`.

##### terrain_building_size

**Type:** [uint32](../concepts/uint32.md) · _optional_

The size for building terrain if building terrain. Defaults to `2`.

#### Return values

- [boolean](../concepts/boolean.md)

### clear_console

`clear_console()`

Clear the chat console.

### clear_cursor

`clear_cursor()`

Invokes the "clear cursor" action on the player as if the user pressed it.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the cursor is now empty.

#### Raises

- `on_player_cursor_stack_changed` — Raised when the cursor was successfully cleared.

### clear_inventory_highlights

`clear_inventory_highlights()`

Clears the blinking of the inventory based on insertion of items

### clear_local_flying_texts

`clear_local_flying_texts()`

Clear any active flying texts for this player.

### clear_pins

`clear_pins()`

Removes all pins from this player.

### clear_recipe_notification

`clear_recipe_notification(recipe)`

Clears the given recipe from the list of recipe notifications for this player.

#### Parameters

##### recipe

**Type:** [RecipeID](../concepts/RecipeID.md)

Recipe to clear.

### clear_recipe_notifications

`clear_recipe_notifications()`

Clears all recipe notifications for this player.

### clear_selection

`clear_selection()`

Clears the player's selection tool selection position.

### connect_to_server

`connect_to_server({address, description, name, password})`

Asks the player if they would like to connect to the given server.

If the "auto-accept-connect-to-server" interface setting is enabled, the prompt is skipped.

This only does anything when used on a multiplayer peer. Single player and server hosts will ignore the prompt.

#### Parameters

##### address

**Type:** [string](../concepts/string.md)

The server (address:port) if port is not given the default Factorio port is used.

##### description

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

##### name

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

The name of the server.

##### password

**Type:** [string](../concepts/string.md) · _optional_

The password if different from the one used to join this game. Note, if the current password is not empty but the one required to join the new server is an empty string should be given for this field.

### create_character

`create_character(character)`

Creates and attaches a character entity to this player.

The player must not have a character already connected and must be online (see [LuaPlayer::connected](../classes/LuaPlayer.md#connected)).

#### Parameters

##### character

**Type:** [EntityWithQualityID](../concepts/EntityWithQualityID.md) · _optional_

The character to create else the default is used.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the character was created.

### create_local_flying_text

`create_local_flying_text({color, create_at_cursor, position, speed, surface, text, time_to_live})`

Spawn flying text that is only visible to this player. Either `position` or `create_at_cursor` are required. When `create_at_cursor` is `true`, all parameters other than `text` are ignored.

If no custom `speed` is set and the text is longer than 25 characters, its `time_to_live` and `speed` are dynamically adjusted to give the player more time to read it.

Local flying text is not saved, which means it will disappear after a save/load-cycle.

#### Parameters

##### color

**Type:** [Color](../concepts/Color.md) · _optional_

The color of the flying text. Defaults to white text.

##### create_at_cursor

**Type:** [boolean](../concepts/boolean.md) · _optional_

If `true`, the flying text is created at the player's cursor. Defaults to `false`.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

The location on the map at which to show the flying text.

##### speed

**Type:** [double](../concepts/double.md) · _optional_

The speed at which the text rises upwards in tiles/second. Can't be a negative value.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

The surface which this text will be shown on. Defaults to player surface.

##### text

**Type:** [LocalisedString](../concepts/LocalisedString.md)

The flying text to show.

##### time_to_live

**Type:** [uint32](../concepts/uint32.md) · _optional_

The amount of ticks that the flying text will be shown for. Defaults to `80`.

### cursor_split

`cursor_split(index, inventory)`

Performs the cursor split action on the given inventory at the given index as if the player did it.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

##### inventory

**Type:** [LuaInventory](../classes/LuaInventory.md)

#### Return values

- [boolean](../concepts/boolean.md) — If the action succeeded.

### cursor_transfer

`cursor_transfer(index, inventory)`

Performs the cursor transfer action on the given inventory at the given index as if the player did it.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

##### inventory

**Type:** [LuaInventory](../classes/LuaInventory.md)

#### Return values

- [boolean](../concepts/boolean.md) — If the action succeeded.

### disable_alert

`disable_alert(alert_type)`

Disables alerts for the given alert category.

#### Parameters

##### alert_type

**Type:** [defines.alert_type](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the alert type was disabled (false if it was already disabled).

### disable_recipe_groups

`disable_recipe_groups()`

Disable recipe groups.

### disable_recipe_subgroups

`disable_recipe_subgroups()`

Disable recipe subgroups.

### disassociate_character

`disassociate_character(character)`

Disassociates a character from this player. This is functionally the same as setting [LuaEntity::associated_player](../classes/LuaEntity.md#associated-player) to `nil`.

See [LuaPlayer::get_associated_characters](../classes/LuaPlayer.md#get-associated-characters) for more information.

#### Parameters

##### character

**Type:** [LuaEntity](../classes/LuaEntity.md)

The character entity

### drag_wire

`drag_wire({position})`

Start/end wire dragging at the specified location, wire type is based on the cursor contents

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Position at which cursor was clicked. Used only to decide which side of arithmetic combinator, decider combinator or power switch is to be connected. Entity itself to be connected is based on the player's selected entity.

#### Return values

- [boolean](../concepts/boolean.md) — `true` if the action did something

### enable_alert

`enable_alert(alert_type)`

Enables alerts for the given alert category.

#### Parameters

##### alert_type

**Type:** [defines.alert_type](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the alert type was enabled (false if it was already enabled).

### enable_recipe_groups

`enable_recipe_groups()`

Enable recipe groups.

### enable_recipe_subgroups

`enable_recipe_subgroups()`

Enable recipe subgroups.

### enter_space_platform

`enter_space_platform(space_platform)`

Enters the given space platform if possible.

#### Parameters

##### space_platform

**Type:** [LuaSpacePlatform](../classes/LuaSpacePlatform.md)

#### Return values

- [boolean](../concepts/boolean.md) — If the player entered the platform.

### exit_cutscene

`exit_cutscene()`

Exit the current cutscene. Errors if not in a cutscene.

#### Raises

- `on_cutscene_cancelled` — Raised if the cutscene was successfully cancelled.

### exit_remote_view

`exit_remote_view()`

Exit remote view if possible. Exiting will fail if the player is in a rocket or in a platform.

### get_active_quick_bar_page

`get_active_quick_bar_page(index)`

Gets which quick bar page is being used for the given screen page or `nil` if not known.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The screen page. Index 1 is the top row in the gui. Index can go beyond the visible number of bars on the screen to account for the interface config setting change.

#### Return values

- [uint8](../concepts/uint8.md) _(optional)_

### get_alerts

`get_alerts(filter)`

Get all alerts matching the given filters, or all alerts if no filters are given.

#### Parameters

##### filter

**Type:** [AlertFilter](../concepts/AlertFilter.md)

#### Return values

- dictionary[[uint32](../concepts/uint32.md) → dictionary[[defines.alert_type](../defines/defines.md) → array[[Alert](../concepts/Alert.md)]]] — A mapping of surface index to an array of arrays of [alerts](../concepts/Alert.md) indexed by the [alert type](../defines/defines.md).

### get_associated_characters

`get_associated_characters()`

The characters associated with this player.

The array will always be empty when the player is disconnected (see [LuaPlayer::connected](../classes/LuaPlayer.md#connected)) regardless of there being associated characters.

Characters associated with this player will be logged off when this player disconnects but are not controlled by any player.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_goal_description

`get_goal_description()`

Get the current goal description, as a localised string.

#### Return values

- [LocalisedString](../concepts/LocalisedString.md)

### get_infinity_inventory_filter

`get_infinity_inventory_filter(index)`

Gets the filter for this map editor infinity filters at the given index or `nil` if the filter index doesn't exist or is empty.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index to get.

#### Return values

- [InfinityInventoryFilter](../concepts/InfinityInventoryFilter.md) _(optional)_

### get_pins

`get_pins()`

Gets all of the pins that this player has.

#### Return values

- array[[LuaPin](../classes/LuaPin.md)]

### get_quick_bar_slot

`get_quick_bar_slot(page_index, slot_index)`

Gets the quick bar filter for the given slot or `nil`.

#### Parameters

##### page_index

**Type:** [uint8](../concepts/uint8.md)

##### slot_index

**Type:** [uint8](../concepts/uint8.md)

#### Return values

- [QuickBarSlot](../concepts/QuickBarSlot.md) _(optional)_

### get_recipe_notifications

`get_recipe_notifications()`

Get all recipes that currently have recipe notifications for this player.

#### Return values

- array[[LuaRecipePrototype](../classes/LuaRecipePrototype.md)]

### is_alert_enabled

`is_alert_enabled(alert_type)`

If the given alert type is currently enabled.

#### Parameters

##### alert_type

**Type:** [defines.alert_type](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_alert_muted

`is_alert_muted(alert_type)`

If the given alert type is currently muted.

#### Parameters

##### alert_type

**Type:** [defines.alert_type](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_shortcut_available

`is_shortcut_available(prototype_name)`

Is a custom Lua shortcut currently available?

#### Parameters

##### prototype_name

**Type:** [string](../concepts/string.md)

Prototype name of the custom shortcut.

#### Return values

- [boolean](../concepts/boolean.md)

### is_shortcut_toggled

`is_shortcut_toggled(prototype_name)`

Is a custom Lua shortcut currently toggled?

#### Parameters

##### prototype_name

**Type:** [string](../concepts/string.md)

Prototype name of the custom shortcut.

#### Return values

- [boolean](../concepts/boolean.md)

### jump_to_cutscene_waypoint

`jump_to_cutscene_waypoint(waypoint_index)`

Jump to the specified cutscene waypoint. Only works when the player is viewing a cutscene.

#### Parameters

##### waypoint_index

**Type:** [uint32](../concepts/uint32.md)

### land_on_planet

`land_on_planet()`

Ejects this player from the current space platform and lands on the current planet.

#### Return values

- [boolean](../concepts/boolean.md) — If the player successfully landed on the planet.

### leave_space_platform

`leave_space_platform()`

Ejects this player from the current space platform if in a platform. The player is left on the platform at the position of the hub.

### mute_alert

`mute_alert(alert_type)`

Mutes alerts for the given alert category.

#### Parameters

##### alert_type

**Type:** [defines.alert_type](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the alert type was muted (false if it was already muted).

### pipette

`pipette(allow_ghost, id, quality)`

Emulates the player using the "smart pipette" that results in the given id and quality.

#### Parameters

##### allow_ghost

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

##### id

**Type:** [PipetteID](../concepts/PipetteID.md)

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [boolean](../concepts/boolean.md) — Whether the smart pipette found something to put into the cursor.

#### Raises

- `on_player_pipette` — Raised if an item was successfully put into the cursor.

### play_music

`play_music(music_specification)`

Play a music track for this player.

#### Parameters

##### music_specification

**Type:** [PlayMusicSpecification](../concepts/PlayMusicSpecification.md)

The track to play.

### play_sound

`play_sound(sound_specification)`

Play a sound for this player.

The sound is not played if its location is not [charted](../classes/LuaForce.md#chart) for this player.

#### Parameters

##### sound_specification

**Type:** [PlaySoundSpecification](../concepts/PlaySoundSpecification.md)

The sound to play.

### print

`print(message, print_settings)`

Print text to the chat console.

By default, messages that are identical to a message sent in the last 60 ticks are not printed again.

#### Parameters

##### message

**Type:** [LocalisedString](../concepts/LocalisedString.md)

##### print_settings

**Type:** [PrintSettings](../concepts/PrintSettings.md) · _optional_

### print_entity_statistics

`print_entity_statistics(entities)`

Print entity statistics to the player's console.

#### Parameters

##### entities

**Type:** array[[EntityWithQualityID](../concepts/EntityWithQualityID.md)] · _optional_

Entity prototypes to get statistics for. If not specified or empty, display statistics for all entities.

### print_lua_object_statistics

`print_lua_object_statistics()`

Print LuaObject counts per mod.

### print_robot_jobs

`print_robot_jobs()`

Print construction robot job counts to the player's console.

### remove_alert

`remove_alert(filter)`

Removes all alerts matching the given filters or if an empty filters table is given all alerts are removed.

#### Parameters

##### filter

**Type:** [AlertFilter](../concepts/AlertFilter.md)

### request_translation

`request_translation(localised_string)`

Requests a translation for the given localised string. The [on_string_translated](../events/on_string_translated.md) event will be fired with the results.

If this player is not connected (see [LuaPlayer::connected](../classes/LuaPlayer.md#connected)) the translation will happen next time they connect.

#### Parameters

##### localised_string

**Type:** [LocalisedString](../concepts/LocalisedString.md)

#### Return values

- [uint32](../concepts/uint32.md) — The unique ID for the requested translation.

#### Raises

- `on_string_translated` — 

### request_translations

`request_translations(localised_strings)`

Requests translation for the given set of localised strings. A [on_string_translated](../events/on_string_translated.md) event will be fired for each string with the results.

If this player is not connected (see [LuaPlayer::connected](../classes/LuaPlayer.md#connected)) the translation will happen next time they connect.

#### Parameters

##### localised_strings

**Type:** array[[LocalisedString](../concepts/LocalisedString.md)]

#### Return values

- array[[uint32](../concepts/uint32.md)] — The unique IDs for the requested translations.

#### Raises

- `on_string_translated` — 

### set_active_quick_bar_page

`set_active_quick_bar_page(page_index, screen_index)`

Sets which quick bar page is being used for the given screen page.

#### Parameters

##### page_index

**Type:** [uint32](../concepts/uint32.md)

The new quick bar page.

##### screen_index

**Type:** [uint32](../concepts/uint32.md)

The screen page. Index 1 is the top row in the gui. Index can go beyond the visible number of bars on the screen to account for the interface config setting change.

### set_controller

`set_controller({character, chart_mode_cutoff, final_transition_time, position, start_position, start_zoom, surface, type, waypoints})`

Set the controller type of the player.

Setting a player to [defines.controllers.editor](../defines/defines.md) auto promotes the player to admin and enables cheat mode. Setting a player to [defines.controllers.editor](../defines/defines.md) also requires the calling player be an admin.

#### Parameters

##### character

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

Entity to control. Mandatory when `type` is [defines.controllers.character](../defines/defines.md), ignored otherwise.

##### chart_mode_cutoff

**Type:** [double](../concepts/double.md) · _optional_

If specified and `type` is [defines.controllers.cutscene](../defines/defines.md), the game will switch to chart-mode (map zoomed out) rendering when the zoom level is less than this value.

##### final_transition_time

**Type:** [uint32](../concepts/uint32.md) · _optional_

If specified and `type` is [defines.controllers.cutscene](../defines/defines.md), it is the time in ticks it will take for the camera to pan from the final waypoint back to the starting position. If not given the camera will not pan back to the start position/zoom.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

If specified and `type` is [defines.controllers.remote](../defines/defines.md), the position the remote controller will be centered on.

##### start_position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

If specified and `type` is [defines.controllers.cutscene](../defines/defines.md), the cutscene will start at this position. If not given the start position will be the player position.

##### start_zoom

**Type:** [double](../concepts/double.md) · _optional_

If specified and `type` is [defines.controllers.cutscene](../defines/defines.md), the cutscene will start at this zoom level. If not given the start zoom will be the player's zoom.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

If specified and `type` is [defines.controllers.remote](../defines/defines.md), the surface the remote controller will be put on.

##### type

**Type:** [defines.controllers](../defines/defines.md)

Which controller to use.

##### waypoints

**Type:** array[[CutsceneWaypoint](../concepts/CutsceneWaypoint.md)] · _optional_

List of waypoints for the cutscene controller. This parameter is mandatory when `type` is [defines.controllers.cutscene](../defines/defines.md).

### set_ending_screen_data

`set_ending_screen_data(file, message)`

Setup the screen to be shown when the game is finished.

#### Parameters

##### file

**Type:** [string](../concepts/string.md) · _optional_

Path to image to be shown.

##### message

**Type:** [LocalisedString](../concepts/LocalisedString.md)

Message to be shown.

### set_goal_description

`set_goal_description(only_update, text)`

Set the text in the goal window (top left).

#### Parameters

##### only_update

**Type:** [boolean](../concepts/boolean.md) · _optional_

When `true`, won't play the "goal updated" sound.

##### text

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

The text to display. Lines can be delimited with `\n`. Passing an empty string or omitting this parameter entirely will make the goal window disappear.

### set_infinity_inventory_filter

`set_infinity_inventory_filter(filter, index)`

Sets the filter for this map editor infinity filters at the given index.

#### Parameters

##### filter

**Type:** [InfinityInventoryFilter](../concepts/InfinityInventoryFilter.md) ∣ [nil](../concepts/nil.md)

The new filter or `nil` to clear the filter.

##### index

**Type:** [uint32](../concepts/uint32.md)

The index to set.

### set_quick_bar_slot

`set_quick_bar_slot(filter, page_index, slot_index)`

Sets the quick bar filter for the given slot. If a [LuaItemStack](../classes/LuaItemStack.md) is provided, the slot will be set to that particular item instance if it has extra data, for example a specific blueprint or spidertron remote. Otherwise, it will be set to all items of that prototype, for example iron plates.

#### Parameters

##### filter

**Type:** [LuaItemStack](../classes/LuaItemStack.md) ∣ [ItemWithQualityID](../concepts/ItemWithQualityID.md) ∣ [QuickBarSlot](../concepts/QuickBarSlot.md) ∣ [nil](../concepts/nil.md)

The filter or `nil` to clear it.

##### page_index

**Type:** [uint8](../concepts/uint8.md)

##### slot_index

**Type:** [uint8](../concepts/uint8.md)

### set_shortcut_available

`set_shortcut_available(available, prototype_name)`

Make a custom Lua shortcut available or unavailable.

#### Parameters

##### available

**Type:** [boolean](../concepts/boolean.md)

##### prototype_name

**Type:** [string](../concepts/string.md)

Prototype name of the custom shortcut.

### set_shortcut_toggled

`set_shortcut_toggled(prototype_name, toggled)`

Toggle or untoggle a custom Lua shortcut

#### Parameters

##### prototype_name

**Type:** [string](../concepts/string.md)

Prototype name of the custom shortcut.

##### toggled

**Type:** [boolean](../concepts/boolean.md)

### set_zoom_limits

`set_zoom_limits(controller_type, zoom_limits)`

Sets the zoom limits for a specific controller type. To reset a controller's zoom limits to default, pass an empty table for `zoom_limits`.

#### Parameters

##### controller_type

**Type:** [defines.controllers](../defines/defines.md)

The type of the controller to set the zoom limits for.

##### zoom_limits

**Type:** [ZoomLimits](../concepts/ZoomLimits.md)

The new zoom limits. See [LuaPlayer::zoom_limits](../classes/LuaPlayer.md#zoom-limits) for usage information.

### stack_transfers

`stack_transfers({check_for_invalid_armor_removal, index, notify_if_invalid_armor_removal, play_transfer_sound, source_inventory, target, target_equipment_grid, transfer_type})`

Performs the given transfer action between the source and target as if the player did the action.

This can be paired with [defines.events.on_gui_inventory_action](../defines/defines.md) to make custom inventory GUIs that act like builtin inventories.

Reach distance is ignored and can be checked using [LuaControl::can_reach_entity](../classes/LuaControl.md#can-reach-entity) if wanted.

#### Parameters

##### check_for_invalid_armor_removal

**Type:** [boolean](../concepts/boolean.md) · _optional_

If transfer from the player armor inventory is blocked when flying or if it would shrink the inventory to the point items would spill. Defaults to `true`.

##### index

**Type:** [uint32](../concepts/uint32.md)

The inventory slot index.

##### notify_if_invalid_armor_removal

**Type:** [boolean](../concepts/boolean.md) · _optional_

If on being blocked by invalid armor removal it sends a notification to the player that the transfer is blocked. Defaults to `true`.

##### play_transfer_sound

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the standard sound for transferring items should be played on success. Defaults to `true`.

##### source_inventory

**Type:** [LuaInventory](../classes/LuaInventory.md)

The inventory to transfer from.

##### target

**Type:** [LuaInventory](../classes/LuaInventory.md) ∣ [LuaEntity](../classes/LuaEntity.md) ∣ [LuaPlayer](../classes/LuaPlayer.md) ∣ [LuaItem](../classes/LuaItem.md) ∣ [LuaItemStack](../classes/LuaItemStack.md) ∣ [LuaEquipment](../classes/LuaEquipment.md)

##### target_equipment_grid

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true - when transferring into vehicles - only placeable equipment items will be placed into the equipment grid as equipment and normal items are skipped. Defaults to `false`.

##### transfer_type

**Type:** [defines.inventory_actions](../defines/defines.md)

The type of transfer to perform. Only stack_transfer, stack_split, inventory_transfer, and inventory_split can be used.

#### Return values

- array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] _(optional)_ — List of all items moved. This will be `nil` if the transfer was blocked.

### start_selection

`start_selection(position, selection_mode)`

Starts selection with selection tool from the specified position. Does nothing if the player's cursor is not a selection tool.

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position to start selection from.

##### selection_mode

**Type:** [defines.selection_mode](../defines/defines.md)

The type of selection to start.

### swap_characters

`swap_characters(player)`

Swaps this player's character with another player's character.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

The player to swap characters with.

#### Return values

- [boolean](../concepts/boolean.md) — `true` if the swap was successful.

### toggle_map_editor

`toggle_map_editor()`

Toggles this player into or out of the map editor. Does nothing if this player isn't an admin or if the player doesn't have permission to use the map editor.

#### Raises

- `on_player_toggled_map_editor` — Raised if the map editor was successfully toggled.
- `on_pre_player_toggled_map_editor` — Raised if the map editor was successfully toggled.

### unlock_achievement

`unlock_achievement(name)`

Unlock the achievements of the given player. This has any effect only when this is the local player, the achievement isn't unlocked so far and the achievement is of the type "achievement".

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

name of the achievement to unlock

### unmute_alert

`unmute_alert(alert_type)`

Unmutes alerts for the given alert category.

#### Parameters

##### alert_type

**Type:** [defines.alert_type](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the alert type was unmuted (false if it was wasn't muted).

### use_from_cursor

`use_from_cursor(position)`

Uses the current item in the cursor if it's a capsule or does nothing if not.

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where the item would be used.
