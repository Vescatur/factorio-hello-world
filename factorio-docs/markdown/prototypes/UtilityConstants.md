# UtilityConstants

_prototype_

**Prototype type string:** `type = "utility-constants"`

**Inherits from:** [PrototypeBase](../prototypes/PrototypeBase.md)

Constants used by the game that are not specific to certain prototypes. See [utility-constants.lua](https://github.com/wube/factorio-data/blob/master/core/prototypes/utility-constants.lua) for the values used by the base game.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [agricultural_range_visualization_color](#agricultural-range-visualization-color) | [Color](../types/Color.md) |  |
| [artillery_range_visualization_color](#artillery-range-visualization-color) | [Color](../types/Color.md) |  |
| [asteroid_collector_blockage_update_tile_distance](#asteroid-collector-blockage-update-tile-distance) | [uint32](../types/uint32.md) |  |
| [asteroid_collector_max_nurbs_control_point_separation](#asteroid-collector-max-nurbs-control-point-separation) | [double](../types/double.md) |  |
| [asteroid_collector_navmesh_refresh_tick_interval](#asteroid-collector-navmesh-refresh-tick-interval) | [uint32](../types/uint32.md) |  |
| [asteroid_collector_static_head_swing_segment_count](#asteroid-collector-static-head-swing-segment-count) | [uint32](../types/uint32.md) |  |
| [asteroid_collector_static_head_swing_strength_scale](#asteroid-collector-static-head-swing-strength-scale) | [float](../types/float.md) |  |
| [asteroid_fading_range](#asteroid-fading-range) | [float](../types/float.md) |  |
| [asteroid_min_damage_modifier](#asteroid-min-damage-modifier) | [float](../types/float.md) |  |
| [asteroid_position_offset_to_speed_coefficient](#asteroid-position-offset-to-speed-coefficient) | [double](../types/double.md) |  |
| [asteroid_spawning_offset](#asteroid-spawning-offset) | [SimpleBoundingBox](../types/SimpleBoundingBox.md) |  |
| [asteroid_spawning_with_random_orientation_max_speed](#asteroid-spawning-with-random-orientation-max-speed) | [double](../types/double.md) |  |
| [blueprint_big_slots_per_row](#blueprint-big-slots-per-row) | [uint8](../types/uint8.md) |  |
| [blueprint_small_slots_per_row](#blueprint-small-slots-per-row) | [uint8](../types/uint8.md) |  |
| [bonus_gui_ordering](#bonus-gui-ordering) | [BonusUtilityConstants](../types/BonusUtilityConstants.md) |  |
| [building_buildable_tint](#building-buildable-tint) | [Color](../types/Color.md) |  |
| [building_buildable_too_far_tint](#building-buildable-too-far-tint) | [Color](../types/Color.md) |  |
| [building_collision_mask](#building-collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) |  |
| [building_ignorable_tint](#building-ignorable-tint) | [Color](../types/Color.md) |  |
| [building_no_tint](#building-no-tint) | [Color](../types/Color.md) |  |
| [building_not_buildable_tint](#building-not-buildable-tint) | [Color](../types/Color.md) |  |
| [capsule_range_visualization_color](#capsule-range-visualization-color) | [Color](../types/Color.md) |  |
| [capture_water_mask_at_layer](#capture-water-mask-at-layer) | [uint8](../types/uint8.md) |  |
| [chart](#chart) | [ChartUtilityConstants](../types/ChartUtilityConstants.md) |  |
| [chart_search_highlight](#chart-search-highlight) | [Color](../types/Color.md) |  |
| [checkerboard_black](#checkerboard-black) | [Color](../types/Color.md) |  |
| [checkerboard_white](#checkerboard-white) | [Color](../types/Color.md) |  |
| [clear_cursor_volume_modifier](#clear-cursor-volume-modifier) | [float](../types/float.md) |  |
| [clipboard_history_size](#clipboard-history-size) | [uint32](../types/uint32.md) |  |
| [color_filters](#color-filters) | array[[ColorFilterData](../types/ColorFilterData.md)] | yes |
| [construction_robots_use_busy_robots_queue](#construction-robots-use-busy-robots-queue) | [boolean](../types/boolean.md) |  |
| [count_button_size](#count-button-size) | [int32](../types/int32.md) |  |
| [crafting_queue_slots_per_row](#crafting-queue-slots-per-row) | [uint8](../types/uint8.md) |  |
| [daytime_color_lookup](#daytime-color-lookup) | [DaytimeColorLookupTable](../types/DaytimeColorLookupTable.md) |  |
| [deconstruct_mark_tint](#deconstruct-mark-tint) | [Color](../types/Color.md) |  |
| [default_alert_icon_scale](#default-alert-icon-scale) | [float](../types/float.md) |  |
| [default_alert_icon_scale_by_type](#default-alert-icon-scale-by-type) | dictionary[[string](../types/string.md) → [float](../types/float.md)] | yes |
| [default_alert_icon_shift_by_type](#default-alert-icon-shift-by-type) | dictionary[[string](../types/string.md) → [Vector](../types/Vector.md)] | yes |
| [default_collision_masks](#default-collision-masks) | dictionary[[string](../types/string.md) → [CollisionMaskConnector](../types/CollisionMaskConnector.md)] |  |
| [default_enemy_force_color](#default-enemy-force-color) | [Color](../types/Color.md) |  |
| [default_item_weight](#default-item-weight) | [Weight](../types/Weight.md) |  |
| [default_other_force_color](#default-other-force-color) | [Color](../types/Color.md) |  |
| [default_pipeline_extent](#default-pipeline-extent) | [double](../types/double.md) |  |
| [default_planet_procession_set](#default-planet-procession-set) | [ProcessionSet](../types/ProcessionSet.md) |  |
| [default_platform_procession_set](#default-platform-procession-set) | [ProcessionSet](../types/ProcessionSet.md) |  |
| [default_platform_surface_render_parameters](#default-platform-surface-render-parameters) | [SurfaceRenderParameters](../types/SurfaceRenderParameters.md) |  |
| [default_player_force_color](#default-player-force-color) | [Color](../types/Color.md) |  |
| [default_rocket_lift_weight](#default-rocket-lift-weight) | [Weight](../types/Weight.md) |  |
| [default_scorch_mark_color](#default-scorch-mark-color) | [Color](../types/Color.md) |  |
| [default_trigger_target_mask_by_type](#default-trigger-target-mask-by-type) | dictionary[[string](../types/string.md) → [TriggerTargetMask](../types/TriggerTargetMask.md)] | yes |
| [disabled_recipe_slot_background_tint](#disabled-recipe-slot-background-tint) | [Color](../types/Color.md) |  |
| [disabled_recipe_slot_tint](#disabled-recipe-slot-tint) | [Color](../types/Color.md) |  |
| [drop_item_radius](#drop-item-radius) | [double](../types/double.md) |  |
| [dynamic_recipe_overload_factor](#dynamic-recipe-overload-factor) | [double](../types/double.md) |  |
| [ejected_item_direction_variation](#ejected-item-direction-variation) | [double](../types/double.md) |  |
| [ejected_item_friction](#ejected-item-friction) | [double](../types/double.md) |  |
| [ejected_item_lifetime](#ejected-item-lifetime) | [MapTick](../types/MapTick.md) |  |
| [ejected_item_speed](#ejected-item-speed) | [double](../types/double.md) |  |
| [enabled_recipe_slot_tint](#enabled-recipe-slot-tint) | [Color](../types/Color.md) |  |
| [enemies_in_simulation_volume_modifier](#enemies-in-simulation-volume-modifier) | [float](../types/float.md) |  |
| [entity_button_background_color](#entity-button-background-color) | [Color](../types/Color.md) |  |
| [entity_renderer_search_box_limits](#entity-renderer-search-box-limits) | [EntityRendererSearchBoxLimits](../types/EntityRendererSearchBoxLimits.md) |  |
| [environment_sounds_transition_fade_in_ticks](#environment-sounds-transition-fade-in-ticks) | [uint32](../types/uint32.md) |  |
| [equipment_default_background_border_color](#equipment-default-background-border-color) | [Color](../types/Color.md) |  |
| [equipment_default_background_color](#equipment-default-background-color) | [Color](../types/Color.md) |  |
| [equipment_default_grabbed_background_color](#equipment-default-grabbed-background-color) | [Color](../types/Color.md) |  |
| [equipment_disabled_background_tint](#equipment-disabled-background-tint) | [Color](../types/Color.md) |  |
| [equipment_disabled_tint](#equipment-disabled-tint) | [Color](../types/Color.md) |  |
| [explosions_in_simulation_volume_modifier](#explosions-in-simulation-volume-modifier) | [float](../types/float.md) |  |
| [factoriopedia_recycling_recipe_categories](#factoriopedia-recycling-recipe-categories) | array[[RecipeCategoryID](../types/RecipeCategoryID.md)] |  |
| [far_away_chunk_generation_radius](#far-away-chunk-generation-radius) | [uint8](../types/uint8.md) |  |
| [feedback_screenshot_file_name](#feedback-screenshot-file-name) | [string](../types/string.md) |  |
| [feedback_screenshot_subfolder_name](#feedback-screenshot-subfolder-name) | [string](../types/string.md) |  |
| [filter_outline_color](#filter-outline-color) | [Color](../types/Color.md) |  |
| [flying_text_ttl](#flying-text-ttl) | [int32](../types/int32.md) |  |
| [forced_enabled_recipe_slot_background_tint](#forced-enabled-recipe-slot-background-tint) | [Color](../types/Color.md) |  |
| [freezing_temperature](#freezing-temperature) | [double](../types/double.md) |  |
| [frozen_color_lookup](#frozen-color-lookup) | [ColorLookupTable](../types/ColorLookupTable.md) |  |
| [ghost_layer](#ghost-layer) | [CollisionLayerID](../types/CollisionLayerID.md) |  |
| [ghost_product_count_tint](#ghost-product-count-tint) | [Color](../types/Color.md) |  |
| [ghost_shader_tint](#ghost-shader-tint) | [GhostTintSet](../types/GhostTintSet.md) |  |
| [ghost_shaderless_tint](#ghost-shaderless-tint) | [GhostTintSet](../types/GhostTintSet.md) |  |
| [ghost_shimmer_settings](#ghost-shimmer-settings) | [GhostShimmerConfig](../types/GhostShimmerConfig.md) |  |
| [gui_remark_color](#gui-remark-color) | [Color](../types/Color.md) |  |
| [gui_search_match_background_color](#gui-search-match-background-color) | [Color](../types/Color.md) |  |
| [gui_search_match_foreground_color](#gui-search-match-foreground-color) | [Color](../types/Color.md) |  |
| [huge_area_size](#huge-area-size) | [float](../types/float.md) |  |
| [huge_platform_animation_sound_area](#huge-platform-animation-sound-area) | [float](../types/float.md) |  |
| [icon_shadow_color](#icon-shadow-color) | [Color](../types/Color.md) |  |
| [icon_shadow_inset](#icon-shadow-inset) | [float](../types/float.md) |  |
| [icon_shadow_radius](#icon-shadow-radius) | [float](../types/float.md) |  |
| [icon_shadow_sharpness](#icon-shadow-sharpness) | [float](../types/float.md) |  |
| [inserter_hand_stack_items_per_sprite](#inserter-hand-stack-items-per-sprite) | [ItemCountType](../types/ItemCountType.md) |  |
| [inserter_hand_stack_max_sprites](#inserter-hand-stack-max-sprites) | [ItemCountType](../types/ItemCountType.md) |  |
| [inventory_width](#inventory-width) | [uint8](../types/uint8.md) |  |
| [item_ammo_magazine_left_bar_color](#item-ammo-magazine-left-bar-color) | [Color](../types/Color.md) |  |
| [item_default_random_tint_strength](#item-default-random-tint-strength) | [Color](../types/Color.md) |  |
| [item_health_bar_colors](#item-health-bar-colors) | array[[ItemHealthColorData](../types/ItemHealthColorData.md)] |  |
| [item_outline_color](#item-outline-color) | [Color](../types/Color.md) |  |
| [item_outline_inset](#item-outline-inset) | [float](../types/float.md) |  |
| [item_outline_radius](#item-outline-radius) | [float](../types/float.md) |  |
| [item_outline_sharpness](#item-outline-sharpness) | [float](../types/float.md) |  |
| [item_tool_durability_bar_color](#item-tool-durability-bar-color) | [Color](../types/Color.md) |  |
| [landing_area_clear_zone_radius](#landing-area-clear-zone-radius) | [float](../types/float.md) |  |
| [landing_area_max_radius](#landing-area-max-radius) | [float](../types/float.md) |  |
| [landing_squash_immunity](#landing-squash-immunity) | [MapTick](../types/MapTick.md) |  |
| [large_area_size](#large-area-size) | [float](../types/float.md) |  |
| [large_blueprint_area_size](#large-blueprint-area-size) | [float](../types/float.md) |  |
| [light_renderer_search_distance_limit](#light-renderer-search-distance-limit) | [uint8](../types/uint8.md) |  |
| [lightning_attractor_collection_range_color](#lightning-attractor-collection-range-color) | [Color](../types/Color.md) |  |
| [lightning_attractor_protection_range_color](#lightning-attractor-protection-range-color) | [Color](../types/Color.md) |  |
| [logistic_gui_selected_network_highlight_tint](#logistic-gui-selected-network-highlight-tint) | [Color](../types/Color.md) |  |
| [logistic_gui_unselected_network_highlight_tint](#logistic-gui-unselected-network-highlight-tint) | [Color](../types/Color.md) |  |
| [logistic_robots_use_busy_robots_queue](#logistic-robots-use-busy-robots-queue) | [boolean](../types/boolean.md) |  |
| [logistic_slots_per_row](#logistic-slots-per-row) | [uint8](../types/uint8.md) |  |
| [low_energy_robot_estimate_multiplier](#low-energy-robot-estimate-multiplier) | [double](../types/double.md) |  |
| [main_menu_background_image_location](#main-menu-background-image-location) | [FileName](../types/FileName.md) |  |
| [main_menu_background_vignette_intensity](#main-menu-background-vignette-intensity) | [float](../types/float.md) |  |
| [main_menu_background_vignette_sharpness](#main-menu-background-vignette-sharpness) | [float](../types/float.md) |  |
| [main_menu_simulations](#main-menu-simulations) | dictionary[[string](../types/string.md) → [SimulationDefinition](../types/SimulationDefinition.md)] | yes |
| [manual_rail_building_reach_modifier](#manual-rail-building-reach-modifier) | [double](../types/double.md) |  |
| [map_editor](#map-editor) | [EditorUtilityConstants](../types/EditorUtilityConstants.md) |  |
| [max_belt_stack_size](#max-belt-stack-size) | [uint8](../types/uint8.md) |  |
| [max_logistic_filter_count](#max-logistic-filter-count) | [LogisticFilterIndex](../types/LogisticFilterIndex.md) |  |
| [max_terrain_building_size](#max-terrain-building-size) | [uint8](../types/uint8.md) |  |
| [maximum_quality_jump](#maximum-quality-jump) | [uint8](../types/uint8.md) |  |
| [maximum_recipe_overload_multiplier](#maximum-recipe-overload-multiplier) | [uint32](../types/uint32.md) |  |
| [medium_area_size](#medium-area-size) | [float](../types/float.md) |  |
| [medium_blueprint_area_size](#medium-blueprint-area-size) | [float](../types/float.md) |  |
| [merge_bonus_gui_production_bonuses](#merge-bonus-gui-production-bonuses) | [boolean](../types/boolean.md) | yes |
| [minimum_recipe_overload_multiplier](#minimum-recipe-overload-multiplier) | [uint32](../types/uint32.md) |  |
| [missing_preview_sprite_location](#missing-preview-sprite-location) | [FileName](../types/FileName.md) |  |
| [module_inventory_width](#module-inventory-width) | [uint8](../types/uint8.md) |  |
| [moving_sound_count_reduction_rate](#moving-sound-count-reduction-rate) | [float](../types/float.md) |  |
| [player_colors](#player-colors) | array[[PlayerColorData](../types/PlayerColorData.md)] |  |
| [probability_product_count_tint](#probability-product-count-tint) | [Color](../types/Color.md) |  |
| [quality_selector_dropdown_threshold](#quality-selector-dropdown-threshold) | [uint8](../types/uint8.md) |  |
| [rail_planner_count_button_color](#rail-planner-count-button-color) | [Color](../types/Color.md) |  |
| [rail_segment_colors](#rail-segment-colors) | array[[Color](../types/Color.md)] |  |
| [recipe_step_limit](#recipe-step-limit) | [uint32](../types/uint32.md) |  |
| [remote_view_LPF_max_cutoff_frequency](#remote-view-lpf-max-cutoff-frequency) | [float](../types/float.md) |  |
| [remote_view_LPF_min_cutoff_frequency](#remote-view-lpf-min-cutoff-frequency) | [float](../types/float.md) |  |
| [script_command_console_chat_color](#script-command-console-chat-color) | [Color](../types/Color.md) |  |
| [select_group_row_count](#select-group-row-count) | [uint8](../types/uint8.md) |  |
| [select_slot_row_count](#select-slot-row-count) | [uint8](../types/uint8.md) |  |
| [selected_chart_search_highlight](#selected-chart-search-highlight) | [Color](../types/Color.md) |  |
| [server_command_console_chat_color](#server-command-console-chat-color) | [Color](../types/Color.md) |  |
| [show_chunk_components_collision_mask](#show-chunk-components-collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) |  |
| [small_area_size](#small-area-size) | [float](../types/float.md) |  |
| [small_blueprint_area_size](#small-blueprint-area-size) | [float](../types/float.md) |  |
| [sound_fade_ticks](#sound-fade-ticks) | [uint32](../types/uint32.md) |  |
| [space_LPF_max_cutoff_frequency](#space-lpf-max-cutoff-frequency) | [float](../types/float.md) |  |
| [space_LPF_min_cutoff_frequency](#space-lpf-min-cutoff-frequency) | [float](../types/float.md) |  |
| [space_platform_acceleration_expression](#space-platform-acceleration-expression) | [MathExpression](../types/MathExpression.md) |  |
| [space_platform_asteroid_chunk_trajectory_updates_per_tick](#space-platform-asteroid-chunk-trajectory-updates-per-tick) | [uint32](../types/uint32.md) |  |
| [space_platform_dump_cooldown](#space-platform-dump-cooldown) | [uint32](../types/uint32.md) |  |
| [space_platform_manual_dump_cooldown](#space-platform-manual-dump-cooldown) | [uint32](../types/uint32.md) |  |
| [space_platform_max_relative_speed_deviation_for_asteroid_chunks_update](#space-platform-max-relative-speed-deviation-for-asteroid-chunks-update) | [float](../types/float.md) |  |
| [space_platform_max_size](#space-platform-max-size) | [SimpleBoundingBox](../types/SimpleBoundingBox.md) |  |
| [space_platform_relative_speed_factor](#space-platform-relative-speed-factor) | [double](../types/double.md) |  |
| [space_platform_starfield_movement_vector](#space-platform-starfield-movement-vector) | [Vector](../types/Vector.md) |  |
| [spawner_evolution_factor_health_modifier](#spawner-evolution-factor-health-modifier) | [float](../types/float.md) |  |
| [starmap_orbit_clicked_color](#starmap-orbit-clicked-color) | [Color](../types/Color.md) |  |
| [starmap_orbit_default_color](#starmap-orbit-default-color) | [Color](../types/Color.md) |  |
| [starmap_orbit_disabled_color](#starmap-orbit-disabled-color) | [Color](../types/Color.md) |  |
| [starmap_orbit_hovered_color](#starmap-orbit-hovered-color) | [Color](../types/Color.md) |  |
| [tall_entity_smoke_tint](#tall-entity-smoke-tint) | [Color](../types/Color.md) |  |
| [tall_entity_tint](#tall-entity-tint) | [Color](../types/Color.md) |  |
| [time_to_show_full_health_bar](#time-to-show-full-health-bar) | [MapTick](../types/MapTick.md) |  |
| [tooltip_monitor_edge_border](#tooltip-monitor-edge-border) | [int32](../types/int32.md) |  |
| [train_inactivity_wait_condition_default](#train-inactivity-wait-condition-default) | [uint32](../types/uint32.md) |  |
| [train_on_elevated_rail_shadow_shift_multiplier](#train-on-elevated-rail-shadow-shift-multiplier) | [Vector](../types/Vector.md) |  |
| [train_path_finding](#train-path-finding) | [TrainPathFinderConstants](../types/TrainPathFinderConstants.md) |  |
| [train_pushed_by_player_ignores_friction](#train-pushed-by-player-ignores-friction) | [boolean](../types/boolean.md) |  |
| [train_pushed_by_player_max_acceleration](#train-pushed-by-player-max-acceleration) | [double](../types/double.md) |  |
| [train_pushed_by_player_max_speed](#train-pushed-by-player-max-speed) | [double](../types/double.md) |  |
| [train_temporary_stop_wait_time](#train-temporary-stop-wait-time) | [uint32](../types/uint32.md) |  |
| [train_time_wait_condition_default](#train-time-wait-condition-default) | [uint32](../types/uint32.md) |  |
| [train_visualization](#train-visualization) | [TrainVisualizationConstants](../types/TrainVisualizationConstants.md) |  |
| [trash_inventory_width](#trash-inventory-width) | [uint8](../types/uint8.md) |  |
| [tree_leaf_distortion_distortion_far](#tree-leaf-distortion-distortion-far) | [Vector](../types/Vector.md) |  |
| [tree_leaf_distortion_distortion_near](#tree-leaf-distortion-distortion-near) | [Vector](../types/Vector.md) |  |
| [tree_leaf_distortion_speed_far](#tree-leaf-distortion-speed-far) | [Vector](../types/Vector.md) |  |
| [tree_leaf_distortion_speed_near](#tree-leaf-distortion-speed-near) | [Vector](../types/Vector.md) |  |
| [tree_leaf_distortion_strength_far](#tree-leaf-distortion-strength-far) | [Vector](../types/Vector.md) |  |
| [tree_leaf_distortion_strength_near](#tree-leaf-distortion-strength-near) | [Vector](../types/Vector.md) |  |
| [tree_shadow_roughness](#tree-shadow-roughness) | [float](../types/float.md) |  |
| [tree_shadow_speed](#tree-shadow-speed) | [float](../types/float.md) |  |
| [turret_range_visualization_color](#turret-range-visualization-color) | [Color](../types/Color.md) |  |
| [underground_belt_max_distance_tint](#underground-belt-max-distance-tint) | [Color](../types/Color.md) |  |
| [underground_pipe_max_distance_tint](#underground-pipe-max-distance-tint) | [Color](../types/Color.md) |  |
| [unit_group_max_pursue_distance](#unit-group-max-pursue-distance) | [double](../types/double.md) |  |
| [unit_group_pathfind_resolution](#unit-group-pathfind-resolution) | [int8](../types/int8.md) |  |
| [walking_sound_count_reduction_rate](#walking-sound-count-reduction-rate) | [float](../types/float.md) |  |
| [water_collision_mask](#water-collision-mask) | [TileCollisionMaskConnector](../types/TileCollisionMaskConnector.md) |  |
| [weapons_in_simulation_volume_modifier](#weapons-in-simulation-volume-modifier) | [float](../types/float.md) |  |
| [zero_count_value_tint](#zero-count-value-tint) | [Color](../types/Color.md) |  |
| [zoom_to_world_can_use_nightvision](#zoom-to-world-can-use-nightvision) | [boolean](../types/boolean.md) |  |
| [zoom_to_world_daytime_color_lookup](#zoom-to-world-daytime-color-lookup) | [DaytimeColorLookupTable](../types/DaytimeColorLookupTable.md) |  |
| [zoom_to_world_effect_strength](#zoom-to-world-effect-strength) | [float](../types/float.md) |  |

### agricultural_range_visualization_color

**Type:** [Color](../types/Color.md)

### artillery_range_visualization_color

**Type:** [Color](../types/Color.md)

### asteroid_collector_blockage_update_tile_distance

**Type:** [uint32](../types/uint32.md)

### asteroid_collector_max_nurbs_control_point_separation

**Type:** [double](../types/double.md)

### asteroid_collector_navmesh_refresh_tick_interval

**Type:** [uint32](../types/uint32.md)

### asteroid_collector_static_head_swing_segment_count

**Type:** [uint32](../types/uint32.md)

### asteroid_collector_static_head_swing_strength_scale

**Type:** [float](../types/float.md)

### asteroid_fading_range

**Type:** [float](../types/float.md)

### asteroid_min_damage_modifier

**Type:** [float](../types/float.md)

Asteroid damage will be multiplied by this value when space platform speed is zero and will linearly increase until asteroid_spawning_with_random_orientation_max_speed is reached.

### asteroid_position_offset_to_speed_coefficient

**Type:** [double](../types/double.md)

### asteroid_spawning_offset

**Type:** [SimpleBoundingBox](../types/SimpleBoundingBox.md)

### asteroid_spawning_with_random_orientation_max_speed

**Type:** [double](../types/double.md)

In km per tick.

### blueprint_big_slots_per_row

**Type:** [uint8](../types/uint8.md)

Will be clamped to the range [2, 100].

### blueprint_small_slots_per_row

**Type:** [uint8](../types/uint8.md)

Will be clamped to the range [2, 100].

### bonus_gui_ordering

**Type:** [BonusUtilityConstants](../types/BonusUtilityConstants.md)

The base game uses more entries here that are applied via the `ammo-category.lua` file.

### building_buildable_tint

**Type:** [Color](../types/Color.md)

### building_buildable_too_far_tint

**Type:** [Color](../types/Color.md)

### building_collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md)

### building_ignorable_tint

**Type:** [Color](../types/Color.md)

### building_no_tint

**Type:** [Color](../types/Color.md)

### building_not_buildable_tint

**Type:** [Color](../types/Color.md)

### capsule_range_visualization_color

**Type:** [Color](../types/Color.md)

### capture_water_mask_at_layer

**Type:** [uint8](../types/uint8.md)

Layer within `ground-natural` [tile render layer](../types/TileRenderLayer.md) group, before which terrain lightmap alpha channel is copied into water mask. Decals, which need to be masked by water should have their [DecorativePrototype::tile_layer](../prototypes/DecorativePrototype.md#tile-layer) set to only slightly larger value than `capture_water_mask_at_layer`, to avoid risk of undefined behavior caused by rendering tiles into layers between `capture_water_mask_at_layer` and decal's `tile_layer`.

### chart

**Type:** [ChartUtilityConstants](../types/ChartUtilityConstants.md)

Chart means map and minimap.

### chart_search_highlight

**Type:** [Color](../types/Color.md)

### checkerboard_black

**Type:** [Color](../types/Color.md)

### checkerboard_white

**Type:** [Color](../types/Color.md)

### clear_cursor_volume_modifier

**Type:** [float](../types/float.md)

### clipboard_history_size

**Type:** [uint32](../types/uint32.md)

### color_filters

**Type:** array[[ColorFilterData](../types/ColorFilterData.md)] · _optional_

### construction_robots_use_busy_robots_queue

**Type:** [boolean](../types/boolean.md)

### count_button_size

**Type:** [int32](../types/int32.md)

### crafting_queue_slots_per_row

**Type:** [uint8](../types/uint8.md)

Will be clamped to the range [1, 100].

### daytime_color_lookup

**Type:** [DaytimeColorLookupTable](../types/DaytimeColorLookupTable.md)

### deconstruct_mark_tint

**Type:** [Color](../types/Color.md)

### default_alert_icon_scale

**Type:** [float](../types/float.md)

### default_alert_icon_scale_by_type

**Type:** dictionary[[string](../types/string.md) → [float](../types/float.md)] · _optional_

### default_alert_icon_shift_by_type

**Type:** dictionary[[string](../types/string.md) → [Vector](../types/Vector.md)] · _optional_

### default_collision_masks

**Type:** dictionary[[string](../types/string.md) → [CollisionMaskConnector](../types/CollisionMaskConnector.md)]

The strings can be entity types or custom strings.

### default_enemy_force_color

**Type:** [Color](../types/Color.md)

### default_item_weight

**Type:** [Weight](../types/Weight.md)

### default_other_force_color

**Type:** [Color](../types/Color.md)

### default_pipeline_extent

**Type:** [double](../types/double.md)

The default value of [FluidBox::max_pipeline_extent](../types/FluidBox.md#max-pipeline-extent).

### default_planet_procession_set

**Type:** [ProcessionSet](../types/ProcessionSet.md)

Must contain arrival and departure with [procession_style](../prototypes/ProcessionPrototype.md#procession-style) containing 0.

### default_platform_procession_set

**Type:** [ProcessionSet](../types/ProcessionSet.md)

Must contain arrival and departure with [procession_style](../prototypes/ProcessionPrototype.md#procession-style) containing 0.

### default_platform_surface_render_parameters

**Type:** [SurfaceRenderParameters](../types/SurfaceRenderParameters.md)

### default_player_force_color

**Type:** [Color](../types/Color.md)

### default_rocket_lift_weight

**Type:** [Weight](../types/Weight.md)

Used for "Rocket capacity" item tooltip and for comparing rocket silo lift weight in GUI to this value.

### default_scorch_mark_color

**Type:** [Color](../types/Color.md)

### default_trigger_target_mask_by_type

**Type:** dictionary[[string](../types/string.md) → [TriggerTargetMask](../types/TriggerTargetMask.md)] · _optional_

The strings are entity types.

### disabled_recipe_slot_background_tint

**Type:** [Color](../types/Color.md)

### disabled_recipe_slot_tint

**Type:** [Color](../types/Color.md)

### drop_item_radius

**Type:** [double](../types/double.md)

### dynamic_recipe_overload_factor

**Type:** [double](../types/double.md)

### ejected_item_direction_variation

**Type:** [double](../types/double.md)

Silently clamped to be between 0 and 0.99.

### ejected_item_friction

**Type:** [double](../types/double.md)

Silently clamped to be between 0 and 1.

### ejected_item_lifetime

**Type:** [MapTick](../types/MapTick.md)

Silently clamped to be between 1 tick and 5 minutes (`5 * 60 * 60` ticks).

### ejected_item_speed

**Type:** [double](../types/double.md)

Silently clamped to be between 0 and 1/60.

### enabled_recipe_slot_tint

**Type:** [Color](../types/Color.md)

### enemies_in_simulation_volume_modifier

**Type:** [float](../types/float.md)

### entity_button_background_color

**Type:** [Color](../types/Color.md)

### entity_renderer_search_box_limits

**Type:** [EntityRendererSearchBoxLimits](../types/EntityRendererSearchBoxLimits.md)

### environment_sounds_transition_fade_in_ticks

**Type:** [uint32](../types/uint32.md)

### equipment_default_background_border_color

**Type:** [Color](../types/Color.md)

### equipment_default_background_color

**Type:** [Color](../types/Color.md)

### equipment_default_grabbed_background_color

**Type:** [Color](../types/Color.md)

### equipment_disabled_background_tint

**Type:** [Color](../types/Color.md)

### equipment_disabled_tint

**Type:** [Color](../types/Color.md)

### explosions_in_simulation_volume_modifier

**Type:** [float](../types/float.md)

### factoriopedia_recycling_recipe_categories

**Type:** array[[RecipeCategoryID](../types/RecipeCategoryID.md)]

### far_away_chunk_generation_radius

**Type:** [uint8](../types/uint8.md)

### feedback_screenshot_file_name

**Type:** [string](../types/string.md)

### feedback_screenshot_subfolder_name

**Type:** [string](../types/string.md)

### filter_outline_color

**Type:** [Color](../types/Color.md)

### flying_text_ttl

**Type:** [int32](../types/int32.md)

Must be >= 1.

### forced_enabled_recipe_slot_background_tint

**Type:** [Color](../types/Color.md)

### freezing_temperature

**Type:** [double](../types/double.md)

Will be clamped to a positive number, starting at 0.

### frozen_color_lookup

**Type:** [ColorLookupTable](../types/ColorLookupTable.md)

### ghost_layer

**Type:** [CollisionLayerID](../types/CollisionLayerID.md)

### ghost_product_count_tint

**Type:** [Color](../types/Color.md)

### ghost_shader_tint

**Type:** [GhostTintSet](../types/GhostTintSet.md)

### ghost_shaderless_tint

**Type:** [GhostTintSet](../types/GhostTintSet.md)

### ghost_shimmer_settings

**Type:** [GhostShimmerConfig](../types/GhostShimmerConfig.md)

### gui_remark_color

**Type:** [Color](../types/Color.md)

### gui_search_match_background_color

**Type:** [Color](../types/Color.md)

### gui_search_match_foreground_color

**Type:** [Color](../types/Color.md)

### huge_area_size

**Type:** [float](../types/float.md)

### huge_platform_animation_sound_area

**Type:** [float](../types/float.md)

### icon_shadow_color

**Type:** [Color](../types/Color.md)

### icon_shadow_inset

**Type:** [float](../types/float.md)

### icon_shadow_radius

**Type:** [float](../types/float.md)

### icon_shadow_sharpness

**Type:** [float](../types/float.md)

### inserter_hand_stack_items_per_sprite

**Type:** [ItemCountType](../types/ItemCountType.md)

Must be >= 1.

### inserter_hand_stack_max_sprites

**Type:** [ItemCountType](../types/ItemCountType.md)

Must be >= 1.

### inventory_width

**Type:** [uint8](../types/uint8.md)

Will be clamped to the range [1, 100].

### item_ammo_magazine_left_bar_color

**Type:** [Color](../types/Color.md)

### item_default_random_tint_strength

**Type:** [Color](../types/Color.md)

### item_health_bar_colors

**Type:** array[[ItemHealthColorData](../types/ItemHealthColorData.md)]

There must be one array item with a threshold of `0`.

### item_outline_color

**Type:** [Color](../types/Color.md)

### item_outline_inset

**Type:** [float](../types/float.md)

### item_outline_radius

**Type:** [float](../types/float.md)

### item_outline_sharpness

**Type:** [float](../types/float.md)

### item_tool_durability_bar_color

**Type:** [Color](../types/Color.md)

### landing_area_clear_zone_radius

**Type:** [float](../types/float.md)

Radius of area where cargo pods won't land.

### landing_area_max_radius

**Type:** [float](../types/float.md)

Max radius where cargo pods will land.

### landing_squash_immunity

**Type:** [MapTick](../types/MapTick.md)

### large_area_size

**Type:** [float](../types/float.md)

### large_blueprint_area_size

**Type:** [float](../types/float.md)

### light_renderer_search_distance_limit

**Type:** [uint8](../types/uint8.md)

Can be set to anything from range 0 to 255, but larger values will be clamped to 160. Setting it to larger values can have performance impact (growing geometrically).

### lightning_attractor_collection_range_color

**Type:** [Color](../types/Color.md)

### lightning_attractor_protection_range_color

**Type:** [Color](../types/Color.md)

### logistic_gui_selected_network_highlight_tint

**Type:** [Color](../types/Color.md)

### logistic_gui_unselected_network_highlight_tint

**Type:** [Color](../types/Color.md)

### logistic_robots_use_busy_robots_queue

**Type:** [boolean](../types/boolean.md)

### logistic_slots_per_row

**Type:** [uint8](../types/uint8.md)

Will be clamped to the range [2, 100].

### low_energy_robot_estimate_multiplier

**Type:** [double](../types/double.md)

### main_menu_background_image_location

**Type:** [FileName](../types/FileName.md)

### main_menu_background_vignette_intensity

**Type:** [float](../types/float.md)

### main_menu_background_vignette_sharpness

**Type:** [float](../types/float.md)

### main_menu_simulations

**Type:** dictionary[[string](../types/string.md) → [SimulationDefinition](../types/SimulationDefinition.md)] · _optional_

The strings represent the names of the simulations.

### manual_rail_building_reach_modifier

**Type:** [double](../types/double.md)

### map_editor

**Type:** [EditorUtilityConstants](../types/EditorUtilityConstants.md)

### max_belt_stack_size

**Type:** [uint8](../types/uint8.md)

Must be >= 1.

### max_logistic_filter_count

**Type:** [LogisticFilterIndex](../types/LogisticFilterIndex.md)

### max_terrain_building_size

**Type:** [uint8](../types/uint8.md)

### maximum_quality_jump

**Type:** [uint8](../types/uint8.md)

Cap for how many steps of quality the output of something (miner/crafter) may be higher than the input (resource/ingredients). Must be >= 1.

### maximum_recipe_overload_multiplier

**Type:** [uint32](../types/uint32.md)

### medium_area_size

**Type:** [float](../types/float.md)

### medium_blueprint_area_size

**Type:** [float](../types/float.md)

### merge_bonus_gui_production_bonuses

**Type:** [boolean](../types/boolean.md) · _optional_

If not set, defaults to `true` when modded and `false` when vanilla.

### minimum_recipe_overload_multiplier

**Type:** [uint32](../types/uint32.md)

### missing_preview_sprite_location

**Type:** [FileName](../types/FileName.md)

### module_inventory_width

**Type:** [uint8](../types/uint8.md)

Will be clamped to the range [1, 100].

### moving_sound_count_reduction_rate

**Type:** [float](../types/float.md)

Silently clamped to be between 0 and 1.

### player_colors

**Type:** array[[PlayerColorData](../types/PlayerColorData.md)]

The table with `name = "default"` must exist and be the first member of the array.

### probability_product_count_tint

**Type:** [Color](../types/Color.md)

### quality_selector_dropdown_threshold

**Type:** [uint8](../types/uint8.md)

### rail_planner_count_button_color

**Type:** [Color](../types/Color.md)

### rail_segment_colors

**Type:** array[[Color](../types/Color.md)]

### recipe_step_limit

**Type:** [uint32](../types/uint32.md)

### remote_view_LPF_max_cutoff_frequency

**Type:** [float](../types/float.md)

### remote_view_LPF_min_cutoff_frequency

**Type:** [float](../types/float.md)

### script_command_console_chat_color

**Type:** [Color](../types/Color.md)

### select_group_row_count

**Type:** [uint8](../types/uint8.md)

Will be clamped to the range [1, 100].

### select_slot_row_count

**Type:** [uint8](../types/uint8.md)

Will be clamped to the range [1, 100].

### selected_chart_search_highlight

**Type:** [Color](../types/Color.md)

### server_command_console_chat_color

**Type:** [Color](../types/Color.md)

### show_chunk_components_collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md)

### small_area_size

**Type:** [float](../types/float.md)

### small_blueprint_area_size

**Type:** [float](../types/float.md)

### sound_fade_ticks

**Type:** [uint32](../types/uint32.md)

### space_LPF_max_cutoff_frequency

**Type:** [float](../types/float.md)

### space_LPF_min_cutoff_frequency

**Type:** [float](../types/float.md)

### space_platform_acceleration_expression

**Type:** [MathExpression](../types/MathExpression.md)

Variables: `speed, thrust, weight, width, height`

### space_platform_asteroid_chunk_trajectory_updates_per_tick

**Type:** [uint32](../types/uint32.md)

How many asteroid chunks should be processed per tick, see [space_platform_max_relative_speed_deviation_for_asteroid_chunks_update](../prototypes/UtilityConstants.md#space-platform-max-relative-speed-deviation-for-asteroid-chunks-update).

### space_platform_dump_cooldown

**Type:** [uint32](../types/uint32.md)

Determines how fast space platforms will send items in drop slots to the surface. Each item type has its own cooldown.

### space_platform_manual_dump_cooldown

**Type:** [uint32](../types/uint32.md)

Delay after manual transfer until space platform sends items in drop slots to the surface. Overrides remaining space_platform_dump_cooldown in this instance.

### space_platform_max_relative_speed_deviation_for_asteroid_chunks_update

**Type:** [float](../types/float.md)

Space platform remembers relative speed range which asteroids use while it moves. When the range is larger than the specified deviation, the platform will start updating cached trajectories of all asteroid chunks over multiple ticks.

### space_platform_max_size

**Type:** [SimpleBoundingBox](../types/SimpleBoundingBox.md)

### space_platform_relative_speed_factor

**Type:** [double](../types/double.md)

### space_platform_starfield_movement_vector

**Type:** [Vector](../types/Vector.md)

### spawner_evolution_factor_health_modifier

**Type:** [float](../types/float.md)

### starmap_orbit_clicked_color

**Type:** [Color](../types/Color.md)

### starmap_orbit_default_color

**Type:** [Color](../types/Color.md)

### starmap_orbit_disabled_color

**Type:** [Color](../types/Color.md)

### starmap_orbit_hovered_color

**Type:** [Color](../types/Color.md)

### tall_entity_smoke_tint

**Type:** [Color](../types/Color.md)

All trivial smoke will be tinted with this value when "Hide tall entities" mode is active.

### tall_entity_tint

**Type:** [Color](../types/Color.md)

Tall entities will be tinted with this value when "Hide tall entities" mode is active.

### time_to_show_full_health_bar

**Type:** [MapTick](../types/MapTick.md)

The number of ticks to show a segmented unit's health bar after fully regenerating.

### tooltip_monitor_edge_border

**Type:** [int32](../types/int32.md)

Must be >= 1.

### train_inactivity_wait_condition_default

**Type:** [uint32](../types/uint32.md)

### train_on_elevated_rail_shadow_shift_multiplier

**Type:** [Vector](../types/Vector.md)

### train_path_finding

**Type:** [TrainPathFinderConstants](../types/TrainPathFinderConstants.md)

### train_pushed_by_player_ignores_friction

**Type:** [boolean](../types/boolean.md)

### train_pushed_by_player_max_acceleration

**Type:** [double](../types/double.md)

### train_pushed_by_player_max_speed

**Type:** [double](../types/double.md)

### train_temporary_stop_wait_time

**Type:** [uint32](../types/uint32.md)

### train_time_wait_condition_default

**Type:** [uint32](../types/uint32.md)

### train_visualization

**Type:** [TrainVisualizationConstants](../types/TrainVisualizationConstants.md)

### trash_inventory_width

**Type:** [uint8](../types/uint8.md)

Will be clamped to the range [1, 100].

### tree_leaf_distortion_distortion_far

**Type:** [Vector](../types/Vector.md)

### tree_leaf_distortion_distortion_near

**Type:** [Vector](../types/Vector.md)

### tree_leaf_distortion_speed_far

**Type:** [Vector](../types/Vector.md)

### tree_leaf_distortion_speed_near

**Type:** [Vector](../types/Vector.md)

### tree_leaf_distortion_strength_far

**Type:** [Vector](../types/Vector.md)

### tree_leaf_distortion_strength_near

**Type:** [Vector](../types/Vector.md)

### tree_shadow_roughness

**Type:** [float](../types/float.md)

### tree_shadow_speed

**Type:** [float](../types/float.md)

### turret_range_visualization_color

**Type:** [Color](../types/Color.md)

### underground_belt_max_distance_tint

**Type:** [Color](../types/Color.md)

### underground_pipe_max_distance_tint

**Type:** [Color](../types/Color.md)

### unit_group_max_pursue_distance

**Type:** [double](../types/double.md)

### unit_group_pathfind_resolution

**Type:** [int8](../types/int8.md)

### walking_sound_count_reduction_rate

**Type:** [float](../types/float.md)

Silently clamped to be between 0 and 1.

### water_collision_mask

**Type:** [TileCollisionMaskConnector](../types/TileCollisionMaskConnector.md)

### weapons_in_simulation_volume_modifier

**Type:** [float](../types/float.md)

### zero_count_value_tint

**Type:** [Color](../types/Color.md)

### zoom_to_world_can_use_nightvision

**Type:** [boolean](../types/boolean.md)

### zoom_to_world_daytime_color_lookup

**Type:** [DaytimeColorLookupTable](../types/DaytimeColorLookupTable.md)

### zoom_to_world_effect_strength

**Type:** [float](../types/float.md)
