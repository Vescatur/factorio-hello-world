# UtilityConstants

_concept_

Constants used by the game that are not specific to certain prototypes. See [utility-constants.lua](https://github.com/wube/factorio-data/blob/master/core/prototypes/utility-constants.lua) for the values used by the base game.

Note that this is actually implemented as a [LuaCustomTable](../classes/LuaCustomTable.md), not a regular table.

**Definition:** table{agricultural_range_visualization_color, artillery_range_visualization_color, asteroid_collector_blockage_update_tile_distance, asteroid_collector_max_nurbs_control_point_separation, asteroid_collector_navmesh_refresh_tick_interval, asteroid_collector_static_head_swing_segment_count, asteroid_collector_static_head_swing_strength_scale, asteroid_fading_range, asteroid_min_damage_modifier, asteroid_position_offset_to_speed_coefficient, asteroid_spawning_offset, asteroid_spawning_with_random_orientation_max_speed, blueprint_big_slots_per_row, blueprint_small_slots_per_row, bonus_gui_ordering, building_buildable_tint, building_buildable_too_far_tint, building_collision_mask, building_ignorable_tint, building_no_tint, building_not_buildable_tint, capsule_range_visualization_color, capture_water_mask_at_layer, chart, chart_search_highlight, checkerboard_black, checkerboard_white, clear_cursor_volume_modifier, clipboard_history_size, color_filters, construction_robots_use_busy_robots_queue, count_button_size, crafting_queue_slots_per_row, daytime_color_lookup, deconstruct_mark_tint, default_alert_icon_scale, default_alert_icon_scale_by_type, default_alert_icon_shift_by_type, default_collision_masks, default_enemy_force_color, default_item_weight, default_other_force_color, default_pipeline_extent, default_planet_procession_set, default_platform_procession_set, default_platform_surface_render_parameters, default_player_force_color, default_rocket_lift_weight, default_scorch_mark_color, default_trigger_target_mask_by_type, disabled_recipe_slot_background_tint, disabled_recipe_slot_tint, drop_item_radius, dynamic_recipe_overload_factor, ejected_item_direction_variation, ejected_item_friction, ejected_item_lifetime, ejected_item_speed, enabled_recipe_slot_tint, enemies_in_simulation_volume_modifier, entity_button_background_color, entity_renderer_search_box_limits, environment_sounds_transition_fade_in_ticks, equipment_default_background_border_color, equipment_default_background_color, equipment_default_grabbed_background_color, equipment_disabled_background_tint, equipment_disabled_tint, explosions_in_simulation_volume_modifier, factoriopedia_recycling_recipe_categories, far_away_chunk_generation_radius, feedback_screenshot_file_name, feedback_screenshot_subfolder_name, filter_outline_color, flying_text_ttl, forced_enabled_recipe_slot_background_tint, freezing_temperature, frozen_color_lookup, ghost_layer, ghost_product_count_tint, ghost_shader_tint, ghost_shaderless_tint, ghost_shimmer_settings, gui_remark_color, gui_search_match_background_color, gui_search_match_foreground_color, huge_area_size, huge_platform_animation_sound_area, icon_shadow_color, icon_shadow_inset, icon_shadow_radius, icon_shadow_sharpness, inserter_hand_stack_items_per_sprite, inserter_hand_stack_max_sprites, inventory_width, item_ammo_magazine_left_bar_color, item_default_random_tint_strength, item_health_bar_colors, item_outline_color, item_outline_inset, item_outline_radius, item_outline_sharpness, item_tool_durability_bar_color, landing_area_clear_zone_radius, landing_area_max_radius, landing_squash_immunity, large_area_size, large_blueprint_area_size, light_renderer_search_distance_limit, lightning_attractor_collection_range_color, lightning_attractor_protection_range_color, logistic_gui_selected_network_highlight_tint, logistic_gui_unselected_network_highlight_tint, logistic_robots_use_busy_robots_queue, logistic_slots_per_row, low_energy_robot_estimate_multiplier, main_menu_background_image_location, main_menu_background_vignette_intensity, main_menu_background_vignette_sharpness, main_menu_simulations, manual_rail_building_reach_modifier, map_editor, max_belt_stack_size, max_logistic_filter_count, max_terrain_building_size, maximum_quality_jump, maximum_recipe_overload_multiplier, medium_area_size, medium_blueprint_area_size, merge_bonus_gui_production_bonuses, minimum_recipe_overload_multiplier, missing_preview_sprite_location, module_inventory_width, moving_sound_count_reduction_rate, player_colors, probability_product_count_tint, quality_selector_dropdown_threshold, rail_planner_count_button_color, rail_segment_colors, recipe_step_limit, remote_view_LPF_max_cutoff_frequency, remote_view_LPF_min_cutoff_frequency, script_command_console_chat_color, select_group_row_count, select_slot_row_count, selected_chart_search_highlight, server_command_console_chat_color, show_chunk_components_collision_mask, small_area_size, small_blueprint_area_size, sound_fade_ticks, space_LPF_max_cutoff_frequency, space_LPF_min_cutoff_frequency, space_platform_acceleration_expression, space_platform_asteroid_chunk_trajectory_updates_per_tick, space_platform_dump_cooldown, space_platform_manual_dump_cooldown, space_platform_max_relative_speed_deviation_for_asteroid_chunks_update, space_platform_max_size, space_platform_relative_speed_factor, space_platform_starfield_movement_vector, spawner_evolution_factor_health_modifier, starmap_orbit_clicked_color, starmap_orbit_default_color, starmap_orbit_disabled_color, starmap_orbit_hovered_color, tall_entity_smoke_tint, tall_entity_tint, time_to_show_full_health_bar, tooltip_monitor_edge_border, train_inactivity_wait_condition_default, train_on_elevated_rail_shadow_shift_multiplier, train_path_finding, train_pushed_by_player_ignores_friction, train_pushed_by_player_max_acceleration, train_pushed_by_player_max_speed, train_temporary_stop_wait_time, train_time_wait_condition_default, train_visualization, trash_inventory_width, tree_leaf_distortion_distortion_far, tree_leaf_distortion_distortion_near, tree_leaf_distortion_speed_far, tree_leaf_distortion_speed_near, tree_leaf_distortion_strength_far, tree_leaf_distortion_strength_near, tree_shadow_roughness, tree_shadow_speed, turret_range_visualization_color, underground_belt_max_distance_tint, underground_pipe_max_distance_tint, unit_group_max_pursue_distance, unit_group_pathfind_resolution, walking_sound_count_reduction_rate, water_collision_mask, weapons_in_simulation_volume_modifier, zero_count_value_tint, zoom_to_world_can_use_nightvision, zoom_to_world_daytime_color_lookup, zoom_to_world_effect_strength}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [agricultural_range_visualization_color](#agricultural-range-visualization-color) | [Color](../concepts/Color.md) |  |
| [artillery_range_visualization_color](#artillery-range-visualization-color) | [Color](../concepts/Color.md) |  |
| [asteroid_collector_blockage_update_tile_distance](#asteroid-collector-blockage-update-tile-distance) | [uint32](../concepts/uint32.md) |  |
| [asteroid_collector_max_nurbs_control_point_separation](#asteroid-collector-max-nurbs-control-point-separation) | [double](../concepts/double.md) |  |
| [asteroid_collector_navmesh_refresh_tick_interval](#asteroid-collector-navmesh-refresh-tick-interval) | [uint32](../concepts/uint32.md) |  |
| [asteroid_collector_static_head_swing_segment_count](#asteroid-collector-static-head-swing-segment-count) | [uint32](../concepts/uint32.md) |  |
| [asteroid_collector_static_head_swing_strength_scale](#asteroid-collector-static-head-swing-strength-scale) | [float](../concepts/float.md) |  |
| [asteroid_fading_range](#asteroid-fading-range) | [float](../concepts/float.md) |  |
| [asteroid_min_damage_modifier](#asteroid-min-damage-modifier) | [float](../concepts/float.md) |  |
| [asteroid_position_offset_to_speed_coefficient](#asteroid-position-offset-to-speed-coefficient) | [double](../concepts/double.md) |  |
| [asteroid_spawning_offset](#asteroid-spawning-offset) | [SimpleBoundingBox](../concepts/SimpleBoundingBox.md) |  |
| [asteroid_spawning_with_random_orientation_max_speed](#asteroid-spawning-with-random-orientation-max-speed) | [double](../concepts/double.md) |  |
| [blueprint_big_slots_per_row](#blueprint-big-slots-per-row) | [uint8](../concepts/uint8.md) |  |
| [blueprint_small_slots_per_row](#blueprint-small-slots-per-row) | [uint8](../concepts/uint8.md) |  |
| [bonus_gui_ordering](#bonus-gui-ordering) | [BonusUtilityConstants](../concepts/BonusUtilityConstants.md) |  |
| [building_buildable_tint](#building-buildable-tint) | [Color](../concepts/Color.md) |  |
| [building_buildable_too_far_tint](#building-buildable-too-far-tint) | [Color](../concepts/Color.md) |  |
| [building_collision_mask](#building-collision-mask) | [CollisionMask](../concepts/CollisionMask.md) |  |
| [building_ignorable_tint](#building-ignorable-tint) | [Color](../concepts/Color.md) |  |
| [building_no_tint](#building-no-tint) | [Color](../concepts/Color.md) |  |
| [building_not_buildable_tint](#building-not-buildable-tint) | [Color](../concepts/Color.md) |  |
| [capsule_range_visualization_color](#capsule-range-visualization-color) | [Color](../concepts/Color.md) |  |
| [capture_water_mask_at_layer](#capture-water-mask-at-layer) | [uint8](../concepts/uint8.md) |  |
| [chart](#chart) | [ChartUtilityConstants](../concepts/ChartUtilityConstants.md) |  |
| [chart_search_highlight](#chart-search-highlight) | [Color](../concepts/Color.md) |  |
| [checkerboard_black](#checkerboard-black) | [Color](../concepts/Color.md) |  |
| [checkerboard_white](#checkerboard-white) | [Color](../concepts/Color.md) |  |
| [clear_cursor_volume_modifier](#clear-cursor-volume-modifier) | [float](../concepts/float.md) |  |
| [clipboard_history_size](#clipboard-history-size) | [uint32](../concepts/uint32.md) |  |
| [color_filters](#color-filters) | array[[ColorFilterData](../concepts/ColorFilterData.md)] | yes |
| [construction_robots_use_busy_robots_queue](#construction-robots-use-busy-robots-queue) | [boolean](../concepts/boolean.md) |  |
| [count_button_size](#count-button-size) | [int32](../concepts/int32.md) |  |
| [crafting_queue_slots_per_row](#crafting-queue-slots-per-row) | [uint8](../concepts/uint8.md) |  |
| [daytime_color_lookup](#daytime-color-lookup) | [DaytimeColorLookupTable](../concepts/DaytimeColorLookupTable.md) |  |
| [deconstruct_mark_tint](#deconstruct-mark-tint) | [Color](../concepts/Color.md) |  |
| [default_alert_icon_scale](#default-alert-icon-scale) | [float](../concepts/float.md) |  |
| [default_alert_icon_scale_by_type](#default-alert-icon-scale-by-type) | dictionary[[string](../concepts/string.md) → [float](../concepts/float.md)] | yes |
| [default_alert_icon_shift_by_type](#default-alert-icon-shift-by-type) | dictionary[[string](../concepts/string.md) → [Vector](../concepts/Vector.md)] | yes |
| [default_collision_masks](#default-collision-masks) | dictionary[[string](../concepts/string.md) → [CollisionMask](../concepts/CollisionMask.md)] |  |
| [default_enemy_force_color](#default-enemy-force-color) | [Color](../concepts/Color.md) |  |
| [default_item_weight](#default-item-weight) | [Weight](../concepts/Weight.md) |  |
| [default_other_force_color](#default-other-force-color) | [Color](../concepts/Color.md) |  |
| [default_pipeline_extent](#default-pipeline-extent) | [double](../concepts/double.md) |  |
| [default_planet_procession_set](#default-planet-procession-set) | [ProcessionSet](../concepts/ProcessionSet.md) |  |
| [default_platform_procession_set](#default-platform-procession-set) | [ProcessionSet](../concepts/ProcessionSet.md) |  |
| [default_platform_surface_render_parameters](#default-platform-surface-render-parameters) | [SurfaceRenderParameters](../concepts/SurfaceRenderParameters.md) |  |
| [default_player_force_color](#default-player-force-color) | [Color](../concepts/Color.md) |  |
| [default_rocket_lift_weight](#default-rocket-lift-weight) | [Weight](../concepts/Weight.md) |  |
| [default_scorch_mark_color](#default-scorch-mark-color) | [Color](../concepts/Color.md) |  |
| [default_trigger_target_mask_by_type](#default-trigger-target-mask-by-type) | dictionary[[string](../concepts/string.md) → [TriggerTargetMask](../concepts/TriggerTargetMask.md)] | yes |
| [disabled_recipe_slot_background_tint](#disabled-recipe-slot-background-tint) | [Color](../concepts/Color.md) |  |
| [disabled_recipe_slot_tint](#disabled-recipe-slot-tint) | [Color](../concepts/Color.md) |  |
| [drop_item_radius](#drop-item-radius) | [double](../concepts/double.md) |  |
| [dynamic_recipe_overload_factor](#dynamic-recipe-overload-factor) | [double](../concepts/double.md) |  |
| [ejected_item_direction_variation](#ejected-item-direction-variation) | [double](../concepts/double.md) |  |
| [ejected_item_friction](#ejected-item-friction) | [double](../concepts/double.md) |  |
| [ejected_item_lifetime](#ejected-item-lifetime) | [MapTick](../concepts/MapTick.md) |  |
| [ejected_item_speed](#ejected-item-speed) | [double](../concepts/double.md) |  |
| [enabled_recipe_slot_tint](#enabled-recipe-slot-tint) | [Color](../concepts/Color.md) |  |
| [enemies_in_simulation_volume_modifier](#enemies-in-simulation-volume-modifier) | [float](../concepts/float.md) |  |
| [entity_button_background_color](#entity-button-background-color) | [Color](../concepts/Color.md) |  |
| [entity_renderer_search_box_limits](#entity-renderer-search-box-limits) | [EntityRendererSearchBoxLimits](../concepts/EntityRendererSearchBoxLimits.md) |  |
| [environment_sounds_transition_fade_in_ticks](#environment-sounds-transition-fade-in-ticks) | [uint32](../concepts/uint32.md) |  |
| [equipment_default_background_border_color](#equipment-default-background-border-color) | [Color](../concepts/Color.md) |  |
| [equipment_default_background_color](#equipment-default-background-color) | [Color](../concepts/Color.md) |  |
| [equipment_default_grabbed_background_color](#equipment-default-grabbed-background-color) | [Color](../concepts/Color.md) |  |
| [equipment_disabled_background_tint](#equipment-disabled-background-tint) | [Color](../concepts/Color.md) |  |
| [equipment_disabled_tint](#equipment-disabled-tint) | [Color](../concepts/Color.md) |  |
| [explosions_in_simulation_volume_modifier](#explosions-in-simulation-volume-modifier) | [float](../concepts/float.md) |  |
| [factoriopedia_recycling_recipe_categories](#factoriopedia-recycling-recipe-categories) | array[[RecipeCategoryID](../concepts/RecipeCategoryID.md)] |  |
| [far_away_chunk_generation_radius](#far-away-chunk-generation-radius) | [uint8](../concepts/uint8.md) |  |
| [feedback_screenshot_file_name](#feedback-screenshot-file-name) | [string](../concepts/string.md) |  |
| [feedback_screenshot_subfolder_name](#feedback-screenshot-subfolder-name) | [string](../concepts/string.md) |  |
| [filter_outline_color](#filter-outline-color) | [Color](../concepts/Color.md) |  |
| [flying_text_ttl](#flying-text-ttl) | [int32](../concepts/int32.md) |  |
| [forced_enabled_recipe_slot_background_tint](#forced-enabled-recipe-slot-background-tint) | [Color](../concepts/Color.md) |  |
| [freezing_temperature](#freezing-temperature) | [double](../concepts/double.md) |  |
| [frozen_color_lookup](#frozen-color-lookup) | [ColorLookupTable](../concepts/ColorLookupTable.md) |  |
| [ghost_layer](#ghost-layer) | [CollisionLayerID](../concepts/CollisionLayerID.md) |  |
| [ghost_product_count_tint](#ghost-product-count-tint) | [Color](../concepts/Color.md) |  |
| [ghost_shader_tint](#ghost-shader-tint) | [GhostTintSet](../concepts/GhostTintSet.md) |  |
| [ghost_shaderless_tint](#ghost-shaderless-tint) | [GhostTintSet](../concepts/GhostTintSet.md) |  |
| [ghost_shimmer_settings](#ghost-shimmer-settings) | [GhostShimmerConfig](../concepts/GhostShimmerConfig.md) |  |
| [gui_remark_color](#gui-remark-color) | [Color](../concepts/Color.md) |  |
| [gui_search_match_background_color](#gui-search-match-background-color) | [Color](../concepts/Color.md) |  |
| [gui_search_match_foreground_color](#gui-search-match-foreground-color) | [Color](../concepts/Color.md) |  |
| [huge_area_size](#huge-area-size) | [float](../concepts/float.md) |  |
| [huge_platform_animation_sound_area](#huge-platform-animation-sound-area) | [float](../concepts/float.md) |  |
| [icon_shadow_color](#icon-shadow-color) | [Color](../concepts/Color.md) |  |
| [icon_shadow_inset](#icon-shadow-inset) | [float](../concepts/float.md) |  |
| [icon_shadow_radius](#icon-shadow-radius) | [float](../concepts/float.md) |  |
| [icon_shadow_sharpness](#icon-shadow-sharpness) | [float](../concepts/float.md) |  |
| [inserter_hand_stack_items_per_sprite](#inserter-hand-stack-items-per-sprite) | [ItemCountType](../concepts/ItemCountType.md) |  |
| [inserter_hand_stack_max_sprites](#inserter-hand-stack-max-sprites) | [ItemCountType](../concepts/ItemCountType.md) |  |
| [inventory_width](#inventory-width) | [uint8](../concepts/uint8.md) |  |
| [item_ammo_magazine_left_bar_color](#item-ammo-magazine-left-bar-color) | [Color](../concepts/Color.md) |  |
| [item_default_random_tint_strength](#item-default-random-tint-strength) | [Color](../concepts/Color.md) |  |
| [item_health_bar_colors](#item-health-bar-colors) | array[[ItemHealthColorData](../concepts/ItemHealthColorData.md)] |  |
| [item_outline_color](#item-outline-color) | [Color](../concepts/Color.md) |  |
| [item_outline_inset](#item-outline-inset) | [float](../concepts/float.md) |  |
| [item_outline_radius](#item-outline-radius) | [float](../concepts/float.md) |  |
| [item_outline_sharpness](#item-outline-sharpness) | [float](../concepts/float.md) |  |
| [item_tool_durability_bar_color](#item-tool-durability-bar-color) | [Color](../concepts/Color.md) |  |
| [landing_area_clear_zone_radius](#landing-area-clear-zone-radius) | [float](../concepts/float.md) |  |
| [landing_area_max_radius](#landing-area-max-radius) | [float](../concepts/float.md) |  |
| [landing_squash_immunity](#landing-squash-immunity) | [MapTick](../concepts/MapTick.md) |  |
| [large_area_size](#large-area-size) | [float](../concepts/float.md) |  |
| [large_blueprint_area_size](#large-blueprint-area-size) | [float](../concepts/float.md) |  |
| [light_renderer_search_distance_limit](#light-renderer-search-distance-limit) | [uint8](../concepts/uint8.md) |  |
| [lightning_attractor_collection_range_color](#lightning-attractor-collection-range-color) | [Color](../concepts/Color.md) |  |
| [lightning_attractor_protection_range_color](#lightning-attractor-protection-range-color) | [Color](../concepts/Color.md) |  |
| [logistic_gui_selected_network_highlight_tint](#logistic-gui-selected-network-highlight-tint) | [Color](../concepts/Color.md) |  |
| [logistic_gui_unselected_network_highlight_tint](#logistic-gui-unselected-network-highlight-tint) | [Color](../concepts/Color.md) |  |
| [logistic_robots_use_busy_robots_queue](#logistic-robots-use-busy-robots-queue) | [boolean](../concepts/boolean.md) |  |
| [logistic_slots_per_row](#logistic-slots-per-row) | [uint8](../concepts/uint8.md) |  |
| [low_energy_robot_estimate_multiplier](#low-energy-robot-estimate-multiplier) | [double](../concepts/double.md) |  |
| [main_menu_background_image_location](#main-menu-background-image-location) | [string](../concepts/string.md) |  |
| [main_menu_background_vignette_intensity](#main-menu-background-vignette-intensity) | [float](../concepts/float.md) |  |
| [main_menu_background_vignette_sharpness](#main-menu-background-vignette-sharpness) | [float](../concepts/float.md) |  |
| [main_menu_simulations](#main-menu-simulations) | dictionary[[string](../concepts/string.md) → [SimulationDefinition](../concepts/SimulationDefinition.md)] | yes |
| [manual_rail_building_reach_modifier](#manual-rail-building-reach-modifier) | [double](../concepts/double.md) |  |
| [map_editor](#map-editor) | [EditorUtilityConstants](../concepts/EditorUtilityConstants.md) |  |
| [max_belt_stack_size](#max-belt-stack-size) | [uint8](../concepts/uint8.md) |  |
| [max_logistic_filter_count](#max-logistic-filter-count) | [LogisticFilterIndex](../concepts/LogisticFilterIndex.md) |  |
| [max_terrain_building_size](#max-terrain-building-size) | [uint8](../concepts/uint8.md) |  |
| [maximum_quality_jump](#maximum-quality-jump) | [uint8](../concepts/uint8.md) |  |
| [maximum_recipe_overload_multiplier](#maximum-recipe-overload-multiplier) | [uint32](../concepts/uint32.md) |  |
| [medium_area_size](#medium-area-size) | [float](../concepts/float.md) |  |
| [medium_blueprint_area_size](#medium-blueprint-area-size) | [float](../concepts/float.md) |  |
| [merge_bonus_gui_production_bonuses](#merge-bonus-gui-production-bonuses) | [boolean](../concepts/boolean.md) | yes |
| [minimum_recipe_overload_multiplier](#minimum-recipe-overload-multiplier) | [uint32](../concepts/uint32.md) |  |
| [missing_preview_sprite_location](#missing-preview-sprite-location) | [string](../concepts/string.md) |  |
| [module_inventory_width](#module-inventory-width) | [uint8](../concepts/uint8.md) |  |
| [moving_sound_count_reduction_rate](#moving-sound-count-reduction-rate) | [float](../concepts/float.md) |  |
| [player_colors](#player-colors) | array[[PlayerColorData](../concepts/PlayerColorData.md)] |  |
| [probability_product_count_tint](#probability-product-count-tint) | [Color](../concepts/Color.md) |  |
| [quality_selector_dropdown_threshold](#quality-selector-dropdown-threshold) | [uint8](../concepts/uint8.md) |  |
| [rail_planner_count_button_color](#rail-planner-count-button-color) | [Color](../concepts/Color.md) |  |
| [rail_segment_colors](#rail-segment-colors) | array[[Color](../concepts/Color.md)] |  |
| [recipe_step_limit](#recipe-step-limit) | [uint32](../concepts/uint32.md) |  |
| [remote_view_LPF_max_cutoff_frequency](#remote-view-lpf-max-cutoff-frequency) | [float](../concepts/float.md) |  |
| [remote_view_LPF_min_cutoff_frequency](#remote-view-lpf-min-cutoff-frequency) | [float](../concepts/float.md) |  |
| [script_command_console_chat_color](#script-command-console-chat-color) | [Color](../concepts/Color.md) |  |
| [select_group_row_count](#select-group-row-count) | [uint8](../concepts/uint8.md) |  |
| [select_slot_row_count](#select-slot-row-count) | [uint8](../concepts/uint8.md) |  |
| [selected_chart_search_highlight](#selected-chart-search-highlight) | [Color](../concepts/Color.md) |  |
| [server_command_console_chat_color](#server-command-console-chat-color) | [Color](../concepts/Color.md) |  |
| [show_chunk_components_collision_mask](#show-chunk-components-collision-mask) | [CollisionMask](../concepts/CollisionMask.md) |  |
| [small_area_size](#small-area-size) | [float](../concepts/float.md) |  |
| [small_blueprint_area_size](#small-blueprint-area-size) | [float](../concepts/float.md) |  |
| [sound_fade_ticks](#sound-fade-ticks) | [uint32](../concepts/uint32.md) |  |
| [space_LPF_max_cutoff_frequency](#space-lpf-max-cutoff-frequency) | [float](../concepts/float.md) |  |
| [space_LPF_min_cutoff_frequency](#space-lpf-min-cutoff-frequency) | [float](../concepts/float.md) |  |
| [space_platform_acceleration_expression](#space-platform-acceleration-expression) | [MathExpression](../concepts/MathExpression.md) |  |
| [space_platform_asteroid_chunk_trajectory_updates_per_tick](#space-platform-asteroid-chunk-trajectory-updates-per-tick) | [uint32](../concepts/uint32.md) |  |
| [space_platform_dump_cooldown](#space-platform-dump-cooldown) | [uint32](../concepts/uint32.md) |  |
| [space_platform_manual_dump_cooldown](#space-platform-manual-dump-cooldown) | [uint32](../concepts/uint32.md) |  |
| [space_platform_max_relative_speed_deviation_for_asteroid_chunks_update](#space-platform-max-relative-speed-deviation-for-asteroid-chunks-update) | [float](../concepts/float.md) |  |
| [space_platform_max_size](#space-platform-max-size) | [SimpleBoundingBox](../concepts/SimpleBoundingBox.md) |  |
| [space_platform_relative_speed_factor](#space-platform-relative-speed-factor) | [double](../concepts/double.md) |  |
| [space_platform_starfield_movement_vector](#space-platform-starfield-movement-vector) | [Vector](../concepts/Vector.md) |  |
| [spawner_evolution_factor_health_modifier](#spawner-evolution-factor-health-modifier) | [float](../concepts/float.md) |  |
| [starmap_orbit_clicked_color](#starmap-orbit-clicked-color) | [Color](../concepts/Color.md) |  |
| [starmap_orbit_default_color](#starmap-orbit-default-color) | [Color](../concepts/Color.md) |  |
| [starmap_orbit_disabled_color](#starmap-orbit-disabled-color) | [Color](../concepts/Color.md) |  |
| [starmap_orbit_hovered_color](#starmap-orbit-hovered-color) | [Color](../concepts/Color.md) |  |
| [tall_entity_smoke_tint](#tall-entity-smoke-tint) | [Color](../concepts/Color.md) |  |
| [tall_entity_tint](#tall-entity-tint) | [Color](../concepts/Color.md) |  |
| [time_to_show_full_health_bar](#time-to-show-full-health-bar) | [MapTick](../concepts/MapTick.md) |  |
| [tooltip_monitor_edge_border](#tooltip-monitor-edge-border) | [int32](../concepts/int32.md) |  |
| [train_inactivity_wait_condition_default](#train-inactivity-wait-condition-default) | [uint32](../concepts/uint32.md) |  |
| [train_on_elevated_rail_shadow_shift_multiplier](#train-on-elevated-rail-shadow-shift-multiplier) | [Vector](../concepts/Vector.md) |  |
| [train_path_finding](#train-path-finding) | [TrainPathFinderConstants](../concepts/TrainPathFinderConstants.md) |  |
| [train_pushed_by_player_ignores_friction](#train-pushed-by-player-ignores-friction) | [boolean](../concepts/boolean.md) |  |
| [train_pushed_by_player_max_acceleration](#train-pushed-by-player-max-acceleration) | [double](../concepts/double.md) |  |
| [train_pushed_by_player_max_speed](#train-pushed-by-player-max-speed) | [double](../concepts/double.md) |  |
| [train_temporary_stop_wait_time](#train-temporary-stop-wait-time) | [uint32](../concepts/uint32.md) |  |
| [train_time_wait_condition_default](#train-time-wait-condition-default) | [uint32](../concepts/uint32.md) |  |
| [train_visualization](#train-visualization) | [TrainVisualizationConstants](../concepts/TrainVisualizationConstants.md) |  |
| [trash_inventory_width](#trash-inventory-width) | [uint8](../concepts/uint8.md) |  |
| [tree_leaf_distortion_distortion_far](#tree-leaf-distortion-distortion-far) | [Vector](../concepts/Vector.md) |  |
| [tree_leaf_distortion_distortion_near](#tree-leaf-distortion-distortion-near) | [Vector](../concepts/Vector.md) |  |
| [tree_leaf_distortion_speed_far](#tree-leaf-distortion-speed-far) | [Vector](../concepts/Vector.md) |  |
| [tree_leaf_distortion_speed_near](#tree-leaf-distortion-speed-near) | [Vector](../concepts/Vector.md) |  |
| [tree_leaf_distortion_strength_far](#tree-leaf-distortion-strength-far) | [Vector](../concepts/Vector.md) |  |
| [tree_leaf_distortion_strength_near](#tree-leaf-distortion-strength-near) | [Vector](../concepts/Vector.md) |  |
| [tree_shadow_roughness](#tree-shadow-roughness) | [float](../concepts/float.md) |  |
| [tree_shadow_speed](#tree-shadow-speed) | [float](../concepts/float.md) |  |
| [turret_range_visualization_color](#turret-range-visualization-color) | [Color](../concepts/Color.md) |  |
| [underground_belt_max_distance_tint](#underground-belt-max-distance-tint) | [Color](../concepts/Color.md) |  |
| [underground_pipe_max_distance_tint](#underground-pipe-max-distance-tint) | [Color](../concepts/Color.md) |  |
| [unit_group_max_pursue_distance](#unit-group-max-pursue-distance) | [double](../concepts/double.md) |  |
| [unit_group_pathfind_resolution](#unit-group-pathfind-resolution) | [int8](../concepts/int8.md) |  |
| [walking_sound_count_reduction_rate](#walking-sound-count-reduction-rate) | [float](../concepts/float.md) |  |
| [water_collision_mask](#water-collision-mask) | [TileCollisionMask](../concepts/TileCollisionMask.md) |  |
| [weapons_in_simulation_volume_modifier](#weapons-in-simulation-volume-modifier) | [float](../concepts/float.md) |  |
| [zero_count_value_tint](#zero-count-value-tint) | [Color](../concepts/Color.md) |  |
| [zoom_to_world_can_use_nightvision](#zoom-to-world-can-use-nightvision) | [boolean](../concepts/boolean.md) |  |
| [zoom_to_world_daytime_color_lookup](#zoom-to-world-daytime-color-lookup) | [DaytimeColorLookupTable](../concepts/DaytimeColorLookupTable.md) |  |
| [zoom_to_world_effect_strength](#zoom-to-world-effect-strength) | [float](../concepts/float.md) |  |

### agricultural_range_visualization_color

**Type:** [Color](../concepts/Color.md)

### artillery_range_visualization_color

**Type:** [Color](../concepts/Color.md)

### asteroid_collector_blockage_update_tile_distance

**Type:** [uint32](../concepts/uint32.md)

### asteroid_collector_max_nurbs_control_point_separation

**Type:** [double](../concepts/double.md)

### asteroid_collector_navmesh_refresh_tick_interval

**Type:** [uint32](../concepts/uint32.md)

### asteroid_collector_static_head_swing_segment_count

**Type:** [uint32](../concepts/uint32.md)

### asteroid_collector_static_head_swing_strength_scale

**Type:** [float](../concepts/float.md)

### asteroid_fading_range

**Type:** [float](../concepts/float.md)

### asteroid_min_damage_modifier

**Type:** [float](../concepts/float.md)

Asteroid damage will be multiplied by this value when space platform speed is zero and will linearly increase until asteroid_spawning_with_random_orientation_max_speed is reached.

### asteroid_position_offset_to_speed_coefficient

**Type:** [double](../concepts/double.md)

### asteroid_spawning_offset

**Type:** [SimpleBoundingBox](../concepts/SimpleBoundingBox.md)

### asteroid_spawning_with_random_orientation_max_speed

**Type:** [double](../concepts/double.md)

In km per tick.

### blueprint_big_slots_per_row

**Type:** [uint8](../concepts/uint8.md)

Will be clamped to the range [2, 100].

### blueprint_small_slots_per_row

**Type:** [uint8](../concepts/uint8.md)

Will be clamped to the range [2, 100].

### bonus_gui_ordering

**Type:** [BonusUtilityConstants](../concepts/BonusUtilityConstants.md)

The base game uses more entries here that are applied via the `ammo-category.lua` file.

### building_buildable_tint

**Type:** [Color](../concepts/Color.md)

### building_buildable_too_far_tint

**Type:** [Color](../concepts/Color.md)

### building_collision_mask

**Type:** [CollisionMask](../concepts/CollisionMask.md)

### building_ignorable_tint

**Type:** [Color](../concepts/Color.md)

### building_no_tint

**Type:** [Color](../concepts/Color.md)

### building_not_buildable_tint

**Type:** [Color](../concepts/Color.md)

### capsule_range_visualization_color

**Type:** [Color](../concepts/Color.md)

### capture_water_mask_at_layer

**Type:** [uint8](../concepts/uint8.md)

Layer within `ground-natural` [tile render layer](../types/TileRenderLayer.md) group, before which terrain lightmap alpha channel is copied into water mask. Decals, which need to be masked by water should have their [DecorativePrototype::tile_layer](../prototypes/DecorativePrototype.md#tile-layer) set to only slightly larger value than `capture_water_mask_at_layer`, to avoid risk of undefined behavior caused by rendering tiles into layers between `capture_water_mask_at_layer` and decal's `tile_layer`.

### chart

**Type:** [ChartUtilityConstants](../concepts/ChartUtilityConstants.md)

Chart means map and minimap.

### chart_search_highlight

**Type:** [Color](../concepts/Color.md)

### checkerboard_black

**Type:** [Color](../concepts/Color.md)

### checkerboard_white

**Type:** [Color](../concepts/Color.md)

### clear_cursor_volume_modifier

**Type:** [float](../concepts/float.md)

### clipboard_history_size

**Type:** [uint32](../concepts/uint32.md)

### color_filters

**Type:** array[[ColorFilterData](../concepts/ColorFilterData.md)] · _optional_

### construction_robots_use_busy_robots_queue

**Type:** [boolean](../concepts/boolean.md)

### count_button_size

**Type:** [int32](../concepts/int32.md)

### crafting_queue_slots_per_row

**Type:** [uint8](../concepts/uint8.md)

Will be clamped to the range [1, 100].

### daytime_color_lookup

**Type:** [DaytimeColorLookupTable](../concepts/DaytimeColorLookupTable.md)

### deconstruct_mark_tint

**Type:** [Color](../concepts/Color.md)

### default_alert_icon_scale

**Type:** [float](../concepts/float.md)

### default_alert_icon_scale_by_type

**Type:** dictionary[[string](../concepts/string.md) → [float](../concepts/float.md)] · _optional_

### default_alert_icon_shift_by_type

**Type:** dictionary[[string](../concepts/string.md) → [Vector](../concepts/Vector.md)] · _optional_

### default_collision_masks

**Type:** dictionary[[string](../concepts/string.md) → [CollisionMask](../concepts/CollisionMask.md)]

The strings can be entity types or custom strings.

### default_enemy_force_color

**Type:** [Color](../concepts/Color.md)

### default_item_weight

**Type:** [Weight](../concepts/Weight.md)

### default_other_force_color

**Type:** [Color](../concepts/Color.md)

### default_pipeline_extent

**Type:** [double](../concepts/double.md)

The default value of [FluidBox::max_pipeline_extent](../types/FluidBox.md#max-pipeline-extent).

### default_planet_procession_set

**Type:** [ProcessionSet](../concepts/ProcessionSet.md)

Must contain arrival and departure with [procession_style](../prototypes/ProcessionPrototype.md#procession-style) containing 0.

### default_platform_procession_set

**Type:** [ProcessionSet](../concepts/ProcessionSet.md)

Must contain arrival and departure with [procession_style](../prototypes/ProcessionPrototype.md#procession-style) containing 0.

### default_platform_surface_render_parameters

**Type:** [SurfaceRenderParameters](../concepts/SurfaceRenderParameters.md)

### default_player_force_color

**Type:** [Color](../concepts/Color.md)

### default_rocket_lift_weight

**Type:** [Weight](../concepts/Weight.md)

Used for "Rocket capacity" item tooltip and for comparing rocket silo lift weight in GUI to this value.

### default_scorch_mark_color

**Type:** [Color](../concepts/Color.md)

### default_trigger_target_mask_by_type

**Type:** dictionary[[string](../concepts/string.md) → [TriggerTargetMask](../concepts/TriggerTargetMask.md)] · _optional_

The strings are entity types.

### disabled_recipe_slot_background_tint

**Type:** [Color](../concepts/Color.md)

### disabled_recipe_slot_tint

**Type:** [Color](../concepts/Color.md)

### drop_item_radius

**Type:** [double](../concepts/double.md)

### dynamic_recipe_overload_factor

**Type:** [double](../concepts/double.md)

### ejected_item_direction_variation

**Type:** [double](../concepts/double.md)

Silently clamped to be between 0 and 0.99.

### ejected_item_friction

**Type:** [double](../concepts/double.md)

Silently clamped to be between 0 and 1.

### ejected_item_lifetime

**Type:** [MapTick](../concepts/MapTick.md)

Silently clamped to be between 1 tick and 5 minutes (`5 * 60 * 60` ticks).

### ejected_item_speed

**Type:** [double](../concepts/double.md)

Silently clamped to be between 0 and 1/60.

### enabled_recipe_slot_tint

**Type:** [Color](../concepts/Color.md)

### enemies_in_simulation_volume_modifier

**Type:** [float](../concepts/float.md)

### entity_button_background_color

**Type:** [Color](../concepts/Color.md)

### entity_renderer_search_box_limits

**Type:** [EntityRendererSearchBoxLimits](../concepts/EntityRendererSearchBoxLimits.md)

### environment_sounds_transition_fade_in_ticks

**Type:** [uint32](../concepts/uint32.md)

### equipment_default_background_border_color

**Type:** [Color](../concepts/Color.md)

### equipment_default_background_color

**Type:** [Color](../concepts/Color.md)

### equipment_default_grabbed_background_color

**Type:** [Color](../concepts/Color.md)

### equipment_disabled_background_tint

**Type:** [Color](../concepts/Color.md)

### equipment_disabled_tint

**Type:** [Color](../concepts/Color.md)

### explosions_in_simulation_volume_modifier

**Type:** [float](../concepts/float.md)

### factoriopedia_recycling_recipe_categories

**Type:** array[[RecipeCategoryID](../concepts/RecipeCategoryID.md)]

### far_away_chunk_generation_radius

**Type:** [uint8](../concepts/uint8.md)

### feedback_screenshot_file_name

**Type:** [string](../concepts/string.md)

### feedback_screenshot_subfolder_name

**Type:** [string](../concepts/string.md)

### filter_outline_color

**Type:** [Color](../concepts/Color.md)

### flying_text_ttl

**Type:** [int32](../concepts/int32.md)

Must be >= 1.

### forced_enabled_recipe_slot_background_tint

**Type:** [Color](../concepts/Color.md)

### freezing_temperature

**Type:** [double](../concepts/double.md)

Will be clamped to a positive number, starting at 0.

### frozen_color_lookup

**Type:** [ColorLookupTable](../concepts/ColorLookupTable.md)

### ghost_layer

**Type:** [CollisionLayerID](../concepts/CollisionLayerID.md)

### ghost_product_count_tint

**Type:** [Color](../concepts/Color.md)

### ghost_shader_tint

**Type:** [GhostTintSet](../concepts/GhostTintSet.md)

### ghost_shaderless_tint

**Type:** [GhostTintSet](../concepts/GhostTintSet.md)

### ghost_shimmer_settings

**Type:** [GhostShimmerConfig](../concepts/GhostShimmerConfig.md)

### gui_remark_color

**Type:** [Color](../concepts/Color.md)

### gui_search_match_background_color

**Type:** [Color](../concepts/Color.md)

### gui_search_match_foreground_color

**Type:** [Color](../concepts/Color.md)

### huge_area_size

**Type:** [float](../concepts/float.md)

### huge_platform_animation_sound_area

**Type:** [float](../concepts/float.md)

### icon_shadow_color

**Type:** [Color](../concepts/Color.md)

### icon_shadow_inset

**Type:** [float](../concepts/float.md)

### icon_shadow_radius

**Type:** [float](../concepts/float.md)

### icon_shadow_sharpness

**Type:** [float](../concepts/float.md)

### inserter_hand_stack_items_per_sprite

**Type:** [ItemCountType](../concepts/ItemCountType.md)

Must be >= 1.

### inserter_hand_stack_max_sprites

**Type:** [ItemCountType](../concepts/ItemCountType.md)

Must be >= 1.

### inventory_width

**Type:** [uint8](../concepts/uint8.md)

Will be clamped to the range [1, 100].

### item_ammo_magazine_left_bar_color

**Type:** [Color](../concepts/Color.md)

### item_default_random_tint_strength

**Type:** [Color](../concepts/Color.md)

### item_health_bar_colors

**Type:** array[[ItemHealthColorData](../concepts/ItemHealthColorData.md)]

There must be one array item with a threshold of `0`.

### item_outline_color

**Type:** [Color](../concepts/Color.md)

### item_outline_inset

**Type:** [float](../concepts/float.md)

### item_outline_radius

**Type:** [float](../concepts/float.md)

### item_outline_sharpness

**Type:** [float](../concepts/float.md)

### item_tool_durability_bar_color

**Type:** [Color](../concepts/Color.md)

### landing_area_clear_zone_radius

**Type:** [float](../concepts/float.md)

Radius of area where cargo pods won't land.

### landing_area_max_radius

**Type:** [float](../concepts/float.md)

Max radius where cargo pods will land.

### landing_squash_immunity

**Type:** [MapTick](../concepts/MapTick.md)

### large_area_size

**Type:** [float](../concepts/float.md)

### large_blueprint_area_size

**Type:** [float](../concepts/float.md)

### light_renderer_search_distance_limit

**Type:** [uint8](../concepts/uint8.md)

Can be set to anything from range 0 to 255, but larger values will be clamped to 160. Setting it to larger values can have performance impact (growing geometrically).

### lightning_attractor_collection_range_color

**Type:** [Color](../concepts/Color.md)

### lightning_attractor_protection_range_color

**Type:** [Color](../concepts/Color.md)

### logistic_gui_selected_network_highlight_tint

**Type:** [Color](../concepts/Color.md)

### logistic_gui_unselected_network_highlight_tint

**Type:** [Color](../concepts/Color.md)

### logistic_robots_use_busy_robots_queue

**Type:** [boolean](../concepts/boolean.md)

### logistic_slots_per_row

**Type:** [uint8](../concepts/uint8.md)

Will be clamped to the range [2, 100].

### low_energy_robot_estimate_multiplier

**Type:** [double](../concepts/double.md)

### main_menu_background_image_location

**Type:** [string](../concepts/string.md)

### main_menu_background_vignette_intensity

**Type:** [float](../concepts/float.md)

### main_menu_background_vignette_sharpness

**Type:** [float](../concepts/float.md)

### main_menu_simulations

**Type:** dictionary[[string](../concepts/string.md) → [SimulationDefinition](../concepts/SimulationDefinition.md)] · _optional_

The strings represent the names of the simulations.

### manual_rail_building_reach_modifier

**Type:** [double](../concepts/double.md)

### map_editor

**Type:** [EditorUtilityConstants](../concepts/EditorUtilityConstants.md)

### max_belt_stack_size

**Type:** [uint8](../concepts/uint8.md)

Must be >= 1.

### max_logistic_filter_count

**Type:** [LogisticFilterIndex](../concepts/LogisticFilterIndex.md)

### max_terrain_building_size

**Type:** [uint8](../concepts/uint8.md)

### maximum_quality_jump

**Type:** [uint8](../concepts/uint8.md)

Cap for how many steps of quality the output of something (miner/crafter) may be higher than the input (resource/ingredients). Must be >= 1.

### maximum_recipe_overload_multiplier

**Type:** [uint32](../concepts/uint32.md)

### medium_area_size

**Type:** [float](../concepts/float.md)

### medium_blueprint_area_size

**Type:** [float](../concepts/float.md)

### merge_bonus_gui_production_bonuses

**Type:** [boolean](../concepts/boolean.md) · _optional_

If not set, defaults to `true` when modded and `false` when vanilla.

### minimum_recipe_overload_multiplier

**Type:** [uint32](../concepts/uint32.md)

### missing_preview_sprite_location

**Type:** [string](../concepts/string.md)

### module_inventory_width

**Type:** [uint8](../concepts/uint8.md)

Will be clamped to the range [1, 100].

### moving_sound_count_reduction_rate

**Type:** [float](../concepts/float.md)

Silently clamped to be between 0 and 1.

### player_colors

**Type:** array[[PlayerColorData](../concepts/PlayerColorData.md)]

The table with `name = "default"` must exist and be the first member of the array.

### probability_product_count_tint

**Type:** [Color](../concepts/Color.md)

### quality_selector_dropdown_threshold

**Type:** [uint8](../concepts/uint8.md)

### rail_planner_count_button_color

**Type:** [Color](../concepts/Color.md)

### rail_segment_colors

**Type:** array[[Color](../concepts/Color.md)]

### recipe_step_limit

**Type:** [uint32](../concepts/uint32.md)

### remote_view_LPF_max_cutoff_frequency

**Type:** [float](../concepts/float.md)

### remote_view_LPF_min_cutoff_frequency

**Type:** [float](../concepts/float.md)

### script_command_console_chat_color

**Type:** [Color](../concepts/Color.md)

### select_group_row_count

**Type:** [uint8](../concepts/uint8.md)

Will be clamped to the range [1, 100].

### select_slot_row_count

**Type:** [uint8](../concepts/uint8.md)

Will be clamped to the range [1, 100].

### selected_chart_search_highlight

**Type:** [Color](../concepts/Color.md)

### server_command_console_chat_color

**Type:** [Color](../concepts/Color.md)

### show_chunk_components_collision_mask

**Type:** [CollisionMask](../concepts/CollisionMask.md)

### small_area_size

**Type:** [float](../concepts/float.md)

### small_blueprint_area_size

**Type:** [float](../concepts/float.md)

### sound_fade_ticks

**Type:** [uint32](../concepts/uint32.md)

### space_LPF_max_cutoff_frequency

**Type:** [float](../concepts/float.md)

### space_LPF_min_cutoff_frequency

**Type:** [float](../concepts/float.md)

### space_platform_acceleration_expression

**Type:** [MathExpression](../concepts/MathExpression.md)

Variables: `speed, thrust, weight, width, height`

### space_platform_asteroid_chunk_trajectory_updates_per_tick

**Type:** [uint32](../concepts/uint32.md)

How many asteroid chunks should be processed per tick, see [space_platform_max_relative_speed_deviation_for_asteroid_chunks_update](../prototypes/UtilityConstants.md#space-platform-max-relative-speed-deviation-for-asteroid-chunks-update).

### space_platform_dump_cooldown

**Type:** [uint32](../concepts/uint32.md)

Determines how fast space platforms will send items in drop slots to the surface. Each item type has its own cooldown.

### space_platform_manual_dump_cooldown

**Type:** [uint32](../concepts/uint32.md)

Delay after manual transfer until space platform sends items in drop slots to the surface. Overrides remaining space_platform_dump_cooldown in this instance.

### space_platform_max_relative_speed_deviation_for_asteroid_chunks_update

**Type:** [float](../concepts/float.md)

Space platform remembers relative speed range which asteroids use while it moves. When the range is larger than the specified deviation, the platform will start updating cached trajectories of all asteroid chunks over multiple ticks.

### space_platform_max_size

**Type:** [SimpleBoundingBox](../concepts/SimpleBoundingBox.md)

### space_platform_relative_speed_factor

**Type:** [double](../concepts/double.md)

### space_platform_starfield_movement_vector

**Type:** [Vector](../concepts/Vector.md)

### spawner_evolution_factor_health_modifier

**Type:** [float](../concepts/float.md)

### starmap_orbit_clicked_color

**Type:** [Color](../concepts/Color.md)

### starmap_orbit_default_color

**Type:** [Color](../concepts/Color.md)

### starmap_orbit_disabled_color

**Type:** [Color](../concepts/Color.md)

### starmap_orbit_hovered_color

**Type:** [Color](../concepts/Color.md)

### tall_entity_smoke_tint

**Type:** [Color](../concepts/Color.md)

All trivial smoke will be tinted with this value when "Hide tall entities" mode is active.

### tall_entity_tint

**Type:** [Color](../concepts/Color.md)

Tall entities will be tinted with this value when "Hide tall entities" mode is active.

### time_to_show_full_health_bar

**Type:** [MapTick](../concepts/MapTick.md)

The number of ticks to show a segmented unit's health bar after fully regenerating.

### tooltip_monitor_edge_border

**Type:** [int32](../concepts/int32.md)

Must be >= 1.

### train_inactivity_wait_condition_default

**Type:** [uint32](../concepts/uint32.md)

### train_on_elevated_rail_shadow_shift_multiplier

**Type:** [Vector](../concepts/Vector.md)

### train_path_finding

**Type:** [TrainPathFinderConstants](../concepts/TrainPathFinderConstants.md)

### train_pushed_by_player_ignores_friction

**Type:** [boolean](../concepts/boolean.md)

### train_pushed_by_player_max_acceleration

**Type:** [double](../concepts/double.md)

### train_pushed_by_player_max_speed

**Type:** [double](../concepts/double.md)

### train_temporary_stop_wait_time

**Type:** [uint32](../concepts/uint32.md)

### train_time_wait_condition_default

**Type:** [uint32](../concepts/uint32.md)

### train_visualization

**Type:** [TrainVisualizationConstants](../concepts/TrainVisualizationConstants.md)

### trash_inventory_width

**Type:** [uint8](../concepts/uint8.md)

Will be clamped to the range [1, 100].

### tree_leaf_distortion_distortion_far

**Type:** [Vector](../concepts/Vector.md)

### tree_leaf_distortion_distortion_near

**Type:** [Vector](../concepts/Vector.md)

### tree_leaf_distortion_speed_far

**Type:** [Vector](../concepts/Vector.md)

### tree_leaf_distortion_speed_near

**Type:** [Vector](../concepts/Vector.md)

### tree_leaf_distortion_strength_far

**Type:** [Vector](../concepts/Vector.md)

### tree_leaf_distortion_strength_near

**Type:** [Vector](../concepts/Vector.md)

### tree_shadow_roughness

**Type:** [float](../concepts/float.md)

### tree_shadow_speed

**Type:** [float](../concepts/float.md)

### turret_range_visualization_color

**Type:** [Color](../concepts/Color.md)

### underground_belt_max_distance_tint

**Type:** [Color](../concepts/Color.md)

### underground_pipe_max_distance_tint

**Type:** [Color](../concepts/Color.md)

### unit_group_max_pursue_distance

**Type:** [double](../concepts/double.md)

### unit_group_pathfind_resolution

**Type:** [int8](../concepts/int8.md)

### walking_sound_count_reduction_rate

**Type:** [float](../concepts/float.md)

Silently clamped to be between 0 and 1.

### water_collision_mask

**Type:** [TileCollisionMask](../concepts/TileCollisionMask.md)

### weapons_in_simulation_volume_modifier

**Type:** [float](../concepts/float.md)

### zero_count_value_tint

**Type:** [Color](../concepts/Color.md)

### zoom_to_world_can_use_nightvision

**Type:** [boolean](../concepts/boolean.md)

### zoom_to_world_daytime_color_lookup

**Type:** [DaytimeColorLookupTable](../concepts/DaytimeColorLookupTable.md)

### zoom_to_world_effect_strength

**Type:** [float](../concepts/float.md)
