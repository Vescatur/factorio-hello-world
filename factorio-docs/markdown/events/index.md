# Events

224 entries. Read the individual file for full detail.

| Name | Summary |
| --- | --- |
| [CustomInputEvent](CustomInputEvent.md) | Called when a CustomInputPrototype is activated. |
| [on_achievement_gained](on_achievement_gained.md) | Called when an achievement is gained. |
| [on_ai_command_completed](on_ai_command_completed.md) | Called when a unit/group completes a command. |
| [on_area_cloned](on_area_cloned.md) | Called when an area of the map is cloned. |
| [on_biter_base_built](on_biter_base_built.md) | Called when a biter migration builds a base. |
| [on_blueprint_settings_pasted](on_blueprint_settings_pasted.md) | Called when a blueprint entity is pasted over an existing entity or entity ghost. |
| [on_brush_cloned](on_brush_cloned.md) | Called when a set of positions on the map is cloned. |
| [on_build_base_arrived](on_build_base_arrived.md) | Called when a defines.command.build_base command reaches its destination, and before building starts. |
| [on_built_entity](on_built_entity.md) | Called when player builds something. |
| [on_cancelled_deconstruction](on_cancelled_deconstruction.md) | Called when the deconstruction of an entity is canceled. |
| [on_cancelled_upgrade](on_cancelled_upgrade.md) | Called when the upgrade of an entity is canceled. |
| [on_cargo_pod_delivered_cargo](on_cargo_pod_delivered_cargo.md) | Called after a cargo pod has delivered its cargo. |
| [on_cargo_pod_finished_ascending](on_cargo_pod_finished_ascending.md) | Called when a cargo pod departs a surface. |
| [on_cargo_pod_finished_descending](on_cargo_pod_finished_descending.md) | Called when a cargo pods lands on a surface, either at a station or on the ground. |
| [on_cargo_pod_started_ascending](on_cargo_pod_started_ascending.md) | Called when a cargo pod departs from a space platform hub or by another method not attached to a rocket. |
| [on_character_corpse_expired](on_character_corpse_expired.md) | Called when a character corpse expires due to timeout or all of the items being removed from it. |
| [on_chart_tag_added](on_chart_tag_added.md) | Called when a chart tag is created. |
| [on_chart_tag_modified](on_chart_tag_modified.md) | Called when a chart tag is modified by a player or by script. |
| [on_chart_tag_removed](on_chart_tag_removed.md) | Called just before a chart tag is deleted. |
| [on_chunk_charted](on_chunk_charted.md) | Called when a chunk is charted or re-charted. |
| [on_chunk_deleted](on_chunk_deleted.md) | Called when one or more chunks are deleted using LuaSurface::delete_chunk. |
| [on_chunk_generated](on_chunk_generated.md) | Called when a chunk is generated. |
| [on_combat_robot_expired](on_combat_robot_expired.md) | Called when a combat robot expires through a lack of energy, or timeout. |
| [on_console_chat](on_console_chat.md) | Called when a message is sent to the in-game console, either by a player or through the server interface. |
| [on_console_command](on_console_command.md) | Called when someone enters a command-like message regardless of it being a valid command. |
| [on_cutscene_cancelled](on_cutscene_cancelled.md) | Called when a cutscene is cancelled by the player or by script. |
| [on_cutscene_finished](on_cutscene_finished.md) | Called when a cutscene finishes naturally (was not cancelled). |
| [on_cutscene_started](on_cutscene_started.md) | Called when a cutscene starts. |
| [on_cutscene_waypoint_reached](on_cutscene_waypoint_reached.md) | Called when a cutscene is playing, each time it reaches a waypoint in that cutscene. |
| [on_entity_cloned](on_entity_cloned.md) | Called when an entity is cloned. The filter applies to the source entity. |
| [on_entity_color_changed](on_entity_color_changed.md) | Called after an entity has been recolored either by the player or through script. |
| [on_entity_damaged](on_entity_damaged.md) | Called when an entity is damaged. This is not called when an entities health is set directly by another mod. |
| [on_entity_died](on_entity_died.md) | Called when an entity dies. |
| [on_entity_logistic_slot_changed](on_entity_logistic_slot_changed.md) | Called when one of an entity's logistic slots changes. |
| [on_entity_renamed](on_entity_renamed.md) | Called after an entity has been renamed either by the player or through script. |
| [on_entity_settings_pasted](on_entity_settings_pasted.md) | Called after entity copy-paste is done. |
| [on_entity_spawned](on_entity_spawned.md) | Called when an entity is spawned by a EnemySpawner |
| [on_equipment_inserted](on_equipment_inserted.md) | Called after equipment is inserted into an equipment grid. |
| [on_equipment_removed](on_equipment_removed.md) | Called after equipment is removed from an equipment grid. |
| [on_force_cease_fire_changed](on_force_cease_fire_changed.md) | Called when the a forces cease fire values change. |
| [on_force_created](on_force_created.md) | Called when a new force is created using `game.create_force()` |
| [on_force_friends_changed](on_force_friends_changed.md) | Called when the a forces friends change. |
| [on_force_reset](on_force_reset.md) | Called when LuaForce::reset is finished. |
| [on_forces_merged](on_forces_merged.md) | Called after two forces have been merged using `game.merge_forces()`. |
| [on_forces_merging](on_forces_merging.md) | Called when two forces are about to be merged using `game.merge_forces()`. |
| [on_game_created_from_scenario](on_game_created_from_scenario.md) | Called when a game is created from a scenario. This is fired for every mod, even when the scenario's save data already includes it. In those cases however, L... |
| [on_gui_checked_state_changed](on_gui_checked_state_changed.md) | Called when LuaGuiElement checked state is changed (related to checkboxes and radio buttons). |
| [on_gui_click](on_gui_click.md) | Called when LuaGuiElement is clicked. |
| [on_gui_closed](on_gui_closed.md) | Called when the player closes the GUI they have open. |
| [on_gui_confirmed](on_gui_confirmed.md) | Called when a LuaGuiElement is confirmed, for example by pressing Enter in a textfield. |
| [on_gui_elem_changed](on_gui_elem_changed.md) | Called when LuaGuiElement element value is changed (related to choose element buttons). |
| [on_gui_hover](on_gui_hover.md) | Called when LuaGuiElement is hovered by the mouse. |
| [on_gui_inventory_action](on_gui_inventory_action.md) | Called when a player interacts with a custom inventory GUI. |
| [on_gui_leave](on_gui_leave.md) | Called when the player's cursor leaves a LuaGuiElement that was previously hovered. |
| [on_gui_location_changed](on_gui_location_changed.md) | Called when LuaGuiElement element location is changed (related to frames in `player.gui.screen`). |
| [on_gui_opened](on_gui_opened.md) | Called when the player opens a GUI. |
| [on_gui_selected_tab_changed](on_gui_selected_tab_changed.md) | Called when LuaGuiElement selected tab is changed (related to tabbed-panes). |
| [on_gui_selection_state_changed](on_gui_selection_state_changed.md) | Called when LuaGuiElement selection state is changed (related to drop-downs and listboxes). |
| [on_gui_switch_state_changed](on_gui_switch_state_changed.md) | Called when LuaGuiElement switch state is changed (related to switches). |
| [on_gui_text_changed](on_gui_text_changed.md) | Called when LuaGuiElement text is changed by the player. |
| [on_gui_value_changed](on_gui_value_changed.md) | Called when LuaGuiElement slider value is changed (related to the slider element). |
| [on_land_mine_armed](on_land_mine_armed.md) | Called when a land mine is armed. |
| [on_lua_shortcut](on_lua_shortcut.md) | Called when a custom Lua shortcut is pressed. |
| [on_marked_for_deconstruction](on_marked_for_deconstruction.md) | Called when an entity is marked for deconstruction with the Deconstruction planner or via script. |
| [on_marked_for_upgrade](on_marked_for_upgrade.md) | Called when an entity is marked for upgrade with the upgrade planner or via script. |
| [on_market_item_purchased](on_market_item_purchased.md) | Called after a player purchases some offer from a `market` entity. |
| [on_mod_item_opened](on_mod_item_opened.md) | Called when the player uses the 'Open item GUI' control on an item defined with the 'mod-openable' flag |
| [on_multiplayer_init](on_multiplayer_init.md) | Called when LuaGameScript::is_multiplayer changes to true. May also be raised when it was already true but a game was loaded from a save file and with hosting. |
| [on_object_destroyed](on_object_destroyed.md) | Called after an object is destroyed which was registered with LuaBootstrap::register_on_object_destroyed previously. |
| [on_permission_group_added](on_permission_group_added.md) | Called directly after a permission group is added. |
| [on_permission_group_deleted](on_permission_group_deleted.md) | Called directly after a permission group is deleted. |
| [on_permission_group_edited](on_permission_group_edited.md) | Called directly after a permission group is edited in some way. |
| [on_permission_string_imported](on_permission_string_imported.md) | Called directly after a permission string is imported. |
| [on_picked_up_item](on_picked_up_item.md) | Called when a player picks up an item. |
| [on_player_alt_reverse_selected_area](on_player_alt_reverse_selected_area.md) | Called after a player alt-reverse-selects an area with a selection-tool item. |
| [on_player_alt_selected_area](on_player_alt_selected_area.md) | Called after a player alt-selects an area with a selection-tool item. |
| [on_player_ammo_inventory_changed](on_player_ammo_inventory_changed.md) | Called after a players ammo inventory changed in some way. |
| [on_player_armor_inventory_changed](on_player_armor_inventory_changed.md) | Called after a players armor inventory changed in some way. |
| [on_player_banned](on_player_banned.md) | Called when a player is banned. |
| [on_player_built_tile](on_player_built_tile.md) | Called after a player builds tiles. |
| [on_player_cancelled_crafting](on_player_cancelled_crafting.md) | Called when a player cancels crafting. |
| [on_player_changed_force](on_player_changed_force.md) | Called after a player changes forces. |
| [on_player_changed_position](on_player_changed_position.md) | Called when the tile position a player is located at changes. |
| [on_player_changed_surface](on_player_changed_surface.md) | Called after a player changes surfaces. |
| [on_player_cheat_mode_disabled](on_player_cheat_mode_disabled.md) | Called when cheat mode is disabled on a player. |
| [on_player_cheat_mode_enabled](on_player_cheat_mode_enabled.md) | Called when cheat mode is enabled on a player. |
| [on_player_clicked_gps_tag](on_player_clicked_gps_tag.md) | Called when a player clicks a gps tag |
| [on_player_color_changed](on_player_color_changed.md) | Called after a player's color changes. |
| [on_player_configured_blueprint](on_player_configured_blueprint.md) | Called when a player clicks the "confirm" button in the configure Blueprint GUI. |
| [on_player_controller_changed](on_player_controller_changed.md) | Called after a player changes controller types. |
| [on_player_crafted_item](on_player_crafted_item.md) | Called when the player finishes crafting an item. This event fires just before the results are inserted into the player's inventory, not when the crafting is... |
| [on_player_created](on_player_created.md) | Called after the player was created. |
| [on_player_cursor_stack_changed](on_player_cursor_stack_changed.md) | Called after a player's cursor stack changed in some way. |
| [on_player_deconstructed_area](on_player_deconstructed_area.md) | Called when a player selects an area with a deconstruction planner. |
| [on_player_demoted](on_player_demoted.md) | Called when a player is demoted. |
| [on_player_died](on_player_died.md) | Called after a player dies. |
| [on_player_display_density_scale_changed](on_player_display_density_scale_changed.md) | Called when the display density scale changes for a given player. The display density scale is the scale value automatically applied based on the player's di... |
| [on_player_display_resolution_changed](on_player_display_resolution_changed.md) | Called when the display resolution changes for a given player. |
| [on_player_display_scale_changed](on_player_display_scale_changed.md) | Called when the display scale changes for a given player. |
| [on_player_driving_changed_state](on_player_driving_changed_state.md) | Called when the player's driving state has changed, meaning a player has either entered or left a vehicle. |
| [on_player_dropped_item](on_player_dropped_item.md) | Called when a player drops an item on the ground. |
| [on_player_dropped_item_into_entity](on_player_dropped_item_into_entity.md) | Called when a player drops a single item into an entity. |
| [on_player_fast_transferred](on_player_fast_transferred.md) | Called when a player fast-transfers something to or from an entity. |
| [on_player_flipped_entity](on_player_flipped_entity.md) | Called when the player flips an entity. This event is only fired when the entity actually changes its orientation or mirroring, so it won't be triggered when... |
| [on_player_flushed_fluid](on_player_flushed_fluid.md) | Called after player flushed fluid |
| [on_player_gun_inventory_changed](on_player_gun_inventory_changed.md) | Called after a players gun inventory changed in some way. |
| [on_player_input_method_changed](on_player_input_method_changed.md) | Called when a player's input method changes. See LuaPlayer::input_method. |
| [on_player_joined_game](on_player_joined_game.md) | Called after a player joins the game. This is not called when loading a save file in singleplayer, as the player doesn't actually leave the game, and the sav... |
| [on_player_kicked](on_player_kicked.md) | Called when a player is kicked. |
| [on_player_left_game](on_player_left_game.md) | Called after a player leaves the game. This is not called when closing a save file in singleplayer, as the player doesn't actually leave the game, and the sa... |
| [on_player_locale_changed](on_player_locale_changed.md) | Called when a player's active locale changes. See LuaPlayer::locale. |
| [on_player_main_inventory_changed](on_player_main_inventory_changed.md) | Called after a players main inventory changed in some way. |
| [on_player_mined_entity](on_player_mined_entity.md) | Called after the results of an entity being mined are collected just before the entity is destroyed. |
| [on_player_mined_item](on_player_mined_item.md) | Called when the player mines something. |
| [on_player_mined_tile](on_player_mined_tile.md) | Called after a player mines tiles. |
| [on_player_music_changed](on_player_music_changed.md) | Called when a player's current music track (ambient sound) changes. This includes when the music track finishes playing. |
| [on_player_muted](on_player_muted.md) | Called when a player is muted. |
| [on_player_pipette](on_player_pipette.md) | Called when a player invokes the "smart pipette" over an entity. |
| [on_player_placed_equipment](on_player_placed_equipment.md) | Called after the player puts equipment in an equipment grid |
| [on_player_promoted](on_player_promoted.md) | Called when a player is promoted. |
| [on_player_removed](on_player_removed.md) | Called when a player is removed (deleted) from the game. This is markedly different from a player temporarily leaving the game, and instead behaves like the... |
| [on_player_removed_equipment](on_player_removed_equipment.md) | Called after the player removes equipment from an equipment grid |
| [on_player_repaired_entity](on_player_repaired_entity.md) | Called when a player repairs an entity. |
| [on_player_respawned](on_player_respawned.md) | Called after a player respawns. |
| [on_player_reverse_selected_area](on_player_reverse_selected_area.md) | Called after a player reverse-selects an area with a selection-tool item. |
| [on_player_rotated_entity](on_player_rotated_entity.md) | Called when the player rotates an entity. This event is only fired when the entity actually changes its orientation -- pressing the rotate key on an entity t... |
| [on_player_selected_area](on_player_selected_area.md) | Called after a player selects an area with a selection-tool item. |
| [on_player_set_quick_bar_slot](on_player_set_quick_bar_slot.md) | Called when a player sets a quickbar slot to anything (new value, or set to empty). |
| [on_player_setup_blueprint](on_player_setup_blueprint.md) | Called when a player selects an area with a blueprint. |
| [on_player_super_forced_selected_area](on_player_super_forced_selected_area.md) | Called after a player super-forced-selects an area with a selection-tool item. |
| [on_player_toggled_alt_mode](on_player_toggled_alt_mode.md) | Called when a player toggles alt mode, also known as "show entity info". |
| [on_player_toggled_map_editor](on_player_toggled_map_editor.md) | Called when a player toggles the map editor on or off. |
| [on_player_trash_inventory_changed](on_player_trash_inventory_changed.md) | Called after a players trash inventory changed in some way. |
| [on_player_unbanned](on_player_unbanned.md) | Called when a player is un-banned. |
| [on_player_unmuted](on_player_unmuted.md) | Called when a player is unmuted. |
| [on_player_used_capsule](on_player_used_capsule.md) | Called when a player uses a capsule that results in some game action. |
| [on_player_used_spidertron_remote](on_player_used_spidertron_remote.md) | Called when a player uses spidertron remote to send all selected units to a given position |
| [on_post_entity_died](on_post_entity_died.md) | Called after an entity dies. |
| [on_post_segmented_unit_died](on_post_segmented_unit_died.md) | Called after a segmented unit dies. |
| [on_pre_build](on_pre_build.md) | Called when players uses an item to build something. Called before on_built_entity. |
| [on_pre_chunk_deleted](on_pre_chunk_deleted.md) | Called before one or more chunks are deleted using LuaSurface::delete_chunk. |
| [on_pre_entity_settings_pasted](on_pre_entity_settings_pasted.md) | Called before entity copy-paste is done. |
| [on_pre_ghost_deconstructed](on_pre_ghost_deconstructed.md) | Called before a ghost entity is destroyed as a result of being marked for deconstruction. |
| [on_pre_ghost_upgraded](on_pre_ghost_upgraded.md) | Called before a ghost entity is upgraded. |
| [on_pre_permission_group_deleted](on_pre_permission_group_deleted.md) | Called directly before a permission group is deleted. |
| [on_pre_permission_string_imported](on_pre_permission_string_imported.md) | Called directly before a permission string is imported. |
| [on_pre_player_crafted_item](on_pre_player_crafted_item.md) | Called when a player queues something to be crafted. |
| [on_pre_player_died](on_pre_player_died.md) | Called before a players dies. |
| [on_pre_player_left_game](on_pre_player_left_game.md) | Called before a player leaves the game. |
| [on_pre_player_mined_item](on_pre_player_mined_item.md) | Called when the player completes a mining action, but before the entity is potentially removed from the map. This is called even if the entity does not end u... |
| [on_pre_player_removed](on_pre_player_removed.md) | Called before a player is removed (deleted) from the game. This is markedly different from a player temporarily leaving the game, and instead behaves like th... |
| [on_pre_player_toggled_map_editor](on_pre_player_toggled_map_editor.md) | Called before a player toggles the map editor on or off. |
| [on_pre_robot_exploded_cliff](on_pre_robot_exploded_cliff.md) | Called directly before a robot explodes cliffs. |
| [on_pre_scenario_finished](on_pre_scenario_finished.md) | Called just before the scenario finishes. |
| [on_pre_script_inventory_resized](on_pre_script_inventory_resized.md) | Called just before a script inventory is resized. |
| [on_pre_surface_cleared](on_pre_surface_cleared.md) | Called just before a surface is cleared (all entities removed and all chunks deleted). |
| [on_pre_surface_deleted](on_pre_surface_deleted.md) | Called just before a surface is deleted. |
| [on_redo_applied](on_redo_applied.md) | Called when the player triggers "redo". |
| [on_research_cancelled](on_research_cancelled.md) | Called when research is cancelled. |
| [on_research_finished](on_research_finished.md) | Called when a research finishes. |
| [on_research_moved](on_research_moved.md) | Called when research is moved forwards or backwards in the research queue. |
| [on_research_queued](on_research_queued.md) | Called when research is queued. |
| [on_research_reversed](on_research_reversed.md) | Called when a research is reversed (unresearched). |
| [on_research_started](on_research_started.md) | Called when a technology research starts. |
| [on_resource_depleted](on_resource_depleted.md) | Called when a resource entity reaches 0 or its minimum yield for infinite resources. |
| [on_robot_built_entity](on_robot_built_entity.md) | Called when a construction robot builds an entity. |
| [on_robot_built_tile](on_robot_built_tile.md) | Called after a robot builds tiles. |
| [on_robot_exploded_cliff](on_robot_exploded_cliff.md) | Called directly after a robot explodes cliffs. |
| [on_robot_mined](on_robot_mined.md) | Called when a robot mines an entity. |
| [on_robot_mined_entity](on_robot_mined_entity.md) | Called after the results of an entity being mined are collected just before the entity is destroyed. |
| [on_robot_mined_tile](on_robot_mined_tile.md) | Called after a robot mines tiles. |
| [on_robot_pre_mined](on_robot_pre_mined.md) | Called before a robot mines an entity. |
| [on_rocket_launch_ordered](on_rocket_launch_ordered.md) | Called when a rocket silo is ordered to be launched. |
| [on_rocket_launched](on_rocket_launched.md) | Called when a rocket finishes ascending. (Triggers listening for finished rocket launch past 2.0 have been moved to 'on_cargo_pod_finished_ascending' as rock... |
| [on_runtime_mod_setting_changed](on_runtime_mod_setting_changed.md) | Called when a runtime mod setting is changed by a player. |
| [on_script_inventory_resized](on_script_inventory_resized.md) | Called just after a script inventory is resized. |
| [on_script_path_request_finished](on_script_path_request_finished.md) | Called when a LuaSurface::request_path call completes. |
| [on_script_trigger_effect](on_script_trigger_effect.md) | Called when a script trigger effect is triggered. |
| [on_sector_scanned](on_sector_scanned.md) | Called when an entity of type `radar` finishes scanning a sector. |
| [on_segment_entity_created](on_segment_entity_created.md) | Called when an individual segment of a SegmentedUnit is created. |
| [on_segmented_unit_created](on_segmented_unit_created.md) | Called when a segmented unit is created for any reason. |
| [on_segmented_unit_damaged](on_segmented_unit_damaged.md) | Called when a segmented unit is damaged. This is not called when a segmented unit's health is set directly by another mod. |
| [on_segmented_unit_died](on_segmented_unit_died.md) | Called when a segmented unit dies. |
| [on_selected_entity_changed](on_selected_entity_changed.md) | Called after the selected entity changes for a given player. |
| [on_singleplayer_init](on_singleplayer_init.md) | Called when LuaGameScript::is_multiplayer changes to false. May also be raised when it was already false but a game was loaded from a save file without hosting. |
| [on_space_platform_built_entity](on_space_platform_built_entity.md) | Called when a space platform builds an entity. |
| [on_space_platform_built_tile](on_space_platform_built_tile.md) | Called after a space platform builds tiles. |
| [on_space_platform_changed_state](on_space_platform_changed_state.md) | Called when a space platform changes state |
| [on_space_platform_mined_entity](on_space_platform_mined_entity.md) | Called after the results of an entity being mined are collected just before the entity is destroyed. |
| [on_space_platform_mined_item](on_space_platform_mined_item.md) | Called when a platform mines an entity. |
| [on_space_platform_mined_tile](on_space_platform_mined_tile.md) | Called after a platform mines tiles. |
| [on_space_platform_pre_mined](on_space_platform_pre_mined.md) | Called before a platform mines an entity. |
| [on_spider_command_completed](on_spider_command_completed.md) | Called when a spider finishes moving to its autopilot position. |
| [on_string_translated](on_string_translated.md) | Called when a translation request generated through LuaPlayer::request_translation or LuaPlayer::request_translations has been completed. |
| [on_surface_cleared](on_surface_cleared.md) | Called just after a surface is cleared (all entities removed and all chunks deleted). |
| [on_surface_created](on_surface_created.md) | Called when a surface is created. |
| [on_surface_deleted](on_surface_deleted.md) | Called after a surface is deleted. |
| [on_surface_imported](on_surface_imported.md) | Called after a surface is imported via the map editor. |
| [on_surface_renamed](on_surface_renamed.md) | Called when a surface is renamed. |
| [on_technology_effects_reset](on_technology_effects_reset.md) | Called when LuaForce::reset_technology_effects is finished. |
| [on_territory_created](on_territory_created.md) | Called when a territory is created for any reason. |
| [on_territory_destroyed](on_territory_destroyed.md) | Called when a territory is destroyed from a surface. |
| [on_tick](on_tick.md) | It is fired once every tick. Since this event is fired every tick, its handler shouldn't include performance heavy code. |
| [on_tower_mined_plant](on_tower_mined_plant.md) | Called after the results of an entity being mined are collected just before the entity is destroyed. |
| [on_tower_planted_seed](on_tower_planted_seed.md) | Called before an agricultural tower plants a seed. |
| [on_tower_pre_mined_plant](on_tower_pre_mined_plant.md) | Called before an agricultural tower mines a plant. |
| [on_train_changed_state](on_train_changed_state.md) | Called when a train changes state (started to stopped and vice versa) |
| [on_train_created](on_train_created.md) | Called when a new train is created either through disconnecting/connecting an existing one or building a new one. |
| [on_train_schedule_changed](on_train_schedule_changed.md) | Called when a trains schedule is changed either by the player or through script. |
| [on_trigger_created_entity](on_trigger_created_entity.md) | Called when an entity with a trigger prototype (such as capsules) create an entity AND that trigger prototype defined `trigger_created_entity=true`. |
| [on_trigger_fired_artillery](on_trigger_fired_artillery.md) | Called when an entity with a trigger prototype (such as capsules) fire an artillery projectile AND that trigger prototype defined `trigger_fired_artillery=tr... |
| [on_udp_packet_received](on_udp_packet_received.md) | Called when new packets are processed by LuaHelpers::recv_udp. |
| [on_undo_applied](on_undo_applied.md) | Called when the player triggers "undo". |
| [on_unit_added_to_group](on_unit_added_to_group.md) | Called when a unit is added to a unit group. |
| [on_unit_group_created](on_unit_group_created.md) | Called when a new unit group is created, before any members are added to it. |
| [on_unit_group_finished_gathering](on_unit_group_finished_gathering.md) | Called when a unit group finishes gathering and starts executing its command. |
| [on_unit_removed_from_group](on_unit_removed_from_group.md) | Called when a unit is removed from a unit group. |
| [on_worker_robot_expired](on_worker_robot_expired.md) | Called when a worker (construction or logistic) robot expires through a lack of energy. |
| [script_raised_built](script_raised_built.md) | A static event mods can use to tell other mods they built something by script. This event is only raised if a mod does so with LuaBootstrap::raise_event or L... |
| [script_raised_destroy](script_raised_destroy.md) | A static event mods can use to tell other mods they destroyed something by script. This event is only raised if a mod does so with LuaBootstrap::raise_event... |
| [script_raised_destroy_segmented_unit](script_raised_destroy_segmented_unit.md) | A static event that mods can use to tell other mods they destroyed a segmented unit by script. This event is only raised if a mod does so with LuaBootstrap::... |
| [script_raised_revive](script_raised_revive.md) | A static event mods can use to tell other mods they revived something by script. This event is only raised if a mod does so with LuaBootstrap::raise_event or... |
| [script_raised_set_tiles](script_raised_set_tiles.md) | A static event mods can use to tell other mods they changed tiles on a surface by script. This event is only raised if a mod does so with LuaBootstrap::raise... |
| [script_raised_teleported](script_raised_teleported.md) | A static event mods can use to tell other mods they teleported something by script. This event is only raised if a mod does so with LuaBootstrap::raise_event... |
