# LuaEntity

_class_

**Inherits from:** [LuaControl](../classes/LuaControl.md)

The primary interface for interacting with entities through the Lua API. Entities are everything that exists on the map except for tiles (see [LuaTile](../classes/LuaTile.md)).

Most functions on LuaEntity also work when the entity is contained in a ghost.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [absorbed_pollution](#absorbed-pollution) | [double](../concepts/double.md) |  |
| [active](#active) | [boolean](../concepts/boolean.md) |  |
| [ai_settings](#ai-settings) | [LuaAISettings](../classes/LuaAISettings.md) |  |
| [alert_parameters](#alert-parameters) | [ProgrammableSpeakerAlertParameters](../concepts/ProgrammableSpeakerAlertParameters.md) |  |
| [allow_dispatching_robots](#allow-dispatching-robots) | [boolean](../concepts/boolean.md) |  |
| [always_on](#always-on) | [boolean](../concepts/boolean.md) |  |
| [amount](#amount) | [uint32](../concepts/uint32.md) |  |
| [armed](#armed) | [boolean](../concepts/boolean.md) |  |
| [artillery_auto_targeting](#artillery-auto-targeting) | [boolean](../concepts/boolean.md) |  |
| [associated_player](#associated-player) | [LuaPlayer](../classes/LuaPlayer.md) | yes |
| [attached_cargo_pod](#attached-cargo-pod) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [autopilot_destination](#autopilot-destination) | [MapPosition](../concepts/MapPosition.md) | yes |
| [autopilot_destinations](#autopilot-destinations) | array[[MapPosition](../concepts/MapPosition.md)] |  |
| [autopilot_patrol_size](#autopilot-patrol-size) | [uint32](../concepts/uint32.md) |  |
| [backer_name](#backer-name) | [string](../concepts/string.md) | yes |
| [base_damage_modifiers](#base-damage-modifiers) | [TriggerModifierData](../concepts/TriggerModifierData.md) |  |
| [beacons_count](#beacons-count) | [uint32](../concepts/uint32.md) | yes |
| [belt_neighbours](#belt-neighbours) | table{inputs, outputs} |  |
| [belt_shape](#belt-shape) | `"straight"` ∣ `"left"` ∣ `"right"` |  |
| [belt_to_ground_type](#belt-to-ground-type) | [BeltConnectionType](../concepts/BeltConnectionType.md) |  |
| [bonus_damage_modifiers](#bonus-damage-modifiers) | [TriggerModifierData](../concepts/TriggerModifierData.md) |  |
| [bonus_mining_progress](#bonus-mining-progress) | [double](../concepts/double.md) | yes |
| [bonus_progress](#bonus-progress) | [double](../concepts/double.md) |  |
| [bounding_box](#bounding-box) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [burner](#burner) | [LuaBurner](../classes/LuaBurner.md) | yes |
| [cargo_bay_connection_owner](#cargo-bay-connection-owner) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [cargo_hatches](#cargo-hatches) | array[[LuaCargoHatch](../classes/LuaCargoHatch.md)] |  |
| [cargo_pod_destination](#cargo-pod-destination) | [CargoDestination](../concepts/CargoDestination.md) |  |
| [cargo_pod_origin](#cargo-pod-origin) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [cargo_pod_state](#cargo-pod-state) | `"awaiting_launch"` ∣ `"ascending"` ∣ `"surface_transition"` ∣ `"descending"` ∣ `"parking"` |  |
| [chain_signal_state](#chain-signal-state) | [defines.chain_signal_state](../defines/defines.md) |  |
| [character_corpse_death_cause](#character-corpse-death-cause) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [character_corpse_player_index](#character-corpse-player-index) | [uint32](../concepts/uint32.md) |  |
| [character_corpse_tick_of_death](#character-corpse-tick-of-death) | [uint32](../concepts/uint32.md) |  |
| [cliff_neighbours](#cliff-neighbours) | table{east, north, south, west} |  |
| [cliff_orientation](#cliff-orientation) | [CliffOrientation](../concepts/CliffOrientation.md) |  |
| [color](#color) | [Color](../concepts/Color.md) | yes |
| [combat_robot_owner](#combat-robot-owner) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [combinator_description](#combinator-description) | [string](../concepts/string.md) |  |
| [commandable](#commandable) | [LuaCommandable](../classes/LuaCommandable.md) | yes |
| [connected_rail](#connected-rail) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [connected_rail_direction](#connected-rail-direction) | [defines.rail_direction](../defines/defines.md) |  |
| [consumption_bonus](#consumption-bonus) | [double](../concepts/double.md) |  |
| [consumption_modifier](#consumption-modifier) | [float](../concepts/float.md) |  |
| [copy_color_from_train_stop](#copy-color-from-train-stop) | [boolean](../concepts/boolean.md) |  |
| [corpse_expires](#corpse-expires) | [boolean](../concepts/boolean.md) |  |
| [corpse_immune_to_entity_placement](#corpse-immune-to-entity-placement) | [boolean](../concepts/boolean.md) |  |
| [crafting_progress](#crafting-progress) | [float](../concepts/float.md) |  |
| [crafting_speed](#crafting-speed) | [double](../concepts/double.md) |  |
| [crane_destination](#crane-destination) | [MapPosition](../concepts/MapPosition.md) |  |
| [crane_destination_3d](#crane-destination-3d) | [Vector3D](../concepts/Vector3D.md) |  |
| [crane_end_position_3d](#crane-end-position-3d) | [Vector3D](../concepts/Vector3D.md) |  |
| [crane_grappler_destination](#crane-grappler-destination) | [MapPosition](../concepts/MapPosition.md) |  |
| [crane_grappler_destination_3d](#crane-grappler-destination-3d) | [Vector3D](../concepts/Vector3D.md) |  |
| [created_by_corpse](#created-by-corpse) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [custom_status](#custom-status) | [CustomEntityStatus](../concepts/CustomEntityStatus.md) | yes |
| [damage_dealt](#damage-dealt) | [double](../concepts/double.md) |  |
| [destructible](#destructible) | [boolean](../concepts/boolean.md) |  |
| [direction](#direction) | [defines.direction](../defines/defines.md) |  |
| [disabled_by_control_behavior](#disabled-by-control-behavior) | [boolean](../concepts/boolean.md) |  |
| [disabled_by_recipe](#disabled-by-recipe) | [boolean](../concepts/boolean.md) |  |
| [disabled_by_script](#disabled-by-script) | [boolean](../concepts/boolean.md) |  |
| [display_panel_always_show](#display-panel-always-show) | [boolean](../concepts/boolean.md) |  |
| [display_panel_icon](#display-panel-icon) | [SignalID](../concepts/SignalID.md) | yes |
| [display_panel_show_in_chart](#display-panel-show-in-chart) | [boolean](../concepts/boolean.md) |  |
| [display_panel_text](#display-panel-text) | [string](../concepts/string.md) |  |
| [draw_data](#draw-data) | [RollingStockDrawData](../concepts/RollingStockDrawData.md) |  |
| [driver_is_gunner](#driver-is-gunner) | [boolean](../concepts/boolean.md) | yes |
| [drop_position](#drop-position) | [MapPosition](../concepts/MapPosition.md) |  |
| [drop_target](#drop-target) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [effective_speed](#effective-speed) | [float](../concepts/float.md) | yes |
| [effectivity_modifier](#effectivity-modifier) | [float](../concepts/float.md) |  |
| [effects](#effects) | [Effect](../concepts/Effect.md) | yes |
| [electric_buffer_size](#electric-buffer-size) | [double](../concepts/double.md) | yes |
| [electric_drain](#electric-drain) | [double](../concepts/double.md) | yes |
| [electric_emissions_per_joule](#electric-emissions-per-joule) | dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] | yes |
| [electric_interface_mode](#electric-interface-mode) | [defines.electric_interface_mode](../defines/defines.md) |  |
| [electric_network](#electric-network) | [LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md) | yes |
| [electric_network_id](#electric-network-id) | [uint32](../concepts/uint32.md) | yes |
| [electric_network_statistics](#electric-network-statistics) | [LuaFlowStatistics](../classes/LuaFlowStatistics.md) |  |
| [electric_networks](#electric-networks) | array[[LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md)] | yes |
| [enable_logistics_while_moving](#enable-logistics-while-moving) | [boolean](../concepts/boolean.md) |  |
| [energy](#energy) | [double](../concepts/double.md) |  |
| [energy_generated_last_tick](#energy-generated-last-tick) | [double](../concepts/double.md) |  |
| [entity_label](#entity-label) | [string](../concepts/string.md) | yes |
| [filter_slot_count](#filter-slot-count) | [uint32](../concepts/uint32.md) |  |
| [fluidbox_neighbours](#fluidbox-neighbours) | array[array[[LuaEntity](../classes/LuaEntity.md)]] |  |
| [fluids_count](#fluids-count) | [uint32](../concepts/uint32.md) |  |
| [follow_offset](#follow-offset) | [Vector](../concepts/Vector.md) | yes |
| [follow_target](#follow-target) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [friction_modifier](#friction-modifier) | [float](../concepts/float.md) |  |
| [frozen](#frozen) | [boolean](../concepts/boolean.md) |  |
| [ghost_localised_description](#ghost-localised-description) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [ghost_localised_name](#ghost-localised-name) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [ghost_name](#ghost-name) | [string](../concepts/string.md) |  |
| [ghost_prototype](#ghost-prototype) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) ∣ [LuaTilePrototype](../classes/LuaTilePrototype.md) |  |
| [ghost_type](#ghost-type) | [string](../concepts/string.md) |  |
| [ghost_unit_number](#ghost-unit-number) | [uint64](../concepts/uint64.md) | yes |
| [gps_tag](#gps-tag) | [string](../concepts/string.md) |  |
| [graphics_variation](#graphics-variation) | [uint8](../concepts/uint8.md) | yes |
| [grid](#grid) | [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md) | yes |
| [health](#health) | [float](../concepts/float.md) | yes |
| [heat_neighbours](#heat-neighbours) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [held_stack](#held-stack) | [LuaItemStack](../classes/LuaItemStack.md) |  |
| [held_stack_position](#held-stack-position) | [MapPosition](../concepts/MapPosition.md) |  |
| [highlight_box_blink_interval](#highlight-box-blink-interval) | [uint32](../concepts/uint32.md) |  |
| [highlight_box_type](#highlight-box-type) | [CursorBoxRenderType](../concepts/CursorBoxRenderType.md) |  |
| [ignore_unprioritised_targets](#ignore-unprioritised-targets) | [boolean](../concepts/boolean.md) |  |
| [infinity_container_filters](#infinity-container-filters) | array[[InfinityInventoryFilter](../concepts/InfinityInventoryFilter.md)] |  |
| [initial_amount](#initial-amount) | [uint32](../concepts/uint32.md) | yes |
| [input_flow_limit](#input-flow-limit) | [double](../concepts/double.md) |  |
| [insert_plan](#insert-plan) | array[[BlueprintInsertPlan](../concepts/BlueprintInsertPlan.md)] |  |
| [inserter_filter_mode](#inserter-filter-mode) | `"whitelist"` ∣ `"blacklist"` | yes |
| [inserter_spoil_priority](#inserter-spoil-priority) | [SpoilPriority](../concepts/SpoilPriority.md) |  |
| [inserter_stack_size_override](#inserter-stack-size-override) | [uint32](../concepts/uint32.md) |  |
| [inserter_target_pickup_count](#inserter-target-pickup-count) | [uint32](../concepts/uint32.md) |  |
| [is_entity_with_health](#is-entity-with-health) | [boolean](../concepts/boolean.md) |  |
| [is_entity_with_owner](#is-entity-with-owner) | [boolean](../concepts/boolean.md) |  |
| [is_freezable](#is-freezable) | [boolean](../concepts/boolean.md) |  |
| [is_headed_to_trains_front](#is-headed-to-trains-front) | [boolean](../concepts/boolean.md) |  |
| [is_military_target](#is-military-target) | [boolean](../concepts/boolean.md) |  |
| [is_updatable](#is-updatable) | [boolean](../concepts/boolean.md) |  |
| [item_request_proxy](#item-request-proxy) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [item_requests](#item-requests) | array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] |  |
| [kills](#kills) | [uint32](../concepts/uint32.md) |  |
| [last_user](#last-user) | [LuaPlayer](../classes/LuaPlayer.md) | yes |
| [link_id](#link-id) | [uint32](../concepts/uint32.md) |  |
| [linked_belt_neighbour](#linked-belt-neighbour) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [linked_belt_type](#linked-belt-type) | [BeltConnectionType](../concepts/BeltConnectionType.md) |  |
| [loader_belt_stack_size_override](#loader-belt-stack-size-override) | [uint8](../concepts/uint8.md) |  |
| [loader_container](#loader-container) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [loader_filter_mode](#loader-filter-mode) | [PrototypeFilterMode](../concepts/PrototypeFilterMode.md) | yes |
| [loader_type](#loader-type) | [BeltConnectionType](../concepts/BeltConnectionType.md) |  |
| [local_effect](#local-effect) | [Effect](../concepts/Effect.md) | yes |
| [localised_description](#localised-description) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [localised_name](#localised-name) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [logistic_cell](#logistic-cell) | [LuaLogisticCell](../classes/LuaLogisticCell.md) |  |
| [logistic_network](#logistic-network) | [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) |  |
| [max_health](#max-health) | [float](../concepts/float.md) |  |
| [minable](#minable) | [boolean](../concepts/boolean.md) |  |
| [minable_flag](#minable-flag) | [boolean](../concepts/boolean.md) |  |
| [mining_area](#mining-area) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [mining_drill_filter_mode](#mining-drill-filter-mode) | `"whitelist"` ∣ `"blacklist"` | yes |
| [mining_target](#mining-target) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [mirroring](#mirroring) | [boolean](../concepts/boolean.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [name_tag](#name-tag) | [string](../concepts/string.md) |  |
| [neighbour_bonus](#neighbour-bonus) | [double](../concepts/double.md) |  |
| [neighbour_connectable_connections](#neighbour-connectable-connections) | array[[NeighbourConnectableConnection](../concepts/NeighbourConnectableConnection.md)] |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [operable](#operable) | [boolean](../concepts/boolean.md) |  |
| [orientation](#orientation) | [RealOrientation](../concepts/RealOrientation.md) |  |
| [output_flow_limit](#output-flow-limit) | [double](../concepts/double.md) |  |
| [override_logistic_mode](#override-logistic-mode) | [defines.logistic_mode](../defines/defines.md) | yes |
| [owned_plants](#owned-plants) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [parameters](#parameters) | [ProgrammableSpeakerParameters](../concepts/ProgrammableSpeakerParameters.md) |  |
| [pickup_from_left_lane](#pickup-from-left-lane) | [boolean](../concepts/boolean.md) |  |
| [pickup_from_right_lane](#pickup-from-right-lane) | [boolean](../concepts/boolean.md) |  |
| [pickup_position](#pickup-position) | [MapPosition](../concepts/MapPosition.md) |  |
| [pickup_target](#pickup-target) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [player](#player) | [LuaPlayer](../classes/LuaPlayer.md) | yes |
| [pollution_bonus](#pollution-bonus) | [double](../concepts/double.md) |  |
| [power_production](#power-production) | [double](../concepts/double.md) |  |
| [power_switch_state](#power-switch-state) | [boolean](../concepts/boolean.md) |  |
| [power_usage](#power-usage) | [double](../concepts/double.md) |  |
| [previous_recipe](#previous-recipe) | [RecipeIDAndQualityIDPair](../concepts/RecipeIDAndQualityIDPair.md) | yes |
| [priority_targets](#priority-targets) | array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] |  |
| [procession_tick](#procession-tick) | [MapTick](../concepts/MapTick.md) |  |
| [productivity_bonus](#productivity-bonus) | [double](../concepts/double.md) |  |
| [products_finished](#products-finished) | [uint32](../concepts/uint32.md) |  |
| [protected](#protected) | [boolean](../concepts/boolean.md) |  |
| [prototype](#prototype) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) |  |
| [providing_to_other_platforms](#providing-to-other-platforms) | [boolean](../concepts/boolean.md) |  |
| [proxy_target](#proxy-target) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [proxy_target_entity](#proxy-target-entity) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [proxy_target_inventory](#proxy-target-inventory) | [defines.inventory](../defines/defines.md) |  |
| [pump_input_rail_targets](#pump-input-rail-targets) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [pump_output_rail_targets](#pump-output-rail-targets) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [pumped_last_tick](#pumped-last-tick) | [double](../concepts/double.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [radar_scan_progress](#radar-scan-progress) | [float](../concepts/float.md) |  |
| [rail_layer](#rail-layer) | [defines.rail_layer](../defines/defines.md) |  |
| [rail_length](#rail-length) | [double](../concepts/double.md) |  |
| [recipe_locked](#recipe-locked) | [boolean](../concepts/boolean.md) |  |
| [relative_turret_orientation](#relative-turret-orientation) | [RealOrientation](../concepts/RealOrientation.md) | yes |
| [removal_plan](#removal-plan) | array[[BlueprintInsertPlan](../concepts/BlueprintInsertPlan.md)] |  |
| [remove_unfiltered_items](#remove-unfiltered-items) | [boolean](../concepts/boolean.md) |  |
| [render_player](#render-player) | [LuaPlayer](../classes/LuaPlayer.md) | yes |
| [render_to_forces](#render-to-forces) | array[[LuaForce](../classes/LuaForce.md)] | yes |
| [request_from_buffers](#request-from-buffers) | [boolean](../concepts/boolean.md) |  |
| [request_missing_construction_materials](#request-missing-construction-materials) | [boolean](../concepts/boolean.md) |  |
| [result_quality](#result-quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [robot_order_queue](#robot-order-queue) | array[[WorkerRobotOrder](../concepts/WorkerRobotOrder.md)] |  |
| [rocket](#rocket) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [rocket_parts](#rocket-parts) | [uint32](../concepts/uint32.md) |  |
| [rocket_silo_status](#rocket-silo-status) | [defines.rocket_silo_status](../defines/defines.md) |  |
| [rotatable](#rotatable) | [boolean](../concepts/boolean.md) |  |
| [saved_request_filters](#saved-request-filters) | [SavedLogisticFilters](../concepts/SavedLogisticFilters.md) | yes |
| [saved_request_from_buffers](#saved-request-from-buffers) | [boolean](../concepts/boolean.md) | yes |
| [saved_set_requests](#saved-set-requests) | [boolean](../concepts/boolean.md) | yes |
| [saved_storage_filters](#saved-storage-filters) | [SavedLogisticFilters](../concepts/SavedLogisticFilters.md) | yes |
| [script_reservations_count](#script-reservations-count) | [uint32](../concepts/uint32.md) |  |
| [secondary_bounding_box](#secondary-bounding-box) | [BoundingBox](../concepts/BoundingBox.md) | yes |
| [secondary_selection_box](#secondary-selection-box) | [BoundingBox](../concepts/BoundingBox.md) | yes |
| [segmented_unit](#segmented-unit) | [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) | yes |
| [selected_gun_index](#selected-gun-index) | [uint32](../concepts/uint32.md) | yes |
| [selection_box](#selection-box) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [send_to_orbit_automatically](#send-to-orbit-automatically) | [boolean](../concepts/boolean.md) |  |
| [shooting_target](#shooting-target) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [signal_state](#signal-state) | [defines.signal_state](../defines/defines.md) |  |
| [spawn_shift](#spawn-shift) | [double](../concepts/double.md) |  |
| [spawning_cooldown](#spawning-cooldown) | [double](../concepts/double.md) |  |
| [speed](#speed) | [float](../concepts/float.md) | yes |
| [speed_bonus](#speed-bonus) | [double](../concepts/double.md) |  |
| [splitter_filter](#splitter-filter) | [ItemFilter](../concepts/ItemFilter.md) | yes |
| [splitter_input_priority](#splitter-input-priority) | `"left"` ∣ `"none"` ∣ `"right"` |  |
| [splitter_output_priority](#splitter-output-priority) | `"left"` ∣ `"none"` ∣ `"right"` |  |
| [stack](#stack) | [LuaItemStack](../classes/LuaItemStack.md) |  |
| [status](#status) | [defines.entity_status](../defines/defines.md) | yes |
| [sticked_to](#sticked-to) | [LuaEntity](../classes/LuaEntity.md) |  |
| [sticker_vehicle_modifiers](#sticker-vehicle-modifiers) | table{friction_modifier, speed_max, speed_modifier} | yes |
| [stickers](#stickers) | array[[LuaEntity](../classes/LuaEntity.md)] | yes |
| [storage_filter](#storage-filter) | [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md) | yes |
| [supports_direction](#supports-direction) | [boolean](../concepts/boolean.md) |  |
| [tags](#tags) | [Tags](../concepts/Tags.md) | yes |
| [temperature](#temperature) | [double](../concepts/double.md) | yes |
| [tick_grown](#tick-grown) | [MapTick](../concepts/MapTick.md) |  |
| [tick_of_last_attack](#tick-of-last-attack) | [uint32](../concepts/uint32.md) |  |
| [tick_of_last_damage](#tick-of-last-damage) | [uint32](../concepts/uint32.md) |  |
| [tile_height](#tile-height) | [uint32](../concepts/uint32.md) |  |
| [tile_width](#tile-width) | [uint32](../concepts/uint32.md) |  |
| [time_to_live](#time-to-live) | [uint64](../concepts/uint64.md) |  |
| [time_to_next_effect](#time-to-next-effect) | [uint32](../concepts/uint32.md) |  |
| [timeout](#timeout) | [uint32](../concepts/uint32.md) |  |
| [to_be_looted](#to-be-looted) | [boolean](../concepts/boolean.md) |  |
| [torso_orientation](#torso-orientation) | [RealOrientation](../concepts/RealOrientation.md) |  |
| [train](#train) | [LuaTrain](../classes/LuaTrain.md) | yes |
| [train_reservations_count](#train-reservations-count) | [uint32](../concepts/uint32.md) |  |
| [train_stop_priority](#train-stop-priority) | [uint8](../concepts/uint8.md) |  |
| [trains_count](#trains-count) | [uint32](../concepts/uint32.md) |  |
| [trains_in_block](#trains-in-block) | [uint32](../concepts/uint32.md) |  |
| [trains_limit](#trains-limit) | [uint32](../concepts/uint32.md) |  |
| [transitional_request_target](#transitional-request-target) | [LuaSpacePlatform](../classes/LuaSpacePlatform.md) | yes |
| [tree_color_index](#tree-color-index) | [uint8](../concepts/uint8.md) |  |
| [tree_color_index_max](#tree-color-index-max) | [uint8](../concepts/uint8.md) |  |
| [tree_gray_stage_index](#tree-gray-stage-index) | [uint8](../concepts/uint8.md) |  |
| [tree_gray_stage_index_max](#tree-gray-stage-index-max) | [uint8](../concepts/uint8.md) |  |
| [tree_stage_index](#tree-stage-index) | [uint8](../concepts/uint8.md) |  |
| [tree_stage_index_max](#tree-stage-index-max) | [uint8](../concepts/uint8.md) |  |
| [type](#type) | [string](../concepts/string.md) |  |
| [underground_belt_neighbour](#underground-belt-neighbour) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [unit_number](#unit-number) | [uint64](../concepts/uint64.md) | yes |
| [units](#units) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [use_filters](#use-filters) | [boolean](../concepts/boolean.md) |  |
| [use_transitional_requests](#use-transitional-requests) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [valve_threshold_override](#valve-threshold-override) | [float](../concepts/float.md) | yes |
| [vehicle_automatic_targeting_parameters](#vehicle-automatic-targeting-parameters) | [VehicleAutomaticTargetingParameters](../concepts/VehicleAutomaticTargetingParameters.md) |  |
| [wall_neighbours](#wall-neighbours) | table{east, north, south, west} |  |

### absorbed_pollution

**Read:** [double](../concepts/double.md) · _read-only_

### active

**Read:** [boolean](../concepts/boolean.md) · _read-only_

A deactivated entity will stop all of its operations (car will stop moving, inserters will stop working, fish will stop moving, etc).

Reading from this returns `false` if the entity is deactivated in at least one of the following ways: [by script](../classes/LuaEntity.md#disabled-by-script), [by circuit network](../classes/LuaEntity.md#disabled-by-control-behavior), [by recipe](../classes/LuaEntity.md#disabled-by-recipe), [by freezing](../classes/LuaEntity.md#frozen), or by being marked for deconstruction.

If this entity is not considered [updatable](../classes/LuaEntity.md#is-updatable) then this always returns `false`.

### ai_settings

**Read:** [LuaAISettings](../classes/LuaAISettings.md) · _read-only_

The AI settings of this unit.

### alert_parameters

**Read:** [ProgrammableSpeakerAlertParameters](../concepts/ProgrammableSpeakerAlertParameters.md) · **Write:** [ProgrammableSpeakerAlertParameters](../concepts/ProgrammableSpeakerAlertParameters.md)

### allow_dispatching_robots

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this entity's personal roboports are allowed to dispatch robots.

### always_on

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If the lamp is always on when not driven by control behavior.

### amount

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

Count of resource units contained.

### armed

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this land mine is armed.

### artillery_auto_targeting

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this artillery auto-targets enemies.

### associated_player

**Read:** [LuaPlayer](../classes/LuaPlayer.md) · **Write:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player this character is associated with, if any. Set to `nil` to clear.

The player will be automatically disassociated when a controller is set on the character. Also, all characters associated to a player will be logged off when the player logs off in multiplayer.

A character associated with a player is not directly controlled by any player.

### attached_cargo_pod

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The cargo pod attached to this rocket silo rocket if any.

### autopilot_destination

**Read:** [MapPosition](../concepts/MapPosition.md) · **Write:** [MapPosition](../concepts/MapPosition.md) · _optional_

Destination of this spidertron's autopilot, if any. Writing `nil` clears all destinations.

### autopilot_destinations

**Read:** array[[MapPosition](../concepts/MapPosition.md)] · _read-only_

The queued destination positions of spidertron's autopilot.

### autopilot_patrol_size

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

When there are this many waypoints left the spider vehicle will start patrolling along them.

Setting this to 0 will disable patrolling.

### backer_name

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md) · _optional_

The backer name assigned to this entity. Entities that support backer names are labs, locomotives, radars, roboports, and train stops. `nil` if this entity doesn't support backer names.

While train stops get the name of a backer when placed down, players can rename them if they want to. In this case, `backer_name` returns the player-given name of the entity.

**Raises:**

- `on_entity_renamed` — 

### base_damage_modifiers

**Read:** [TriggerModifierData](../concepts/TriggerModifierData.md) · **Write:** [TriggerModifierData](../concepts/TriggerModifierData.md)

### beacons_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

Number of beacons affecting this effect receiver. Can only be used when the entity has an effect receiver (AssemblingMachine, Furnace, Lab, MiningDrills)

### belt_neighbours

**Read:** table{inputs, outputs} · _read-only_

The belt connectable neighbours of this belt connectable entity. Only entities that input to or are outputs of this entity. Does not contain the other end of an underground belt, see [LuaEntity::underground_belt_neighbour](../classes/LuaEntity.md#underground-belt-neighbour) for that.

### belt_shape

**Read:** `"straight"` ∣ `"left"` ∣ `"right"` · _read-only_

Gives what is the current shape of a transport-belt.

### belt_to_ground_type

**Read:** [BeltConnectionType](../concepts/BeltConnectionType.md) · _read-only_

Whether this underground belt goes into or out of the ground.

### bonus_damage_modifiers

**Read:** [TriggerModifierData](../concepts/TriggerModifierData.md) · **Write:** [TriggerModifierData](../concepts/TriggerModifierData.md)

### bonus_mining_progress

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md) · _optional_

The bonus mining progress for this mining drill. Read yields a number in range [0, mining_target.prototype.mineable_properties.mining_time]. `nil` if this isn't a mining drill.

### bonus_progress

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The current productivity bonus progress, as a number in range `[0, 1]`.

### bounding_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_

[LuaEntityPrototype::collision_box](../classes/LuaEntityPrototype.md#collision-box) around entity's given position and respecting the current entity orientation.

### burner

**Read:** [LuaBurner](../classes/LuaBurner.md) · _read-only_ · _optional_

The burner energy source for this entity, if any.

### cargo_bay_connection_owner

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The space platform hub or cargo landing pad this cargo bay is connected to if any.

### cargo_hatches

**Read:** array[[LuaCargoHatch](../classes/LuaCargoHatch.md)] · _read-only_

The cargo hatches owned by this entity if any.

### cargo_pod_destination

**Read:** [CargoDestination](../concepts/CargoDestination.md) · **Write:** [CargoDestination](../concepts/CargoDestination.md)

The destination of this cargo pod entity.

Use [force_finish_ascending](../classes/LuaEntity.md#force-finish-ascending) if you want it to only descend from orbit.

### cargo_pod_origin

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The origin of this cargo pod entity. (Must be a silo, hub or pad)

### cargo_pod_state

**Read:** `"awaiting_launch"` ∣ `"ascending"` ∣ `"surface_transition"` ∣ `"descending"` ∣ `"parking"` · _read-only_

The state of this cargo pod entity.

### chain_signal_state

**Read:** [defines.chain_signal_state](../defines/defines.md) · _read-only_

The state of this chain signal.

### character_corpse_death_cause

**Read:** [LocalisedString](../concepts/LocalisedString.md) · **Write:** [LocalisedString](../concepts/LocalisedString.md)

The reason this character corpse character died. `""` if there is no reason.

### character_corpse_player_index

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The player index associated with this character corpse.

The index is not guaranteed to be valid so it should always be checked first if a player with that index actually exists.

### character_corpse_tick_of_death

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The tick this character corpse died at.

### cliff_neighbours

**Read:** table{east, north, south, west} · _read-only_

Table of cliff neighbours.

### cliff_orientation

**Read:** [CliffOrientation](../concepts/CliffOrientation.md) · _read-only_

The orientation of this cliff.

### color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md) · _optional_

The color of this character, rolling stock, corpse, character corpse, train stop, simple-entity-with-owner, car, spider-vehicle, or lamp. `nil` if this entity doesn't use custom colors.

Car color is overridden by the color of the current driver/passenger, if there is one.

### combat_robot_owner

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The owner of this combat robot, if any.

### combinator_description

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The description on this combinator.

### commandable

**Read:** [LuaCommandable](../classes/LuaCommandable.md) · _read-only_ · _optional_

Returns a LuaCommandable for this entity or nil if entity is not commandable. Units and SpiderUnits are commandable.

### connected_rail

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The rail entity this train stop is connected to, if any.

### connected_rail_direction

**Read:** [defines.rail_direction](../defines/defines.md) · _read-only_

Rail direction to which this train stop is binding. This returns a value even when no rails are present.

### consumption_bonus

**Read:** [double](../concepts/double.md) · _read-only_

The consumption bonus of this entity.

### consumption_modifier

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

Multiplies the energy consumption.

### copy_color_from_train_stop

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this rolling stock has 'copy color from train stop' enabled.

### corpse_expires

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this corpse will ever fade away.

### corpse_immune_to_entity_placement

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If true, corpse won't be destroyed when entities are placed over it. If false, whether corpse will be removed or not depends on value of [CorpsePrototype::remove_on_entity_placement](../prototypes/CorpsePrototype.md#remove-on-entity-placement).

### crafting_progress

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

The current crafting progress, as a number in range `[0, 1]`.

### crafting_speed

**Read:** [double](../concepts/double.md) · _read-only_

The current crafting speed, including speed bonuses from modules and beacons.

### crane_destination

**Read:** [MapPosition](../concepts/MapPosition.md) · **Write:** [MapPosition](../concepts/MapPosition.md)

Destination of the crane of this entity. Throws when trying to set the destination out of range.

### crane_destination_3d

**Read:** [Vector3D](../concepts/Vector3D.md) · **Write:** [Vector3D](../concepts/Vector3D.md)

Destination of the crane of this entity in 3D. Throws when trying to set the destination out of range.

### crane_end_position_3d

**Read:** [Vector3D](../concepts/Vector3D.md) · _read-only_

Returns current position in 3D for the end of the crane of this entity.

### crane_grappler_destination

**Write:** [MapPosition](../concepts/MapPosition.md)

Will set destination for the grappler of crane of this entity. The crane grappler will start moving to reach the destination, but the rest of the arm will remain stationary. Throws when trying to set the destination out of range.

### crane_grappler_destination_3d

**Write:** [Vector3D](../concepts/Vector3D.md)

Will set destination in 3D for the grappler of crane of this entity. The crane grappler will start moving to reach the destination, but the rest of the arm will remain stationary. Throws when trying to set the destination out of range.

### created_by_corpse

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The corpse that caused this entity ghost to be created, if any.

### custom_status

**Read:** [CustomEntityStatus](../concepts/CustomEntityStatus.md) · **Write:** [CustomEntityStatus](../concepts/CustomEntityStatus.md) · _optional_

A custom status for this entity that will be displayed in the GUI.

### damage_dealt

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The damage dealt by this turret, artillery turret, or artillery wagon.

### destructible

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If set to `false`, this entity can't be damaged and won't be attacked automatically. It can however still be mined.

Entities that are indestructible naturally (they have no health, like smoke, resource etc) can't be set to be destructible.

### direction

**Read:** [defines.direction](../defines/defines.md) · **Write:** [defines.direction](../defines/defines.md)

The current direction this entity is facing.

### disabled_by_control_behavior

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If the updatable entity is disabled by control behavior.

Always returns `false` if this entity is not considered [updatable](../classes/LuaEntity.md#is-updatable).

### disabled_by_recipe

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If the assembling machine is disabled by recipe, e.g. due to [AssemblingMachinePrototype::disabled_when_recipe_not_researched](../prototypes/AssemblingMachinePrototype.md#disabled-when-recipe-not-researched).

Always returns `false` if this entity is not considered [updatable](../classes/LuaEntity.md#is-updatable).

### disabled_by_script

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If the updatable entity is disabled by script.

Note: Some entities (Corpse, FireFlame, Roboport, RollingStock, dying entities) need to remain active and will ignore writes.

If this entity is not considered [updatable](../classes/LuaEntity.md#is-updatable) then this always returns `false` and writes will be ignored.

### display_panel_always_show

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### display_panel_icon

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

Icon visible on the display panel. Can be written only when it is not set by control behavior.

### display_panel_show_in_chart

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### display_panel_text

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

Text visible on the display panel. Can be written only when it is not set by control behavior.

### draw_data

**Read:** [RollingStockDrawData](../concepts/RollingStockDrawData.md) · _read-only_

Gives a draw data of the given entity if it supports such data.

### driver_is_gunner

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md) · _optional_

Whether the driver of this car or spidertron is the gunner. If `false`, the passenger is the gunner. `nil` if this is neither a car or a spidertron.

### drop_position

**Read:** [MapPosition](../concepts/MapPosition.md) · **Write:** [MapPosition](../concepts/MapPosition.md)

Position where the entity puts its stuff.

Mining drills and crafting machines can't have their drop position changed; inserters must have `allow_custom_vectors` set to true on their prototype to allow changing the drop position.

Meaningful only for entities that put stuff somewhere, such as mining drills, crafting machines with a drop target or inserters.

### drop_target

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity this entity is putting its items to. If there are multiple possible entities at the drop-off point, writing to this attribute allows a mod to choose which one to drop off items to. The entity needs to collide with the tile box under the drop-off position. `nil` if there is no entity to put items to, or if this is not an entity that puts items somewhere.

### effective_speed

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The current speed of this unit in tiles per tick, taking into account any walking speed modifier given by the tile the unit is standing on. `nil` if this is not a unit.

### effectivity_modifier

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

Multiplies the acceleration the car can create for one unit of energy. Defaults to `1`.

### effects

**Read:** [Effect](../concepts/Effect.md) · _read-only_ · _optional_

The effects being applied to this entity, if any. For beacons, this is the effect the beacon is broadcasting.

### electric_buffer_size

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md) · _optional_

The buffer size for the electric energy source. `nil` if the entity doesn't have an electric energy source.

Write access is limited to the ElectricEnergyInterface type.

### electric_drain

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The electric drain for the electric energy source. `nil` if the entity doesn't have an electric energy source.

### electric_emissions_per_joule

**Read:** dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] · _read-only_ · _optional_

The table of emissions of this energy source in `pollution/Joule`, indexed by pollutant type. `nil` if the entity doesn't have an electric energy source. Multiplying values in the returned table by energy consumption in `Watt` gives `pollution/second`.

### electric_interface_mode

**Read:** [defines.electric_interface_mode](../defines/defines.md) · **Write:** [defines.electric_interface_mode](../defines/defines.md)

Mode this ElectricEnergyInterface is in. Mode changes how the interface interacts with electric network: if its an electric producer, consumer and what priority it has.

### electric_network

**Read:** [LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md) · _read-only_ · _optional_

Electric network this entity is connected to.

This can be used with electric poles, in which case the network will be the same as the one obtained from copper wire connector.

If this entity has an electric energy source, only a primary network will be provided. To also get other networks for entities in range of multiple networks, use [LuaEntity::electric_networks](../classes/LuaEntity.md#electric-networks) instead.

### electric_network_id

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

Returns the id of the electric network that this entity is connected to, if any.

### electric_network_statistics

**Read:** [LuaFlowStatistics](../classes/LuaFlowStatistics.md) · _read-only_

The electric network statistics for this electric pole.

If this electric pole becomes invalid, the flow statistics obtained from it will also become invalid. If this electric pole becomes part of a different electric network, the flow statistics will be for the new electric network this pole is part of.

### electric_networks

**Read:** array[[LuaElectricSubNetwork](../classes/LuaElectricSubNetwork.md)] · _read-only_ · _optional_

Electric networks this entity with an electric energy source is connected to.

No array is given if this entity has no electric energy source.

Empty array will be given if this entity is not in range of any networks.

Compared to [LuaEntity::electric_network](../classes/LuaEntity.md#electric-network), this does not work with electric poles since they do not have an electric energy source and as such can only belong to one network at a time.

### enable_logistics_while_moving

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether equipment grid logistics are enabled while this vehicle is moving.

### energy

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Energy stored in the entity's energy buffer (energy stored in electrical devices etc.). Always 0 for entities that don't have the concept of energy stored inside.

**Example:**

```
game.player.print("Machine energy: " .. game.player.selected.energy .. "J")
game.player.selected.energy = 3000
```

### energy_generated_last_tick

**Read:** [double](../concepts/double.md) · _read-only_

How much energy this generator generated in the last tick.

### entity_label

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md) · _optional_

The label on this spider-vehicle entity, if any. `nil` if this is not a spider-vehicle.

**Raises:**

- `on_entity_renamed` — 

### filter_slot_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The number of filter slots this inserter, loader, mining drill, asteroid collector or logistic storage container has. 0 if not one of those entities.

### fluidbox_neighbours

**Read:** array[array[[LuaEntity](../classes/LuaEntity.md)]] · _read-only_

A list of neighbours connected to fluidboxes of this entity. Neighbours are grouped by index of fluid box of this entity to which they are connected. For more detailed informations please use [LuaEntity::get_fluid_box_neighbours](../classes/LuaEntity.md#get-fluid-box-neighbours).

### fluids_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Returns count of fluid storages. This includes fluid storages provided by fluidboxes but also covers other fluid storages like fluid turret's internal buffer and fluid wagon's fluid.

### follow_offset

**Read:** [Vector](../concepts/Vector.md) · **Write:** [Vector](../concepts/Vector.md) · _optional_

The follow offset of this spidertron, if any entity is being followed. This is randomized each time the follow entity is set.

### follow_target

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The follow target of this spidertron, if any.

### friction_modifier

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

Multiplies the car friction rate.

**Example:**

```
-- This will allow the car to go much faster
game.player.vehicle.friction_modifier = 0.5
```

### frozen

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether the freezable entity is currently frozen.

Always returns `false` if this entity is not considered [freezable](../classes/LuaEntity.md#is-freezable).

### ghost_localised_description

**Read:** [LocalisedString](../concepts/LocalisedString.md) · _read-only_

### ghost_localised_name

**Read:** [LocalisedString](../concepts/LocalisedString.md) · _read-only_

Localised name of the entity or tile contained in this ghost.

### ghost_name

**Read:** [string](../concepts/string.md) · _read-only_

Name of the entity or tile contained in this ghost.

### ghost_prototype

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) ∣ [LuaTilePrototype](../classes/LuaTilePrototype.md) · _read-only_

The prototype of the entity or tile contained in this ghost.

### ghost_type

**Read:** [string](../concepts/string.md) · _read-only_

The prototype type of the entity or tile contained in this ghost.

### ghost_unit_number

**Read:** [uint64](../concepts/uint64.md) · _read-only_ · _optional_

The [unit_number](../classes/LuaEntity.md#unit-number) of the entity contained in this ghost. It is the same as the unit number of the [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md) that was destroyed to create this ghost. If it was created by other means, or if the inner entity does not support unit numbers, this property is `nil`.

### gps_tag

**Read:** [string](../concepts/string.md) · _read-only_

Returns a [rich text](https://wiki.factorio.com/Rich_text) string containing this entity's position and surface name as a gps tag. [Printing](../classes/LuaGameScript.md#print) it will ping the location of the entity.

**Example:**

```
-- called on a LuaEntity on the default surface it returns:
entity.gps_tag -- => "[gps=-4,-9]"

-- called on a LuaEntity on "custom-surface" it returns:
different_entity.gps_tag -- => "[gps=1,-5,custom-surface]"
```

### graphics_variation

**Read:** [uint8](../concepts/uint8.md) · **Write:** [uint8](../concepts/uint8.md) · _optional_

The graphics variation for this entity. `nil` if this entity doesn't use graphics variations.

### grid

**Read:** [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md) · _read-only_ · _optional_

This entity's equipment grid, if any.

### health

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md) · _optional_

The current health of the entity, if any. Health is automatically clamped to be between `0` and max health (inclusive). Entities with a health of `0` can not be attacked.

To get the maximum possible health of this entity, see [LuaEntity::max_health](../classes/LuaEntity.md#max-health).

### heat_neighbours

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

The entities connected to this entities heat buffer.

### held_stack

**Read:** [LuaItemStack](../classes/LuaItemStack.md) · _read-only_

The item stack currently held in an inserter's hand.

### held_stack_position

**Read:** [MapPosition](../concepts/MapPosition.md) · _read-only_

Current position of the inserter's "hand".

### highlight_box_blink_interval

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The blink interval of this highlight box entity. `0` indicates no blink.

### highlight_box_type

**Read:** [CursorBoxRenderType](../concepts/CursorBoxRenderType.md) · **Write:** [CursorBoxRenderType](../concepts/CursorBoxRenderType.md)

The highlight box type of this highlight box entity.

### ignore_unprioritised_targets

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this turret shoots at targets that are not on its priority list.

### infinity_container_filters

**Read:** array[[InfinityInventoryFilter](../concepts/InfinityInventoryFilter.md)] · **Write:** array[[InfinityInventoryFilter](../concepts/InfinityInventoryFilter.md)]

The filters for this infinity container.

### initial_amount

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md) · _optional_

Count of initial resource units contained. `nil` if this is not an infinite resource.

If this is not an infinite resource, writing will produce an error.

### input_flow_limit

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Max amount of energy this ElectricEnergyInterface will take from electric network in one tick.

### insert_plan

**Read:** array[[BlueprintInsertPlan](../concepts/BlueprintInsertPlan.md)] · **Write:** array[[BlueprintInsertPlan](../concepts/BlueprintInsertPlan.md)]

The insert plan for this ghost or item request proxy.

### inserter_filter_mode

**Read:** `"whitelist"` ∣ `"blacklist"` · **Write:** `"whitelist"` ∣ `"blacklist"` · _optional_

The filter mode for this filter inserter. `nil` if this inserter doesn't use filters.

### inserter_spoil_priority

**Read:** [SpoilPriority](../concepts/SpoilPriority.md) · **Write:** [SpoilPriority](../concepts/SpoilPriority.md)

The spoil priority for this inserter.

### inserter_stack_size_override

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

Sets the stack size limit on this inserter.

Set to `0` to reset.

### inserter_target_pickup_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Returns the current target pickup count of the inserter.

This considers the circuit network, manual override and the inserter stack size limit based on technology.

### is_entity_with_health

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this entity is EntityWithHealth

### is_entity_with_owner

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this entity is EntityWithOwner

### is_freezable

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether the entity is freezable and considered a FreezableEntity.

### is_headed_to_trains_front

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If the rolling stock is facing train's front.

### is_military_target

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this entity is a MilitaryTarget. Can be written to if [LuaEntityPrototype::allow_run_time_change_of_is_military_target](../classes/LuaEntityPrototype.md#allow-run-time-change-of-is-military-target) returns `true`.

### is_updatable

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether the entity is updatable and considered an UpdatableEntity.

### item_request_proxy

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The first found item request proxy targeting this entity.

### item_requests

**Read:** array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] · _read-only_

Items this ghost will request when revived or items this item request proxy is requesting.

### kills

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The number of units killed by this turret, artillery turret, or artillery wagon.

### last_user

**Read:** [LuaPlayer](../classes/LuaPlayer.md) · **Write:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The last player that changed any setting on this entity. This includes building the entity, changing its color, or configuring its circuit network. `nil` if the last user is not part of the save anymore.

### link_id

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The link ID this linked container is using.

### linked_belt_neighbour

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

Neighbour to which this linked belt is connected to, if any.

May return entity ghost which contains linked belt to which connection is made.

### linked_belt_type

**Read:** [BeltConnectionType](../concepts/BeltConnectionType.md) · **Write:** [BeltConnectionType](../concepts/BeltConnectionType.md)

Type of linked belt. Changing type will also flip direction so the belt is out of the same side.

Can only be changed when linked belt is disconnected (has no neighbour set).

### loader_belt_stack_size_override

**Read:** [uint8](../concepts/uint8.md) · **Write:** [uint8](../concepts/uint8.md)

The belt stack size override for this loader. Set to `0` to disable. Writing this value requires [LoaderPrototype::adjustable_belt_stack_size](../prototypes/LoaderPrototype.md#adjustable-belt-stack-size) to be `true`.

### loader_container

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The container entity this loader is pointing at/pulling from depending on the [LuaEntity::loader_type](../classes/LuaEntity.md#loader-type), if any.

### loader_filter_mode

**Read:** [PrototypeFilterMode](../concepts/PrototypeFilterMode.md) · **Write:** [PrototypeFilterMode](../concepts/PrototypeFilterMode.md) · _optional_

The filter mode for this loader. `nil` if this loader does not support filters.

### loader_type

**Read:** [BeltConnectionType](../concepts/BeltConnectionType.md) · **Write:** [BeltConnectionType](../concepts/BeltConnectionType.md)

Whether this loader gets items from or puts item into a container.

### local_effect

**Read:** [Effect](../concepts/Effect.md) · **Write:** [Effect](../concepts/Effect.md) · _optional_

Additional effect applied to this entity with effect receiver. `nil` if this entity has no effect receiver.

### localised_description

**Read:** [LocalisedString](../concepts/LocalisedString.md) · _read-only_

### localised_name

**Read:** [LocalisedString](../concepts/LocalisedString.md) · _read-only_

Localised name of the entity.

### logistic_cell

**Read:** [LuaLogisticCell](../classes/LuaLogisticCell.md) · _read-only_

The logistic cell this entity is a part of. Will be `nil` if this entity is not a part of any logistic cell.

### logistic_network

**Read:** [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) · **Write:** [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md)

The logistic network this entity is a part of, or `nil` if this entity is not a part of any logistic network.

### max_health

**Read:** [float](../concepts/float.md) · _read-only_

Max health of this entity.

### minable

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Not minable entities can still be destroyed.

Tells if entity reports as being minable right now. This takes into account `minable_flag` and entity specific conditions (for example rail under rolling stocks is not minable, vehicle with passenger is not minable).

### minable_flag

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Script controlled flag that allows entity to be mined.

### mining_area

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_

Area in which this mining drill looks for resources to mine.

### mining_drill_filter_mode

**Read:** `"whitelist"` ∣ `"blacklist"` · **Write:** `"whitelist"` ∣ `"blacklist"` · _optional_

The filter mode for this mining drill. `nil` if this mining drill doesn't have filters.

### mining_target

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The mining target, if any.

### mirroring

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether the entity is currently mirrored. This state is referred to as `flipped` elsewhere, such as on the [on_player_flipped_entity](../events/on_player_flipped_entity.md) event.

If an entity is mirrored, it is flipped over the axis that is pointing in the entity's direction. For example if a mirrored entity is facing north, everything that was defined to be facing east in the prototype now faces west.

### name

**Read:** [string](../concepts/string.md) · _read-only_

Name of the entity prototype. E.g. "inserter" or "fast-inserter".

### name_tag

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

Name tag of this entity. Returns `nil` if entity has no name tag. When name tag is already used by other entity, the name will be removed from the other entity. Entity name tags can also be set in the entity "extra settings" GUI in the map editor.

### neighbour_bonus

**Read:** [double](../concepts/double.md) · _read-only_

The current total neighbour bonus of this reactor.

### neighbour_connectable_connections

**Read:** array[[NeighbourConnectableConnection](../concepts/NeighbourConnectableConnection.md)] · _read-only_

Connections of a [neighbour connectable](../classes/LuaEntityPrototype.md#neighbour-connectable) entity. Includes connections that aren't currently connected to another entity.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### operable

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Player can't open gui of this entity and he can't quick insert/input stuff in to the entity when it is not operable.

### orientation

**Read:** [RealOrientation](../concepts/RealOrientation.md) · **Write:** [RealOrientation](../concepts/RealOrientation.md)

The smooth orientation of this entity. For turrets this is the orientation of the weapon.

### output_flow_limit

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Max amount of energy this ElectricEnergyInterface will provide to electric network in one tick.

### override_logistic_mode

**Read:** [defines.logistic_mode](../defines/defines.md) · **Write:** [defines.logistic_mode](../defines/defines.md) · _optional_

The override logistic mode being used by this infinity container if it is overridden.

### owned_plants

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

Plants registered by this agricultural tower. One plant can be registered in multiple agricultural towers.

### parameters

**Read:** [ProgrammableSpeakerParameters](../concepts/ProgrammableSpeakerParameters.md) · **Write:** [ProgrammableSpeakerParameters](../concepts/ProgrammableSpeakerParameters.md)

### pickup_from_left_lane

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

For inserters taking items from transport belt connectables, this determines whether the inserter is allowed to take items from the left lane.

### pickup_from_right_lane

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

For inserters taking items from transport belt connectables, this determines whether the inserter is allowed to take items from the right lane.

### pickup_position

**Read:** [MapPosition](../concepts/MapPosition.md) · **Write:** [MapPosition](../concepts/MapPosition.md)

Where the inserter will pick up items from.

Inserters must have `allow_custom_vectors` set to true on their prototype to allow changing the pickup position.

### pickup_target

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity this inserter will attempt to pick up items from. If there are multiple possible entities at the pick-up point, writing to this attribute allows a mod to choose which one to pick up items from. The entity needs to collide with the tile box under the pick-up position. `nil` if there is no entity to pull items from.

### player

**Read:** [LuaPlayer](../classes/LuaPlayer.md) · _read-only_ · _optional_

The player connected to this character, if any.

### pollution_bonus

**Read:** [double](../concepts/double.md) · _read-only_

The pollution bonus of this entity.

### power_production

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The power production specific to the ElectricEnergyInterface entity type.

### power_switch_state

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

The state of this power switch.

### power_usage

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The power usage specific to the ElectricEnergyInterface entity type.

### previous_recipe

**Read:** [RecipeIDAndQualityIDPair](../concepts/RecipeIDAndQualityIDPair.md) · _read-only_ · _optional_

The previous recipe this furnace was using, if any.

### priority_targets

**Read:** array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_

The priority targets for this turret (if any).

### procession_tick

**Read:** [MapTick](../concepts/MapTick.md) · **Write:** [MapTick](../concepts/MapTick.md)

how far into the current procession the cargo pod is.

### productivity_bonus

**Read:** [double](../concepts/double.md) · _read-only_

The productivity bonus of this entity.

This includes force based bonuses as well as beacon/module bonuses.

### products_finished

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The number of products this machine finished crafting in its lifetime.

### protected

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Automated weapons won't target protected entities.

### prototype

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_

The entity prototype of this entity.

### providing_to_other_platforms

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this space platform hub will provide its contents to other requesting platforms.

### proxy_target

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The target entity for this item-request-proxy, if any.

### proxy_target_entity

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

Entity of which inventory is exposed by this ProxyContainer

### proxy_target_inventory

**Read:** [defines.inventory](../defines/defines.md) · **Write:** [defines.inventory](../defines/defines.md)

Inventory index of the inventory that is exposed by this ProxyContainer

### pump_input_rail_targets

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

The rail targets of this pump's input

### pump_output_rail_targets

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

The rail targets of this pump's output

### pumped_last_tick

**Read:** [double](../concepts/double.md) · _read-only_

The amount of fluid moved by this offshore pump or normal pump in the last tick.

### quality

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_

The quality of this entity.

Not all entities support quality and will give the "normal" quality back if they don't.

### radar_scan_progress

**Read:** [float](../concepts/float.md) · _read-only_

The current radar scan progress, as a number in range `[0, 1]`.

### rail_layer

**Read:** [defines.rail_layer](../defines/defines.md) · _read-only_

Gets rail layer of a given signal

### rail_length

**Read:** [double](../concepts/double.md) · _read-only_

Length of this rail piece.

### recipe_locked

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When locked; the recipe in this assembling machine can't be changed by the player.

### relative_turret_orientation

**Read:** [RealOrientation](../concepts/RealOrientation.md) · **Write:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The relative orientation of the vehicle turret, artillery turret, artillery wagon. `nil` if this entity isn't a vehicle with a vehicle turret or artillery turret/wagon.

Writing does nothing if the vehicle doesn't have a turret.

For the turret orientation of non-artillery turrets, use [LuaEntity::orientation](../classes/LuaEntity.md#orientation).

### removal_plan

**Read:** array[[BlueprintInsertPlan](../concepts/BlueprintInsertPlan.md)] · **Write:** array[[BlueprintInsertPlan](../concepts/BlueprintInsertPlan.md)]

The removal plan for this item request proxy.

### remove_unfiltered_items

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether items not included in this infinity container filters should be removed from the container.

### render_player

**Read:** [LuaPlayer](../classes/LuaPlayer.md) · **Write:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player that this `simple-entity-with-owner`, `simple-entity-with-force`, or `highlight-box` is visible to. `nil` when this entity is rendered for all players.

### render_to_forces

**Read:** array[[LuaForce](../classes/LuaForce.md)] · **Write:** [ForceSet](../concepts/ForceSet.md) · _optional_

The forces that this `simple-entity-with-owner` or `simple-entity-with-force` is visible to. `nil` or an empty array when this entity is rendered for all forces.

### request_from_buffers

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this requester chest is set to also request from buffer chests.

Useable only on entities that have requester slots.

### request_missing_construction_materials

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this space platform hub will automatically make logistic requests for any missing construction materials.

### result_quality

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · **Write:** [QualityID](../concepts/QualityID.md) · _optional_

The quality produced when this crafting machine finishes crafting. `nil` when crafting is not in progress.

Note: Writing `nil` is not allowed.

### robot_order_queue

**Read:** array[[WorkerRobotOrder](../concepts/WorkerRobotOrder.md)] · _read-only_

Get the current queue of robot orders.

### rocket

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The rocket silo rocket this cargo pod is attached to, or rocket silo rocket attached to this rocket silo - if any.

### rocket_parts

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

Number of rocket parts in this rocket silo.

### rocket_silo_status

**Read:** [defines.rocket_silo_status](../defines/defines.md) · _read-only_

The status of this rocket silo entity.

### rotatable

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When entity is not to be rotatable (inserter, transport belt etc), it can't be rotated by player using the R key.

Entities that are not rotatable naturally (like chest or furnace) can't be set to be rotatable.

### saved_request_filters

**Read:** [SavedLogisticFilters](../concepts/SavedLogisticFilters.md) · **Write:** [SavedLogisticFilters](../concepts/SavedLogisticFilters.md) · _optional_

The saved logistic requests if they exist.

They exist when the infinity container was switched away from having the option to set logistic requests, for example by changing the [logistic mode](../classes/LuaEntity.md#override-logistic-mode) away from requester or buffer.

### saved_request_from_buffers

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md) · _optional_

The saved request from buffers value if one exists.

The value exists when the infinity container was switched away from having the request from buffers option, for example by changing the [logistic mode](../classes/LuaEntity.md#override-logistic-mode) away from requester.

### saved_set_requests

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md) · _optional_

The saved set requests value if one exists.

The value exists when the infinity container was switched away from having the set requests option, for example by changing the [logistic mode](../classes/LuaEntity.md#override-logistic-mode) away from requester or buffer.

### saved_storage_filters

**Read:** [SavedLogisticFilters](../concepts/SavedLogisticFilters.md) · **Write:** [SavedLogisticFilters](../concepts/SavedLogisticFilters.md) · _optional_

The saved storage filters if they exist.

They exist when the infinity container was switched away from having the option to set storage filters, for example by changing the [logistic mode](../classes/LuaEntity.md#override-logistic-mode) away from storage.

### script_reservations_count

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

Amount of train stop reservations taken by script.

### secondary_bounding_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_ · _optional_

The secondary bounding box of this entity or `nil` if it doesn't have one. This only exists for curved rails, and is automatically determined by the game.

### secondary_selection_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_ · _optional_

The secondary selection box of this entity or `nil` if it doesn't have one. This only exists for curved rails, and is automatically determined by the game.

### segmented_unit

**Read:** [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) · _read-only_ · _optional_

The segmented unit object that the segment entity is a part of.

### selected_gun_index

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md) · _optional_

Index of the currently selected weapon slot of this character, car, or spidertron. `nil` if this entity doesn't have guns.

### selection_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_

[LuaEntityPrototype::selection_box](../classes/LuaEntityPrototype.md#selection-box) around entity's given position and respecting the current entity orientation.

### send_to_orbit_automatically

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this rocket silo is set to send items to orbit automatically. Only relevant if there is an item prototype with [launch products](../classes/LuaItemPrototype.md#rocket-launch-products) with automated [send_to_orbit_mode](../classes/LuaItemPrototype.md#send-to-orbit-mode), such as the satellite in vanilla (without Space Age mod).

### shooting_target

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The shooting target for this turret, if any. Can't be set to `nil` via script.

### signal_state

**Read:** [defines.signal_state](../defines/defines.md) · _read-only_

The state of this rail signal.

### spawn_shift

**Read:** [double](../concepts/double.md) · _read-only_

### spawning_cooldown

**Read:** [double](../concepts/double.md) · _read-only_

### speed

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md) · _optional_

The current speed if this is a car, rolling stock, projectile or spidertron, or the maximum speed if this is a unit. The speed is in tiles per tick. `nil` if this is not a car, rolling stock, unit, projectile or spidertron.

Only the speed of units, cars, and projectiles are writable.

### speed_bonus

**Read:** [double](../concepts/double.md) · _read-only_

The speed bonus of this entity.

This includes force based bonuses as well as beacon/module bonuses.

### splitter_filter

**Read:** [ItemFilter](../concepts/ItemFilter.md) · **Write:** [ItemFilter](../concepts/ItemFilter.md) · _optional_

The filter for this splitter, if any is set.

### splitter_input_priority

**Read:** `"left"` ∣ `"none"` ∣ `"right"` · **Write:** `"left"` ∣ `"none"` ∣ `"right"`

The input priority for this splitter.

### splitter_output_priority

**Read:** `"left"` ∣ `"none"` ∣ `"right"` · **Write:** `"left"` ∣ `"none"` ∣ `"right"`

The output priority for this splitter.

### stack

**Read:** [LuaItemStack](../classes/LuaItemStack.md) · _read-only_

### status

**Read:** [defines.entity_status](../defines/defines.md) · _read-only_ · _optional_

The status of this entity, if any.

This is always the actual status of the entity, even if [LuaEntity::custom_status](../classes/LuaEntity.md#custom-status) is set.

### sticked_to

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_

The entity this sticker is sticked to.

### sticker_vehicle_modifiers

**Read:** table{friction_modifier, speed_max, speed_modifier} · _read-only_ · _optional_

The vehicle modifiers applied to this entity through the attached stickers.

### stickers

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_ · _optional_

The sticker entities attached to this entity, if any.

### storage_filter

**Read:** [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md) · **Write:** [ItemWithQualityID](../concepts/ItemWithQualityID.md) · _optional_

The storage filter for this logistic storage container.

Useable only on logistic containers with the `"storage"` [logistic_mode](../classes/LuaEntityPrototype.md#logistic-mode).

### supports_direction

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether the entity has direction. When it is false for this entity, it will always return north direction when asked for.

### tags

**Read:** [Tags](../concepts/Tags.md) · **Write:** [Tags](../concepts/Tags.md) · _optional_

The tags associated with this entity ghost. `nil` if this is not an entity ghost or when the ghost has no tags.

### temperature

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md) · _optional_

The temperature of this entity's heat energy source. `nil` if this entity does not use a heat energy source.

### tick_grown

**Read:** [MapTick](../concepts/MapTick.md) · **Write:** [MapTick](../concepts/MapTick.md)

The tick when this plant is fully grown.

### tick_of_last_attack

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The last tick this character entity was attacked.

### tick_of_last_damage

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The last tick this character entity was damaged.

### tile_height

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Specifies the tiling size of the entity, is used to decide, if the center should be in the center of the tile (odd tile size dimension) or on the tile border (even tile size dimension). Uses the current direction of the entity.

### tile_width

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Specifies the tiling size of the entity, is used to decide, if the center should be in the center of the tile (odd tile size dimension) or on the tile border (even tile size dimension). Uses the current direction of the entity.

### time_to_live

**Read:** [uint64](../concepts/uint64.md) · **Write:** [uint64](../concepts/uint64.md)

The ticks left before a combat robot, highlight box, smoke, or sticker entity is destroyed.

### time_to_next_effect

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The ticks until the next trigger effect of this smoke-with-trigger.

### timeout

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The timeout that's left on this landmine in ticks. It describes the time between the landmine being placed and it being armed.

### to_be_looted

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Will this item entity be picked up automatically when the player walks over it?

### torso_orientation

**Read:** [RealOrientation](../concepts/RealOrientation.md) · **Write:** [RealOrientation](../concepts/RealOrientation.md)

The torso orientation of this spider vehicle.

### train

**Read:** [LuaTrain](../classes/LuaTrain.md) · _read-only_ · _optional_

The train this rolling stock belongs to, if any. `nil` if this is not a rolling stock.

### train_reservations_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Amount of train stop reservations taken by trains.

### train_stop_priority

**Read:** [uint8](../concepts/uint8.md) · **Write:** [uint8](../concepts/uint8.md)

Priority of this train stop.

### trains_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Amount of trains related to this particular train stop. Includes train stopped at this train stop (until it finds a path to next target) and trains having this train stop as goal or waypoint.

Train may be included multiple times when braking distance covers this train stop multiple times.

Value may be read even when train stop has no control behavior.

This value is equal to LuaEntity::train_reservations_count + LuaEntity::script_reservations_count.

### trains_in_block

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The number of trains in this rail block for this rail entity.

### trains_limit

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

Amount of trains above which no new trains will be sent to this train stop. Writing nil will disable the limit (will set a maximum possible value).

When a train stop has a control behavior with wire connected and set_trains_limit enabled, this value will be overwritten by it.

### transitional_request_target

**Read:** [LuaSpacePlatform](../classes/LuaSpacePlatform.md) · _read-only_ · _optional_

The space platform in orbit this rocket silo is automatically requesting items for.

### tree_color_index

**Read:** [uint8](../concepts/uint8.md) · **Write:** [uint8](../concepts/uint8.md)

Index of the tree color.

### tree_color_index_max

**Read:** [uint8](../concepts/uint8.md) · _read-only_

Maximum index of the tree colors.

### tree_gray_stage_index

**Read:** [uint8](../concepts/uint8.md) · **Write:** [uint8](../concepts/uint8.md)

Index of the tree gray stage

### tree_gray_stage_index_max

**Read:** [uint8](../concepts/uint8.md) · _read-only_

Maximum index of the tree gray stages.

### tree_stage_index

**Read:** [uint8](../concepts/uint8.md) · **Write:** [uint8](../concepts/uint8.md)

Index of the tree stage.

### tree_stage_index_max

**Read:** [uint8](../concepts/uint8.md) · _read-only_

Maximum index of the tree stages.

### type

**Read:** [string](../concepts/string.md) · _read-only_

The entity prototype type of this entity.

### underground_belt_neighbour

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

Neighbour underground belt connected to this underground belt through underground lines.

### unit_number

**Read:** [uint64](../concepts/uint64.md) · _read-only_ · _optional_

A unique number identifying this entity for the lifetime of the save. These are allocated sequentially, and not re-used (until overflow).

Only entities inheriting from [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md), as well as [ItemRequestProxyPrototype](../prototypes/ItemRequestProxyPrototype.md) and [EntityGhostPrototype](../prototypes/EntityGhostPrototype.md) are assigned a unit number. Returns `nil` otherwise.

### units

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

The units associated with this spawner entity.

### use_filters

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If set to 'true', this inserter will use filtering logic.

This has no effect if the prototype does not support filters.

### use_transitional_requests

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When true, the rocket silo will automatically request items for space platforms in orbit.

Setting the value will have no effect when the silo doesn't support logistics.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### valve_threshold_override

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md) · _optional_

The threshold override of this valve, or `nil` if an override is not defined.

If no override is defined, the threshold is taken from [LuaEntityPrototype::valve_threshold](../classes/LuaEntityPrototype.md#valve-threshold).

### vehicle_automatic_targeting_parameters

**Read:** [VehicleAutomaticTargetingParameters](../concepts/VehicleAutomaticTargetingParameters.md) · **Write:** [VehicleAutomaticTargetingParameters](../concepts/VehicleAutomaticTargetingParameters.md)

Read when this spidertron auto-targets enemies

### wall_neighbours

**Read:** table{east, north, south, west} · _read-only_

Table of wall-connectable neighbours.

## Methods

| Method | Summary |
| --- | --- |
| [add_autopilot_destination](#add-autopilot-destination) | Adds the given position to this spidertron's autopilot's queue of destinations. |
| [add_fluid](#add-fluid) | Adds the given fluid to the entity's given fluid storage if possible. |
| [add_fluid_box_linked_connection](#add-fluid-box-linked-connection) | Registers a linked fluidbox connection between this entity and other entity. Because entity may have multiple fluidboxes, each with multiple connections that could be linked, a unique value for this and other linked_connection_id may need to be given. |
| [add_fluid_segment_fluid](#add-fluid-segment-fluid) | Adds the given fluid to the given storage's fluid segment if possible. |
| [add_market_item](#add-market-item) | Offer a thing on the market. |
| [apply_upgrade](#apply-upgrade) | Upgrades this entity in place if it's marked to be upgraded. |
| [can_be_destroyed](#can-be-destroyed) | Whether the entity can be destroyed |
| [can_set_inventory_filter](#can-set-inventory-filter) | The same as LuaInventory::can_set_filter but also works for ghosts where the inventory is not available through LuaControl::get_inventory. |
| [can_shoot](#can-shoot) | Whether this character can shoot the given entity or position. |
| [can_wires_reach](#can-wires-reach) | Can wires reach between these entities. |
| [cancel_deconstruction](#cancel-deconstruction) | Cancels deconstruction if it is scheduled, does nothing otherwise. |
| [cancel_upgrade](#cancel-upgrade) | Cancels upgrade if it is scheduled, does nothing otherwise. |
| [clear_fluid](#clear-fluid) | Removes all fluid from the entity's given fluid storage if possible. |
| [clear_fluid_inside](#clear-fluid-inside) | Remove all fluids from this entity and connected fluid segments. |
| [clear_fluid_segment_fluid](#clear-fluid-segment-fluid) | Clears the given fluid storage's fluid segment. |
| [clear_fluids](#clear-fluids) | Clears all fluids in this entity but will not clear fluids in any fluid segments fluidboxes may be part of. |
| [clear_market_items](#clear-market-items) | Removes all offers from a market. |
| [clear_stored_durability](#clear-stored-durability) |  |
| [clear_tooltip_field](#clear-tooltip-field) | Removes selected runtime tooltip field. |
| [clear_tooltip_fields](#clear-tooltip-fields) | Removes all runtime tooltip fields attached to this entity. |
| [clone](#clone) | Clones this entity. |
| [connect_linked_belts](#connect-linked-belts) | Connects current linked belt with another one. |
| [connect_rolling_stock](#connect-rolling-stock) | Connects the rolling stock in the given direction. |
| [copy_settings](#copy-settings) | Copies settings from the given entity onto this entity. |
| [create_build_effect_smoke](#create-build-effect-smoke) | Creates the same smoke that is created when you place a building by hand. |
| [create_cargo_pod](#create-cargo-pod) | Creates a cargo pod if possible. |
| [damage](#damage) | Damages the entity. |
| [deplete](#deplete) | Depletes and destroys this resource entity. |
| [destroy](#destroy) | Destroys the entity. |
| [die](#die) | Immediately kills the entity. Does nothing if the entity doesn't have health. |
| [disconnect_linked_belts](#disconnect-linked-belts) | Disconnects linked belt from its neighbour. |
| [disconnect_rolling_stock](#disconnect-rolling-stock) | Tries to disconnect this rolling stock in the given direction. |
| [extract_fluid](#extract-fluid) | Remove fluid from this entity. |
| [flip](#flip) | Flips this entity |
| [force_finish_ascending](#force-finish-ascending) | Take an ascending cargo pod and safely make it skip all animation and immediately switch surface. |
| [force_finish_descending](#force-finish-descending) | Take a descending cargo pod and safely make it arrive and deposit cargo. |
| [get_beacon_effect_receivers](#get-beacon-effect-receivers) | Returns a table with all entities affected by this beacon |
| [get_beacons](#get-beacons) | Returns a table with all beacons affecting this effect receiver. Can only be used when the entity has an effect receiver (AssemblingMachine, Furnace, Lab, MiningDrills) |
| [get_beam_source](#get-beam-source) | Get the source of this beam. |
| [get_beam_target](#get-beam-target) | Get the target of this beam. |
| [get_burnt_result_inventory](#get-burnt-result-inventory) | The burnt result inventory for this entity or `nil` if this entity doesn't have a burnt result inventory. |
| [get_cargo_bays](#get-cargo-bays) | Gets the cargo bays connected to this cargo landing pad or space platform hub. |
| [get_child_signals](#get-child-signals) | Returns all child signals. Child signals can be either RailSignal or RailChainSignal. Child signals are signals which are checked by this signal to determine a chain state. |
| [get_circuit_network](#get-circuit-network) |  |
| [get_connected_rail](#get-connected-rail) |  |
| [get_connected_rails](#get-connected-rails) | Get the rails that this signal is connected to. |
| [get_connected_rolling_stock](#get-connected-rolling-stock) | Gets rolling stock connected to the given end of this stock. |
| [get_control_behavior](#get-control-behavior) | Gets the control behavior of the entity (if any). |
| [get_damage_to_be_taken](#get-damage-to-be-taken) | Returns the amount of damage to be taken by this entity. |
| [get_driver](#get-driver) | Gets the driver of this vehicle if any. |
| [get_electric_input_flow_limit](#get-electric-input-flow-limit) | The input flow limit for the electric energy source. `nil` if the entity doesn't have an electric energy source. |
| [get_electric_output_flow_limit](#get-electric-output-flow-limit) | The output flow limit for the electric energy source. `nil` if the entity doesn't have an electric energy source. |
| [get_filter](#get-filter) | Get the filter for a slot in an inserter, loader, mining drill, asteroid collector, or logistic storage container. The entity must allow filters. |
| [get_fluid](#get-fluid) | Gets the fluid in the entity's given fluid storage if one exists. |
| [get_fluid_box_linked_connection](#get-fluid-box-linked-connection) | Returns other end of a linked fluidbox connection. |
| [get_fluid_box_linked_connections](#get-fluid-box-linked-connections) | Returns list of all linked fluidbox connections registered for this entity. |
| [get_fluid_box_neighbours](#get-fluid-box-neighbours) | The entities the given fluidbox is connected to. |
| [get_fluid_box_pipe_connections](#get-fluid-box-pipe-connections) | Get the given connections and associated data of the fluidbox. |
| [get_fluid_box_prototype](#get-fluid-box-prototype) | The prototype of the entity's given fluid storage if one exists. If this is used on a fluidbox of a crafting machine which due to recipe was created by merging multiple prototypes, a table of prototypes that were merged will be returned instead For storages on entities that have fluid storage but no prototype for those storages (fluid wagons, and fluid turrets) this returns `nil`. |
| [get_fluid_capacity](#get-fluid-capacity) | Gets the maximum capacity of the entity's given fluid storage. |
| [get_fluid_contents](#get-fluid-contents) | Get amounts of all fluids in this entity. |
| [get_fluid_count](#get-fluid-count) | Get the amount of all or some fluid in this entity. |
| [get_fluid_filter](#get-fluid-filter) | Get a fluidbox filter, such as the filter of a pump. |
| [get_fluid_segment_capacity](#get-fluid-segment-capacity) | Gets the maximum capacity of the given fluid storage's segment. |
| [get_fluid_segment_extent_bounding_box](#get-fluid-segment-extent-bounding-box) | Gets the current extent bounding box of of the given fluid storage's segment. |
| [get_fluid_segment_filter](#get-fluid-segment-filter) | Gets the filter of the given fluid storage's segment. The filter is based on the filters set on the fluidboxes of the segment, so it can't be set directly on the segment. |
| [get_fluid_segment_fluid](#get-fluid-segment-fluid) | The fluid within the given storage's fluid segment. |
| [get_fluid_segment_id](#get-fluid-segment-id) |  |
| [get_fluid_source_fluid](#get-fluid-source-fluid) | Checks what is expected fluid to be produced from the offshore pump's source tile. It accounts for visible tile, hidden tile and double hidden tile. It ignores currently set fluid box filter. |
| [get_fluid_source_tile](#get-fluid-source-tile) | Gives TilePosition of a tile which this offshore pump uses to check what fluid should be produced. |
| [get_fuel_inventory](#get-fuel-inventory) | The fuel inventory for this entity or `nil` if this entity doesn't have a fuel inventory. |
| [get_health_ratio](#get-health-ratio) | The health ratio of this entity between 1 and 0 (for full health and no health respectively). |
| [get_heat_setting](#get-heat-setting) | Gets the heat setting for this heat interface. |
| [get_inbound_signals](#get-inbound-signals) | Returns all signals guarding entrance to a rail block this rail belongs to. |
| [get_infinity_container_filter](#get-infinity-container-filter) | Gets the filter for this infinity container at the given index, or `nil` if the filter index doesn't exist or is empty. |
| [get_infinity_pipe_filter](#get-infinity-pipe-filter) | Gets the filter for this infinity pipe, or `nil` if the filter is empty. |
| [get_inventory_bar](#get-inventory-bar) | The same as LuaInventory::get_bar but also works for ghosts where the inventory is not available through LuaControl::get_inventory. |
| [get_inventory_filter](#get-inventory-filter) | The same as LuaInventory::get_filter but also works for ghosts where the inventory is not available through LuaControl::get_inventory. |
| [get_inventory_size_override](#get-inventory-size-override) | Gets the inventory size override of the selected inventory if size override was set using set_inventory_size_override. |
| [get_item_insert_specification](#get-item-insert-specification) | Get an item insert specification onto a belt connectable: for a given map position provides into which line at what position item should be inserted to be closest to the provided position. |
| [get_line_item_position](#get-line-item-position) | Get a map position related to a position on a transport line. |
| [get_logistic_point](#get-logistic-point) | Gets all the `LuaLogisticPoint`s that this entity owns. Optionally returns only the point specified by the index parameter. |
| [get_logistic_sections](#get-logistic-sections) | Gives logistic sections of this entity if it uses logistic sections. |
| [get_market_items](#get-market-items) | Get all offers in a market as an array. |
| [get_max_transport_line_index](#get-max-transport-line-index) | Get the maximum transport line index of a belt or belt connectable entity. |
| [get_module_inventory](#get-module-inventory) | Inventory for storing modules of this entity; `nil` if this entity has no module inventory. |
| [get_movement](#get-movement) | Gets the combined movement vector (direction and speed) of this combat robot or asteroid. The entity moves by this vector each tick. |
| [get_or_create_control_behavior](#get-or-create-control-behavior) | Gets (and or creates if needed) the control behavior of the entity. |
| [get_outbound_signals](#get-outbound-signals) | Returns all signals guarding exit from a rail block this rail belongs to. |
| [get_output_inventory](#get-output-inventory) | Gets the entity's output inventory if it has one. |
| [get_parent_signals](#get-parent-signals) | Returns all parent signals. Parent signals are always RailChainSignal. Parent signals are those signals that are checking state of this signal to determine their own chain state. |
| [get_passenger](#get-passenger) | Gets the passenger of this car, spidertron, or cargo pod if any. |
| [get_priority_target](#get-priority-target) | Get the entity ID at the specified position in the turret's priority list. |
| [get_radius](#get-radius) | The radius of this entity. The radius is defined as half the distance between the top left corner and bottom right corner of the collision box. |
| [get_rail_end](#get-rail-end) | Gets a LuaRailEnd object for specified end of this rail |
| [get_rail_segment_end](#get-rail-segment-end) | Get the rail at the end of the rail segment this rail is in. |
| [get_rail_segment_length](#get-rail-segment-length) | Get the length of the rail segment this rail is in. |
| [get_rail_segment_overlaps](#get-rail-segment-overlaps) | Get a rail from each rail segment that overlaps with this rail's rail segment. |
| [get_rail_segment_rails](#get-rail-segment-rails) | Get all rails of a rail segment this rail is in |
| [get_rail_segment_signal](#get-rail-segment-signal) | Get the rail signal at the start/end of the rail segment this rail is in. |
| [get_rail_segment_stop](#get-rail-segment-stop) | Get train stop at the start/end of the rail segment this rail is in. |
| [get_recipe](#get-recipe) | Current recipe being assembled by this machine, if any. |
| [get_signal](#get-signal) | Read a single signal from the selected wire connector |
| [get_signals](#get-signals) | Read all signals from the selected wire connector. |
| [get_spider_legs](#get-spider-legs) | Gets legs of given SpiderVehicle. |
| [get_stopped_train](#get-stopped-train) | The train currently stopped at this train stop, if any. |
| [get_stored_durability](#get-stored-durability) |  |
| [get_tooltip_field](#get-tooltip-field) | Gets selected runtime tooltip field. |
| [get_tooltip_fields](#get-tooltip-fields) | Gets all runtime tooltip fields attached to this entity. |
| [get_train_stop_trains](#get-train-stop-trains) | The trains scheduled to stop at this train stop. |
| [get_transport_line](#get-transport-line) | Get a transport line of a belt or belt connectable entity. |
| [get_upgrade_target](#get-upgrade-target) | Returns the new entity prototype and its quality. |
| [get_wire_connector](#get-wire-connector) | Gets a single wire connector of this entity, if any. |
| [get_wire_connectors](#get-wire-connectors) | Gets all wire connectors of this entity |
| [ghost_has_flag](#ghost-has-flag) | Same as LuaEntity::has_flag, but targets the inner entity on a entity ghost. |
| [has_flag](#has-flag) | Test whether this entity's prototype has a certain flag set. |
| [has_fluid_segment](#has-fluid-segment) | Whether the given fluid storage has a fluid segment. |
| [insert_fluid](#insert-fluid) | Insert fluid into this entity. Fluidbox is chosen automatically. |
| [inventory_supports_bar](#inventory-supports-bar) | The same as LuaInventory::supports_bar but also works for ghosts where the inventory is not available through LuaControl::get_inventory. |
| [inventory_supports_filters](#inventory-supports-filters) | The same as LuaInventory::supports_filters but also works for ghosts where the inventory is not available through LuaControl::get_inventory. |
| [is_closed](#is-closed) |  |
| [is_closing](#is-closing) |  |
| [is_connected_to_electric_network](#is-connected-to-electric-network) | Returns `true` if this entity produces or consumes electricity and is connected to an electric network that has at least one entity that can produce power. |
| [is_crafting](#is-crafting) | Returns whether a craft is currently in process. It does not indicate whether progress is currently being made, but whether a crafting process has been started in this machine. |
| [is_inventory_filtered](#is-inventory-filtered) | The same as LuaInventory::is_filtered but also works for ghosts where the inventory is not available through LuaControl::get_inventory. |
| [is_opened](#is-opened) |  |
| [is_opening](#is-opening) |  |
| [is_rail_in_same_rail_block_as](#is-rail-in-same-rail-block-as) | Checks if this rail and other rail both belong to the same rail block. |
| [is_rail_in_same_rail_segment_as](#is-rail-in-same-rail-segment-as) | Checks if this rail and other rail both belong to the same rail segment. |
| [is_registered_for_construction](#is-registered-for-construction) | Is this entity or tile ghost or item request proxy registered for construction? If false, it means a construction robot has been dispatched to build the entity, or it is not an entity that can be constructed. |
| [is_registered_for_deconstruction](#is-registered-for-deconstruction) | Is this entity registered for deconstruction with this force? If false, it means a construction robot has been dispatched to deconstruct it, or it is not marked for deconstruction. The complexity is effectively O(1) - it depends on the number of objects targeting this entity which should be small enough. |
| [is_registered_for_repair](#is-registered-for-repair) | Is this entity registered for repair? If false, it means a construction robot has been dispatched to repair it, or it is not damaged. This is worst-case O(N) complexity where N is the current number of things in the repair queue. |
| [is_registered_for_upgrade](#is-registered-for-upgrade) | Is this entity registered for upgrade? If false, it means a construction robot has been dispatched to upgrade it, or it is not marked for upgrade. This is worst-case O(N) complexity where N is the current number of things in the upgrade queue. |
| [launch_rocket](#launch-rocket) |  |
| [mine](#mine) | Mines this entity. |
| [order_deconstruction](#order-deconstruction) | Sets the entity to be deconstructed by construction robots. |
| [order_upgrade](#order-upgrade) | Sets the entity to be upgraded by construction robots. |
| [play_note](#play-note) | Plays a note with the given instrument and note. |
| [register_tree](#register-tree) | Registers the given tree in this agricultural tower. |
| [release_from_spawner](#release-from-spawner) | Release the unit from the spawner which spawned it. This allows the spawner to continue spawning additional units. |
| [remove_fluid](#remove-fluid) | Removes the given fluid amount from the entity's given fluid storage if possible. |
| [remove_fluid_box_linked_connection](#remove-fluid-box-linked-connection) | Removes linked fluidbox connection record. If connected, other end will be also removed. |
| [remove_fluid_segment_fluid](#remove-fluid-segment-fluid) | Removes the given fluid amount from the given storage's fluid segment if possible. |
| [remove_market_item](#remove-market-item) | Remove an offer from a market. |
| [request_to_close](#request-to-close) |  |
| [request_to_open](#request-to-open) |  |
| [revive](#revive) | Revive a ghost, which turns it from a ghost into a real entity or tile. |
| [rotate](#rotate) | Rotates this entity as if the player rotated it. |
| [set_beam_source](#set-beam-source) | Set the source of this beam. |
| [set_beam_target](#set-beam-target) | Set the target of this beam. |
| [set_driver](#set-driver) | Sets the driver of this vehicle. |
| [set_filter](#set-filter) | Set the filter for a slot in an inserter (ItemFilter), loader (ItemFilter), mining drill (EntityID), asteroid collector (AsteroidChunkID) or logistic storage container (ItemWithQualityID). The entity must allow filters. |
| [set_fluid](#set-fluid) | Sets the fluid in the entity's given fluid storage to the provided fluid if possible. |
| [set_fluid_filter](#set-fluid-filter) | Set a fluidbox filter, such as the filter of a pump. |
| [set_fluid_segment_fluid](#set-fluid-segment-fluid) | Sets the fluid within the given storage's fluid segment. |
| [set_heat_setting](#set-heat-setting) | Sets the heat setting for this heat interface. |
| [set_infinity_container_filter](#set-infinity-container-filter) | Sets the filter for this infinity container at the given index. |
| [set_infinity_pipe_filter](#set-infinity-pipe-filter) | Sets the filter for this infinity pipe. |
| [set_inventory_bar](#set-inventory-bar) | The same as LuaInventory::set_bar but also works for ghosts where the inventory is not available through LuaControl::get_inventory. |
| [set_inventory_filter](#set-inventory-filter) | The same as LuaInventory::set_filter but also works for ghosts where the inventory is not available through LuaControl::get_inventory. |
| [set_inventory_size_override](#set-inventory-size-override) | Sets inventory size override. When set, supported entity will ignore inventory size from prototype and will instead keep inventory size equal to the override. Setting `nil` will restore default inventory size. |
| [set_movement](#set-movement) | Sets the movement direction and movement speed for this combat robot or asteroid. |
| [set_passenger](#set-passenger) | Sets the passenger of this car, spidertron, or cargo pod. |
| [set_priority_target](#set-priority-target) | Set the entity ID name at the specified position in the turret's priority list. |
| [set_recipe](#set-recipe) | Sets the given recipe in this assembly machine. |
| [set_stored_durability](#set-stored-durability) |  |
| [set_tooltip_field](#set-tooltip-field) | Adds or changes runtime tooltip field. If `id` is not given a new one will be allocated in a way that makes it unique within this entity. If a value is given that is already used, existing line will be updated. |
| [silent_revive](#silent-revive) | Revives a ghost silently, so the revival makes no sound and no smoke is created. |
| [spawn_decorations](#spawn-decorations) | Triggers spawn_decoration actions defined in the entity prototype or does nothing if entity is not "turret" or "unit-spawner". |
| [start_fading_out](#start-fading-out) | Only works if the entity is a speech-bubble, with an "effect" defined in its wrapper_flow_style. Starts animating the opacity of the speech bubble towards zero, and destroys the entity when it hits zero. |
| [stop_spider](#stop-spider) | Sets the speed of the given SpiderVehicle to zero. Notably does not clear its autopilot_destination, which it will continue moving towards if set. |
| [supports_backer_name](#supports-backer-name) | Whether this entity supports a backer name. |
| [to_be_deconstructed](#to-be-deconstructed) | Is this entity marked for deconstruction? |
| [to_be_upgraded](#to-be-upgraded) | Is this entity marked for upgrade? |
| [toggle_equipment_movement_bonus](#toggle-equipment-movement-bonus) | Toggle this entity's equipment movement bonus. Does nothing if the entity does not have an equipment grid. |
| [update_connections](#update-connections) | Reconnect loader, beacon, cliff and mining drill connections to entities that might have been teleported out or in by the script. The game doesn't do this automatically as we don't want to lose performance by checking this in normal games. |

### add_autopilot_destination

`add_autopilot_destination(attempt_patrol, position)`

Adds the given position to this spidertron's autopilot's queue of destinations.

#### Parameters

##### attempt_patrol

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the autopilot logic should attempt to initiate patrol mode at the given position. Defaults to `false`.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position the spidertron should move to.

### add_fluid

`add_fluid(fluid, index)`

Adds the given fluid to the entity's given fluid storage if possible.

If the current fluid conflicts or the current filter conflicts the fluid may not be added.

#### Parameters

##### fluid

**Type:** [Fluid](../concepts/Fluid.md)

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [FluidAmount](../concepts/FluidAmount.md) — The amount of fluid added.

### add_fluid_box_linked_connection

`add_fluid_box_linked_connection(other_entity, other_linked_connection_id, this_linked_connection_id)`

Registers a linked fluidbox connection between this entity and other entity. Because entity may have multiple fluidboxes, each with multiple connections that could be linked, a unique value for this and other linked_connection_id may need to be given.

It may happen a linked fluidbox connection is not established immediately due to crafting machines being possible to not have certain fluidboxes exposed at a given point in time, but once they appear (due to recipe changes that would use them) they will be linked. Linked connections are persisted as (this_entity, this_linked_connection_id, other_entity, other_linked_connection_id) so if a pipe connection definition's value of linked_connection_id changes existing connections may not restore correct connections.

Every fluidbox connection that was defined in prototypes as connection_type=="linked" may be linked to at most 1 other fluidbox. When trying to connect already used connection, previous connection will be removed.

Linked connections cannot go to the same entity even if they would be part of other fluidbox.

#### Parameters

##### other_entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

##### other_linked_connection_id

**Type:** [uint32](../concepts/uint32.md)

##### this_linked_connection_id

**Type:** [uint32](../concepts/uint32.md)

### add_fluid_segment_fluid

`add_fluid_segment_fluid(fluid, index)`

Adds the given fluid to the given storage's fluid segment if possible.

#### Parameters

##### fluid

**Type:** [Fluid](../concepts/Fluid.md)

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [FluidAmount](../concepts/FluidAmount.md) — The amount of fluid added.

### add_market_item

`add_market_item(offer)`

Offer a thing on the market.

#### Parameters

##### offer

**Type:** [Offer](../concepts/Offer.md)

**Examples:**

```
-- Adds market offer, 1 copper ore for 10 iron ore
market.add_market_item{price={{name = "iron-ore", count = 10}}, offer={type="give-item", item="copper-ore"}}
```

```
-- Adds market offer, 1 copper ore for 5 iron ore and 5 stone ore
market.add_market_item{price={{name = "iron-ore", count = 5}, {name = "stone", count = 5}}, offer={type="give-item", item="copper-ore"}}
```

### apply_upgrade

`apply_upgrade(buffer, override_target)`

Upgrades this entity in place if it's marked to be upgraded.

#### Parameters

##### buffer

**Type:** [LuaInventory](../classes/LuaInventory.md) · _optional_

If provided - any items left over from the upgrade are put into this inventory.

##### override_target

**Type:** [EntityWithQualityID](../concepts/EntityWithQualityID.md) · _optional_

The override upgrade target - used instead of the entities current upgrade target if given. Note, the entity must be fast-replaceable with the override target, or it won't be upgraded.

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — The first upgraded entity - `nil` if this entity is not marked for upgrade.
- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — When upgrading underground belts, the other underground belt end that was also upgraded - `nil` if this entity is not marked for upgrade.

#### Raises

- `script_raised_built` — Raised for the new entity if the entity was actually upgraded.
- `script_raised_destroy` — Raised for the old entity if the entity was actually upgraded.

### can_be_destroyed

`can_be_destroyed()`

Whether the entity can be destroyed

#### Return values

- [boolean](../concepts/boolean.md)

### can_set_inventory_filter

`can_set_inventory_filter(filter, index, inventory_index)`

The same as [LuaInventory::can_set_filter](../classes/LuaInventory.md#can-set-filter) but also works for ghosts where the inventory is not available through [LuaControl::get_inventory](../classes/LuaControl.md#get-inventory).

#### Parameters

##### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md)

The item filter

##### index

**Type:** [uint32](../concepts/uint32.md)

The item stack index

##### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md)

### can_shoot

`can_shoot(position, target)`

Whether this character can shoot the given entity or position.

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

##### target

**Type:** [LuaEntity](../classes/LuaEntity.md)

#### Return values

- [boolean](../concepts/boolean.md)

### can_wires_reach

`can_wires_reach(entity)`

Can wires reach between these entities.

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

#### Return values

- [boolean](../concepts/boolean.md)

### cancel_deconstruction

`cancel_deconstruction(force, player)`

Cancels deconstruction if it is scheduled, does nothing otherwise.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force who did the deconstruction order.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to set the `last_user` to if any.

#### Raises

- `on_cancelled_deconstruction` — Raised if the entity's deconstruction was successfully cancelled.

### cancel_upgrade

`cancel_upgrade(force, player)`

Cancels upgrade if it is scheduled, does nothing otherwise.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force who did the upgrade order.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to set the last_user to if any.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the cancel was successful.

#### Raises

- `on_cancelled_upgrade` — Raised if the entity was previously marked for upgrade.

### clear_fluid

`clear_fluid(index)`

Removes all fluid from the entity's given fluid storage if possible.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [Fluid](../concepts/Fluid.md) _(optional)_ — The fluid cleared.

### clear_fluid_inside

`clear_fluid_inside()`

Remove all fluids from this entity and connected fluid segments.

### clear_fluid_segment_fluid

`clear_fluid_segment_fluid(index)`

Clears the given fluid storage's fluid segment.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [Fluid](../concepts/Fluid.md) _(optional)_ — The fluid cleared.

### clear_fluids

`clear_fluids()`

Clears all fluids in this entity but will not clear fluids in any fluid segments fluidboxes may be part of.

#### Return values

- array[[Fluid](../concepts/Fluid.md)] — The fluids removed.

### clear_market_items

`clear_market_items()`

Removes all offers from a market.

### clear_stored_durability

`clear_stored_durability()`

### clear_tooltip_field

`clear_tooltip_field(id)`

Removes selected runtime tooltip field.

#### Parameters

##### id

**Type:** [uint32](../concepts/uint32.md)

### clear_tooltip_fields

`clear_tooltip_fields()`

Removes all runtime tooltip fields attached to this entity.

### clone

`clone({create_build_effect_smoke, force, position, surface})`

Clones this entity.

#### Parameters

##### create_build_effect_smoke

**Type:** [boolean](../concepts/boolean.md) · _optional_

If false, the building effect smoke will not be shown around the new entity.

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The destination position

##### surface

**Type:** [LuaSurface](../classes/LuaSurface.md) · _optional_

The destination surface

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — The cloned entity or `nil` if this entity can't be cloned/can't be cloned to the given location.

#### Raises

- `on_entity_cloned` — Raised if the entity was successfully cloned.

### connect_linked_belts

`connect_linked_belts(neighbour)`

Connects current linked belt with another one.

Neighbours have to be of different type. If given linked belt is connected to something else it will be disconnected first. If provided neighbour is connected to something else it will also be disconnected first. Automatically updates neighbour to be connected back to this one.

#### Parameters

##### neighbour

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

Another linked belt or entity ghost containing linked belt to connect or nil to disconnect

### connect_rolling_stock

`connect_rolling_stock(direction)`

Connects the rolling stock in the given direction.

#### Parameters

##### direction

**Type:** [defines.rail_direction](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether any connection was made

### copy_settings

`copy_settings(by_player, entity)`

Copies settings from the given entity onto this entity.

#### Parameters

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

If provided, the copying is done 'as' this player and [on_entity_settings_pasted](../events/on_entity_settings_pasted.md) is triggered.

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

#### Return values

- array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] — Any items removed from this entity as a result of copying the settings.

### create_build_effect_smoke

`create_build_effect_smoke()`

Creates the same smoke that is created when you place a building by hand.

You can play the building sound to go with it by using [LuaSurface::play_sound](../classes/LuaSurface.md#play-sound), eg: `entity.surface.play_sound{path="entity-build/"..entity.prototype.name, position=entity.position}`

### create_cargo_pod

`create_cargo_pod({cargo_hatch, cargo_pod_prototype})`

Creates a cargo pod if possible.

Cargo pod will be created with [invalid](../defines/defines.md) destination type. Setting [cargo_pod_destination](../classes/LuaEntity.md#cargo-pod-destination) will cause it to launch.

#### Parameters

##### cargo_hatch

**Type:** [LuaCargoHatch](../classes/LuaCargoHatch.md) · _optional_

The hatch to create the pod at. A random (available) one is picked if not provided.

##### cargo_pod_prototype

**Type:** [EntityID](../concepts/EntityID.md) · _optional_

The cargo pod prototype to create. If not provided, the default cargo pod prototype of the hatch is used.

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_

### damage

`damage(cause, damage, force, source, type)`

Damages the entity.

#### Parameters

##### cause

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity that originally triggered the events that led to this damage being dealt (e.g. the character, turret, enemy, etc. that pulled the trigger). Does not need to be on the same surface as the entity being damaged.

##### damage

**Type:** [float](../concepts/float.md)

The amount of damage to be done.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force that will be doing the damage.

##### source

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity that is directly dealing the damage (e.g. the projectile, flame, sticker, grenade, laser beam, etc.). Needs to be on the same surface as the entity being damaged.

##### type

**Type:** [DamageTypeID](../concepts/DamageTypeID.md) · _optional_

The type of damage to be done, defaults to `"impact"`.

#### Return values

- [float](../concepts/float.md) — the total damage actually applied after resistances.

#### Raises

- `on_entity_damaged` — 

### deplete

`deplete()`

Depletes and destroys this resource entity.

#### Raises

- `on_resource_depleted` — 

### destroy

`destroy({do_cliff_correction, player, raise_destroy, undo_index})`

Destroys the entity.

Not all entities can be destroyed - things such as rails under trains cannot be destroyed until the train is moved or destroyed.

#### Parameters

##### do_cliff_correction

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether neighbouring cliffs should be corrected. Defaults to `false`.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player whose undo queue this action should be added to.

##### raise_destroy

**Type:** [boolean](../concepts/boolean.md) · _optional_

If `true`, [script_raised_destroy](../events/script_raised_destroy.md) will be called. Defaults to `false`.

##### undo_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index of the undo item to add this action to. An index of `0` creates a new undo item for it. Defaults to putting it into the appropriate undo item automatically if not specified.

#### Return values

- [boolean](../concepts/boolean.md) — Returns `false` if the entity was valid and destruction failed, `true` in all other cases.

#### Raises

- `script_raised_destroy` — Raised if the `raise_destroy` flag was set and the entity was successfully destroyed.

### die

`die(cause, force)`

Immediately kills the entity. Does nothing if the entity doesn't have health.

Unlike [LuaEntity::destroy](../classes/LuaEntity.md#destroy), `die` will trigger the [on_entity_died](../events/on_entity_died.md) event and the entity will produce a corpse and drop loot if it has any.

#### Parameters

##### cause

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The cause to attribute the kill to.

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

The force to attribute the kill to.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the entity was successfully killed.

#### Raises

- `on_entity_died` — Raised if the entity was successfully killed. If `force` is not specified, the event will blame the `"neutral"` force.
- `on_post_entity_died` — Raised if the entity was successfully killed.

**Example:**

```
-- This function can be called with only the `cause` argument and no `force`:
entity.die(nil, killer_entity)
```

### disconnect_linked_belts

`disconnect_linked_belts()`

Disconnects linked belt from its neighbour.

### disconnect_rolling_stock

`disconnect_rolling_stock(direction)`

Tries to disconnect this rolling stock in the given direction.

#### Parameters

##### direction

**Type:** [defines.rail_direction](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md) — If anything was disconnected

### extract_fluid

`extract_fluid({amount, maximum_temperature, minimum_temperature, name, temperature})`

Remove fluid from this entity.

If temperature is given only fluid matching that exact temperature is removed. If minimum and maximum is given fluid within that range is removed.

#### Parameters

##### amount

**Type:** [FluidAmount](../concepts/FluidAmount.md)

Amount to remove

##### maximum_temperature

**Type:** [double](../concepts/double.md) · _optional_

##### minimum_temperature

**Type:** [double](../concepts/double.md) · _optional_

##### name

**Type:** [string](../concepts/string.md)

Fluid prototype name.

##### temperature

**Type:** [double](../concepts/double.md) · _optional_

#### Return values

- [FluidAmount](../concepts/FluidAmount.md) — Amount of fluid actually removed.

### flip

`flip({by_player, horizontal})`

Flips this entity

#### Parameters

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

##### horizontal

**Type:** [boolean](../concepts/boolean.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the flip was successful.

#### Raises

- `on_player_flipped_entity` — Raised if the `by_player` argument was given and the flip was successful.

### force_finish_ascending

`force_finish_ascending()`

Take an ascending cargo pod and safely make it skip all animation and immediately switch surface.

#### Raises

- `on_cargo_pod_finished_ascending` — 

### force_finish_descending

`force_finish_descending()`

Take a descending cargo pod and safely make it arrive and deposit cargo.

#### Raises

- `on_cargo_pod_delivered_cargo` — Raised instantly if landing on the ground (i.e. destination type is [surface](../defines/defines.md). If landing in a [station](../defines/defines.md), event will be raised after parking is complete.
- `on_cargo_pod_finished_descending` — 

### get_beacon_effect_receivers

`get_beacon_effect_receivers()`

Returns a table with all entities affected by this beacon

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_beacons

`get_beacons()`

Returns a table with all beacons affecting this effect receiver. Can only be used when the entity has an effect receiver (AssemblingMachine, Furnace, Lab, MiningDrills)

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)] _(optional)_

### get_beam_source

`get_beam_source()`

Get the source of this beam.

#### Return values

- [BeamTarget](../concepts/BeamTarget.md) _(optional)_

### get_beam_target

`get_beam_target()`

Get the target of this beam.

#### Return values

- [BeamTarget](../concepts/BeamTarget.md) _(optional)_

### get_burnt_result_inventory

`get_burnt_result_inventory()`

The burnt result inventory for this entity or `nil` if this entity doesn't have a burnt result inventory.

#### Return values

- [LuaInventory](../classes/LuaInventory.md) _(optional)_

### get_cargo_bays

`get_cargo_bays()`

Gets the cargo bays connected to this cargo landing pad or space platform hub.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_child_signals

`get_child_signals()`

Returns all child signals. Child signals can be either RailSignal or RailChainSignal. Child signals are signals which are checked by this signal to determine a chain state.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_circuit_network

`get_circuit_network(wire_connector_id)`

#### Parameters

##### wire_connector_id

**Type:** [defines.wire_connector_id](../defines/defines.md)

Wire connector to get circuit network for.

#### Return values

- [LuaCircuitNetwork](../classes/LuaCircuitNetwork.md) _(optional)_ — The circuit network or nil.

### get_connected_rail

`get_connected_rail({rail_connection_direction, rail_direction})`

#### Parameters

##### rail_connection_direction

**Type:** [defines.rail_connection_direction](../defines/defines.md)

##### rail_direction

**Type:** [defines.rail_direction](../defines/defines.md)

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — Rail connected in the specified manner to this one, `nil` if unsuccessful.
- [defines.rail_direction](../defines/defines.md) _(optional)_ — Rail direction of the returned rail which points to origin rail
- [defines.rail_connection_direction](../defines/defines.md) _(optional)_ — Turn to be taken when going back from returned rail to origin rail

### get_connected_rails

`get_connected_rails()`

Get the rails that this signal is connected to.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_connected_rolling_stock

`get_connected_rolling_stock(direction)`

Gets rolling stock connected to the given end of this stock.

#### Parameters

##### direction

**Type:** [defines.rail_direction](../defines/defines.md)

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — The rolling stock connected at the given end, `nil` if none is connected there.
- [defines.rail_direction](../defines/defines.md) _(optional)_ — The rail direction of the connected rolling stock if any.

### get_control_behavior

`get_control_behavior()`

Gets the control behavior of the entity (if any).

#### Return values

- [LuaControlBehavior](../classes/LuaControlBehavior.md) _(optional)_ — The control behavior or `nil`.

### get_damage_to_be_taken

`get_damage_to_be_taken()`

Returns the amount of damage to be taken by this entity.

#### Return values

- [float](../concepts/float.md) _(optional)_ — `nil` if this entity does not have health.

### get_driver

`get_driver()`

Gets the driver of this vehicle if any.

#### Return values

- [LuaEntity](../classes/LuaEntity.md) ∣ [LuaPlayer](../classes/LuaPlayer.md) _(optional)_ — `nil` if the vehicle contains no driver. To check if there's a passenger see [LuaEntity::get_passenger](../classes/LuaEntity.md#get-passenger).

### get_electric_input_flow_limit

`get_electric_input_flow_limit(quality)`

The input flow limit for the electric energy source. `nil` if the entity doesn't have an electric energy source.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_electric_output_flow_limit

`get_electric_output_flow_limit(quality)`

The output flow limit for the electric energy source. `nil` if the entity doesn't have an electric energy source.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_filter

`get_filter(slot_index)`

Get the filter for a slot in an inserter, loader, mining drill, asteroid collector, or logistic storage container. The entity must allow filters.

#### Parameters

##### slot_index

**Type:** [uint32](../concepts/uint32.md)

Index of the slot to get the filter for.

#### Return values

- [ItemFilter](../concepts/ItemFilter.md) ∣ [EntityID](../concepts/EntityID.md) ∣ [AsteroidChunkID](../concepts/AsteroidChunkID.md) _(optional)_ — The filter, or `nil` if the given slot has no filter.

### get_fluid

`get_fluid(index)`

Gets the fluid in the entity's given fluid storage if one exists.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [Fluid](../concepts/Fluid.md) _(optional)_ — The fluid in this storage. `nil` if fluid storage is empty.

### get_fluid_box_linked_connection

`get_fluid_box_linked_connection(this_linked_connection_id)`

Returns other end of a linked fluidbox connection.

#### Parameters

##### this_linked_connection_id

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — Other entity to which a linked fluidbox connection was made
- [uint32](../concepts/uint32.md) _(optional)_ — linked_connection_id on other entity

### get_fluid_box_linked_connections

`get_fluid_box_linked_connections()`

Returns list of all linked fluidbox connections registered for this entity.

#### Return values

- array[[FluidBoxConnectionRecord](../concepts/FluidBoxConnectionRecord.md)]

### get_fluid_box_neighbours

`get_fluid_box_neighbours(index)`

The entities the given fluidbox is connected to.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- array[[FluidBoxNeighbourRecord](../concepts/FluidBoxNeighbourRecord.md)] _(optional)_

### get_fluid_box_pipe_connections

`get_fluid_box_pipe_connections(index)`

Get the given connections and associated data of the fluidbox.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- array[[PipeConnection](../concepts/PipeConnection.md)] _(optional)_

### get_fluid_box_prototype

`get_fluid_box_prototype(index)`

The prototype of the entity's given fluid storage if one exists. If this is used on a fluidbox of a crafting machine which due to recipe was created by merging multiple prototypes, a table of prototypes that were merged will be returned instead For storages on entities that have fluid storage but no prototype for those storages (fluid wagons, and fluid turrets) this returns `nil`.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [LuaFluidBoxPrototype](../classes/LuaFluidBoxPrototype.md) ∣ array[[LuaFluidBoxPrototype](../classes/LuaFluidBoxPrototype.md)] _(optional)_

### get_fluid_capacity

`get_fluid_capacity(index)`

Gets the maximum capacity of the entity's given fluid storage.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [FluidAmount](../concepts/FluidAmount.md)

### get_fluid_contents

`get_fluid_contents()`

Get amounts of all fluids in this entity.

If information about fluid temperatures is required, [LuaEntity::get_fluid](../classes/LuaEntity.md#get-fluid) should be used instead.

#### Return values

- dictionary[[string](../concepts/string.md) → [FluidAmount](../concepts/FluidAmount.md)] — The amounts, indexed by fluid names.

### get_fluid_count

`get_fluid_count(fluid)`

Get the amount of all or some fluid in this entity.

If information about fluid temperatures is required, [LuaEntity::get_fluid](../classes/LuaEntity.md#get-fluid) should be used instead.

#### Parameters

##### fluid

**Type:** [string](../concepts/string.md) · _optional_

Prototype name of the fluid to count. If not specified, count all fluids.

#### Return values

- [FluidAmount](../concepts/FluidAmount.md)

### get_fluid_filter

`get_fluid_filter(index)`

Get a fluidbox filter, such as the filter of a pump.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [FluidFilter](../concepts/FluidFilter.md) _(optional)_

### get_fluid_segment_capacity

`get_fluid_segment_capacity(index)`

Gets the maximum capacity of the given fluid storage's segment.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [FluidAmount](../concepts/FluidAmount.md)

### get_fluid_segment_extent_bounding_box

`get_fluid_segment_extent_bounding_box(index)`

Gets the current extent bounding box of of the given fluid storage's segment.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [BoundingBox](../concepts/BoundingBox.md)

### get_fluid_segment_filter

`get_fluid_segment_filter(index)`

Gets the filter of the given fluid storage's segment. The filter is based on the filters set on the fluidboxes of the segment, so it can't be set directly on the segment.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [FluidFilter](../concepts/FluidFilter.md) _(optional)_

### get_fluid_segment_fluid

`get_fluid_segment_fluid(index)`

The fluid within the given storage's fluid segment.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [Fluid](../concepts/Fluid.md) _(optional)_

### get_fluid_segment_id

`get_fluid_segment_id(index)`

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [uint32](../concepts/uint32.md)

### get_fluid_source_fluid

`get_fluid_source_fluid()`

Checks what is expected fluid to be produced from the offshore pump's source tile. It accounts for visible tile, hidden tile and double hidden tile. It ignores currently set fluid box filter.

#### Return values

- [string](../concepts/string.md) _(optional)_ — Name of fluid that should be produced by this offshore pump based on existing tiles.

### get_fluid_source_tile

`get_fluid_source_tile()`

Gives TilePosition of a tile which this offshore pump uses to check what fluid should be produced.

#### Return values

- [TilePosition](../concepts/TilePosition.md)

### get_fuel_inventory

`get_fuel_inventory()`

The fuel inventory for this entity or `nil` if this entity doesn't have a fuel inventory.

#### Return values

- [LuaInventory](../classes/LuaInventory.md) _(optional)_

### get_health_ratio

`get_health_ratio()`

The health ratio of this entity between 1 and 0 (for full health and no health respectively).

#### Return values

- [float](../concepts/float.md) _(optional)_ — `nil` if this entity doesn't have health.

### get_heat_setting

`get_heat_setting()`

Gets the heat setting for this heat interface.

#### Return values

- [HeatSetting](../concepts/HeatSetting.md)

### get_inbound_signals

`get_inbound_signals()`

Returns all signals guarding entrance to a rail block this rail belongs to.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_infinity_container_filter

`get_infinity_container_filter(index)`

Gets the filter for this infinity container at the given index, or `nil` if the filter index doesn't exist or is empty.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index to get.

#### Return values

- [InfinityInventoryFilter](../concepts/InfinityInventoryFilter.md) _(optional)_

### get_infinity_pipe_filter

`get_infinity_pipe_filter()`

Gets the filter for this infinity pipe, or `nil` if the filter is empty.

#### Return values

- [InfinityPipeFilter](../concepts/InfinityPipeFilter.md) _(optional)_

### get_inventory_bar

`get_inventory_bar(inventory_index)`

The same as [LuaInventory::get_bar](../classes/LuaInventory.md#get-bar) but also works for ghosts where the inventory is not available through [LuaControl::get_inventory](../classes/LuaControl.md#get-inventory).

#### Parameters

##### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

#### Return values

- [uint32](../concepts/uint32.md)

### get_inventory_filter

`get_inventory_filter(index, inventory_index)`

The same as [LuaInventory::get_filter](../classes/LuaInventory.md#get-filter) but also works for ghosts where the inventory is not available through [LuaControl::get_inventory](../classes/LuaControl.md#get-inventory).

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The item stack index

##### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

#### Return values

- [ItemFilter](../concepts/ItemFilter.md) _(optional)_ — The current filter or `nil` if none.

### get_inventory_size_override

`get_inventory_size_override(inventory_index)`

Gets the inventory size override of the selected inventory if size override was set using [set_inventory_size_override](../classes/LuaEntity.md#set-inventory-size-override).

#### Parameters

##### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

#### Return values

- [uint16](../concepts/uint16.md) _(optional)_

### get_item_insert_specification

`get_item_insert_specification(mirrored, position)`

Get an item insert specification onto a belt connectable: for a given map position provides into which line at what position item should be inserted to be closest to the provided position.

#### Parameters

##### mirrored

**Type:** [boolean](../concepts/boolean.md) · _optional_

When inserting at position exactly in between lines, mirroring is used to choose line.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Position where the item is to be inserted.

#### Return values

- [uint32](../concepts/uint32.md) — Index of the transport line that is closest to the provided map position.
- [float](../concepts/float.md) — Position along the transport line where item should be dropped.

### get_line_item_position

`get_line_item_position(index, position)`

Get a map position related to a position on a transport line.

#### Parameters

##### index

**Type:** [defines.transport_line](../defines/defines.md)

Index of the transport line. Transport lines are 1-indexed.

##### position

**Type:** [float](../concepts/float.md)

Linear position along the transport line. Clamped to the transport line range.

#### Return values

- [MapPosition](../concepts/MapPosition.md)

### get_logistic_point

`get_logistic_point(index)`

Gets all the `LuaLogisticPoint`s that this entity owns. Optionally returns only the point specified by the index parameter.

#### Parameters

##### index

**Type:** [defines.logistic_member_index](../defines/defines.md) · _optional_

If provided, this method only returns the `LuaLogisticPoint` specified by this index, or `nil` if it doesn't exist.

#### Return values

- [LuaLogisticPoint](../classes/LuaLogisticPoint.md) ∣ array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] _(optional)_

### get_logistic_sections

`get_logistic_sections()`

Gives logistic sections of this entity if it uses logistic sections.

#### Return values

- [LuaLogisticSections](../classes/LuaLogisticSections.md) _(optional)_

### get_market_items

`get_market_items()`

Get all offers in a market as an array.

#### Return values

- array[[Offer](../concepts/Offer.md)]

### get_max_transport_line_index

`get_max_transport_line_index()`

Get the maximum transport line index of a belt or belt connectable entity.

#### Return values

- [defines.transport_line](../defines/defines.md)

### get_module_inventory

`get_module_inventory()`

Inventory for storing modules of this entity; `nil` if this entity has no module inventory.

#### Return values

- [LuaInventory](../classes/LuaInventory.md) _(optional)_

### get_movement

`get_movement()`

Gets the combined movement vector (direction and speed) of this combat robot or asteroid. The entity moves by this vector each tick.

Note that for combat robots this does not include the constant drift in the direction they are facing.

#### Return values

- [Vector](../concepts/Vector.md)

### get_or_create_control_behavior

`get_or_create_control_behavior()`

Gets (and or creates if needed) the control behavior of the entity.

#### Return values

- [LuaControlBehavior](../classes/LuaControlBehavior.md) _(optional)_ — The control behavior or `nil`.

### get_outbound_signals

`get_outbound_signals()`

Returns all signals guarding exit from a rail block this rail belongs to.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_output_inventory

`get_output_inventory()`

Gets the entity's output inventory if it has one.

#### Return values

- [LuaInventory](../classes/LuaInventory.md) _(optional)_ — A reference to the entity's output inventory.

### get_parent_signals

`get_parent_signals()`

Returns all parent signals. Parent signals are always RailChainSignal. Parent signals are those signals that are checking state of this signal to determine their own chain state.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_passenger

`get_passenger()`

Gets the passenger of this car, spidertron, or cargo pod if any.

This differs over [LuaEntity::get_driver](../classes/LuaEntity.md#get-driver) in that for cars, the passenger can't drive the car.

#### Return values

- [LuaEntity](../classes/LuaEntity.md) ∣ [LuaPlayer](../classes/LuaPlayer.md) _(optional)_ — `nil` if the vehicle contains no passenger. To check if there's a driver see [LuaEntity::get_driver](../classes/LuaEntity.md#get-driver).

### get_priority_target

`get_priority_target(index)`

Get the entity ID at the specified position in the turret's priority list.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index of the entry to fetch.

#### Return values

- [LuaEntityPrototype](../classes/LuaEntityPrototype.md) _(optional)_

### get_radius

`get_radius()`

The radius of this entity. The radius is defined as half the distance between the top left corner and bottom right corner of the collision box.

#### Return values

- [double](../concepts/double.md)

### get_rail_end

`get_rail_end(direction)`

Gets a LuaRailEnd object for specified end of this rail

#### Parameters

##### direction

**Type:** [defines.rail_direction](../defines/defines.md)

#### Return values

- [LuaRailEnd](../classes/LuaRailEnd.md)

### get_rail_segment_end

`get_rail_segment_end(direction)`

Get the rail at the end of the rail segment this rail is in.

A rail segment is a continuous section of rail with no branches, signals, nor train stops.

#### Parameters

##### direction

**Type:** [defines.rail_direction](../defines/defines.md)

#### Return values

- [LuaEntity](../classes/LuaEntity.md) — The rail entity.
- [defines.rail_direction](../defines/defines.md) — A rail direction pointing out of the rail segment from the end rail.

### get_rail_segment_length

`get_rail_segment_length()`

Get the length of the rail segment this rail is in.

A rail segment is a continuous section of rail with no branches, signals, nor train stops.

#### Return values

- [double](../concepts/double.md)

### get_rail_segment_overlaps

`get_rail_segment_overlaps()`

Get a rail from each rail segment that overlaps with this rail's rail segment.

A rail segment is a continuous section of rail with no branches, signals, nor train stops.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_rail_segment_rails

`get_rail_segment_rails(direction)`

Get all rails of a rail segment this rail is in

A rail segment is a continuous section of rail with no branches, signals, nor train stops.

#### Parameters

##### direction

**Type:** [defines.rail_direction](../defines/defines.md)

Selects end of this rail that points to a rail segment end from which to start returning rails

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)] — Rails of this rail segment

### get_rail_segment_signal

`get_rail_segment_signal(direction, in_else_out)`

Get the rail signal at the start/end of the rail segment this rail is in.

A rail segment is a continuous section of rail with no branches, signals, nor train stops.

#### Parameters

##### direction

**Type:** [defines.rail_direction](../defines/defines.md)

The direction of travel relative to this rail.

##### in_else_out

**Type:** [boolean](../concepts/boolean.md)

If true, gets the signal at the entrance of the rail segment, otherwise gets the signal at the exit of the rail segment.

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — `nil` if the rail segment doesn't start/end with a signal.

### get_rail_segment_stop

`get_rail_segment_stop(direction)`

Get train stop at the start/end of the rail segment this rail is in.

A rail segment is a continuous section of rail with no branches, signals, nor train stops.

#### Parameters

##### direction

**Type:** [defines.rail_direction](../defines/defines.md)

The direction of travel relative to this rail.

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — `nil` if the rail segment doesn't start/end with a train stop.

### get_recipe

`get_recipe()`

Current recipe being assembled by this machine, if any.

#### Return values

- [LuaRecipe](../classes/LuaRecipe.md) _(optional)_
- [LuaQualityPrototype](../classes/LuaQualityPrototype.md) _(optional)_

### get_signal

`get_signal(extra_wire_connector_id, signal, wire_connector_id)`

Read a single signal from the selected wire connector

#### Parameters

##### extra_wire_connector_id

**Type:** [defines.wire_connector_id](../defines/defines.md) · _optional_

Additional wire connector ID. If specified, signal will be added to the result

##### signal

**Type:** [SignalID](../concepts/SignalID.md)

The signal to read.

##### wire_connector_id

**Type:** [defines.wire_connector_id](../defines/defines.md)

Wire connector ID from which to get the signal

#### Return values

- [int32](../concepts/int32.md) — The current value of the signal.

### get_signals

`get_signals(extra_wire_connector_id, wire_connector_id)`

Read all signals from the selected wire connector.

#### Parameters

##### extra_wire_connector_id

**Type:** [defines.wire_connector_id](../defines/defines.md) · _optional_

Additional wire connector ID. If specified, signals will be added to the result

##### wire_connector_id

**Type:** [defines.wire_connector_id](../defines/defines.md)

Wire connector ID from which to get the signal

#### Return values

- array[[Signal](../concepts/Signal.md)] _(optional)_ — Current values of all signals.

### get_spider_legs

`get_spider_legs()`

Gets legs of given SpiderVehicle.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_stopped_train

`get_stopped_train()`

The train currently stopped at this train stop, if any.

#### Return values

- [LuaTrain](../classes/LuaTrain.md) _(optional)_

### get_stored_durability

`get_stored_durability(item)`

#### Parameters

##### item

**Type:** [ItemID](../concepts/ItemID.md)

Item for which a stored durability is requested.

#### Return values

- [LabStoredDurability](../concepts/LabStoredDurability.md) — Durability stored.

### get_tooltip_field

`get_tooltip_field(id)`

Gets selected runtime tooltip field.

#### Parameters

##### id

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [RuntimeTooltipField](../concepts/RuntimeTooltipField.md) _(optional)_

### get_tooltip_fields

`get_tooltip_fields()`

Gets all runtime tooltip fields attached to this entity.

#### Return values

- array[[RuntimeTooltipField](../concepts/RuntimeTooltipField.md)]

### get_train_stop_trains

`get_train_stop_trains()`

The trains scheduled to stop at this train stop.

#### Return values

- array[[LuaTrain](../classes/LuaTrain.md)]

### get_transport_line

`get_transport_line(index)`

Get a transport line of a belt or belt connectable entity.

#### Parameters

##### index

**Type:** [defines.transport_line](../defines/defines.md)

Index of the requested transport line. Transport lines are 1-indexed.

#### Return values

- [LuaTransportLine](../classes/LuaTransportLine.md)

### get_upgrade_target

`get_upgrade_target()`

Returns the new entity prototype and its quality.

#### Return values

- [LuaEntityPrototype](../classes/LuaEntityPrototype.md) _(optional)_ — `nil` if this entity is not marked for upgrade.
- [LuaQualityPrototype](../classes/LuaQualityPrototype.md) _(optional)_ — `nil` if this entity is not marked for upgrade.

### get_wire_connector

`get_wire_connector(or_create, wire_connector_id)`

Gets a single wire connector of this entity, if any.

#### Parameters

##### or_create

**Type:** [boolean](../concepts/boolean.md)

If true and connector does not exist, it will be allocated if possible

##### wire_connector_id

**Type:** [defines.wire_connector_id](../defines/defines.md)

Identifier of a specific connector to get

#### Return values

- [LuaWireConnector](../classes/LuaWireConnector.md) _(optional)_

### get_wire_connectors

`get_wire_connectors(or_create)`

Gets all wire connectors of this entity

#### Parameters

##### or_create

**Type:** [boolean](../concepts/boolean.md)

If true, it will try to create all connectors possible

#### Return values

- dictionary[[defines.wire_connector_id](../defines/defines.md) → [LuaWireConnector](../classes/LuaWireConnector.md)]

### ghost_has_flag

`ghost_has_flag(flag)`

Same as [LuaEntity::has_flag](../classes/LuaEntity.md#has-flag), but targets the inner entity on a entity ghost.

#### Parameters

##### flag

**Type:** [EntityPrototypeFlag](../concepts/EntityPrototypeFlag.md)

The flag to test.

#### Return values

- [boolean](../concepts/boolean.md) — `true` if the entity has the given flag set.

### has_flag

`has_flag(flag)`

Test whether this entity's prototype has a certain flag set.

`entity.has_flag(f)` is a shortcut for `entity.prototype.has_flag(f)`.

#### Parameters

##### flag

**Type:** [EntityPrototypeFlag](../concepts/EntityPrototypeFlag.md)

The flag to test.

#### Return values

- [boolean](../concepts/boolean.md) — `true` if this entity has the given flag set.

### has_fluid_segment

`has_fluid_segment(index)`

Whether the given fluid storage has a fluid segment.

#### Parameters

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [boolean](../concepts/boolean.md)

### insert_fluid

`insert_fluid(fluid)`

Insert fluid into this entity. Fluidbox is chosen automatically.

#### Parameters

##### fluid

**Type:** [Fluid](../concepts/Fluid.md)

Fluid to insert.

#### Return values

- [FluidAmount](../concepts/FluidAmount.md) — Amount of fluid actually inserted.

### inventory_supports_bar

`inventory_supports_bar(inventory_index)`

The same as [LuaInventory::supports_bar](../classes/LuaInventory.md#supports-bar) but also works for ghosts where the inventory is not available through [LuaControl::get_inventory](../classes/LuaControl.md#get-inventory).

#### Parameters

##### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md)

### inventory_supports_filters

`inventory_supports_filters(inventory_index)`

The same as [LuaInventory::supports_filters](../classes/LuaInventory.md#supports-filters) but also works for ghosts where the inventory is not available through [LuaControl::get_inventory](../classes/LuaControl.md#get-inventory).

#### Parameters

##### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_closed

`is_closed()`

#### Return values

- [boolean](../concepts/boolean.md) — `true` if this gate is currently closed.

### is_closing

`is_closing()`

#### Return values

- [boolean](../concepts/boolean.md) — `true` if this gate is currently closing

### is_connected_to_electric_network

`is_connected_to_electric_network()`

Returns `true` if this entity produces or consumes electricity and is connected to an electric network that has at least one entity that can produce power.

#### Return values

- [boolean](../concepts/boolean.md)

### is_crafting

`is_crafting()`

Returns whether a craft is currently in process. It does not indicate whether progress is currently being made, but whether a crafting process has been started in this machine.

#### Return values

- [boolean](../concepts/boolean.md)

### is_inventory_filtered

`is_inventory_filtered(inventory_index)`

The same as [LuaInventory::is_filtered](../classes/LuaInventory.md#is-filtered) but also works for ghosts where the inventory is not available through [LuaControl::get_inventory](../classes/LuaControl.md#get-inventory).

#### Parameters

##### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_opened

`is_opened()`

#### Return values

- [boolean](../concepts/boolean.md) — `true` if this gate is currently opened.

### is_opening

`is_opening()`

#### Return values

- [boolean](../concepts/boolean.md) — `true` if this gate is currently opening.

### is_rail_in_same_rail_block_as

`is_rail_in_same_rail_block_as(other_rail)`

Checks if this rail and other rail both belong to the same rail block.

#### Parameters

##### other_rail

**Type:** [LuaEntity](../classes/LuaEntity.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_rail_in_same_rail_segment_as

`is_rail_in_same_rail_segment_as(other_rail)`

Checks if this rail and other rail both belong to the same rail segment.

#### Parameters

##### other_rail

**Type:** [LuaEntity](../classes/LuaEntity.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_registered_for_construction

`is_registered_for_construction()`

Is this entity or tile ghost or item request proxy registered for construction? If false, it means a construction robot has been dispatched to build the entity, or it is not an entity that can be constructed.

#### Return values

- [boolean](../concepts/boolean.md)

### is_registered_for_deconstruction

`is_registered_for_deconstruction(force)`

Is this entity registered for deconstruction with this force? If false, it means a construction robot has been dispatched to deconstruct it, or it is not marked for deconstruction. The complexity is effectively O(1) - it depends on the number of objects targeting this entity which should be small enough.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force construction manager to check.

#### Return values

- [boolean](../concepts/boolean.md)

### is_registered_for_repair

`is_registered_for_repair()`

Is this entity registered for repair? If false, it means a construction robot has been dispatched to repair it, or it is not damaged. This is worst-case O(N) complexity where N is the current number of things in the repair queue.

#### Return values

- [boolean](../concepts/boolean.md)

### is_registered_for_upgrade

`is_registered_for_upgrade()`

Is this entity registered for upgrade? If false, it means a construction robot has been dispatched to upgrade it, or it is not marked for upgrade. This is worst-case O(N) complexity where N is the current number of things in the upgrade queue.

#### Return values

- [boolean](../concepts/boolean.md)

### launch_rocket

`launch_rocket(character, destination)`

#### Parameters

##### character

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

If provided, must be of `character` type.

##### destination

**Type:** [CargoDestination](../concepts/CargoDestination.md) · _optional_

#### Return values

- [boolean](../concepts/boolean.md) — `true` if the rocket was successfully launched. Return value of `false` means the silo is not ready for launch.

#### Raises

- `on_rocket_launch_ordered` — Raised if the rocket launch was successfully initiated.

### mine

`mine({force, ignore_minable, inventory, raise_destroyed})`

Mines this entity.

'Standard' operation is to keep calling `LuaEntity.mine` with an inventory until all items are transferred and the items dealt with.

The result of mining the entity (the item(s) it produces when mined) will be dropped on the ground if they don't fit into the provided inventory. If no inventory is provided, the items will be destroyed.

#### Parameters

##### force

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, when the item(s) don't fit into the given inventory the entity is force mined. If false, the mining operation fails when there isn't enough room to transfer all of the items into the inventory. Defaults to false. This is ignored and acts as `true` if no inventory is provided.

##### ignore_minable

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, the minable state of the entity is ignored. Defaults to `false`. If false, an entity that isn't minable (set as not-minable in the prototype or isn't minable for other reasons) will fail to be mined.

##### inventory

**Type:** [LuaInventory](../classes/LuaInventory.md) · _optional_

If provided the item(s) will be transferred into this inventory. If provided, this must be an inventory created with [LuaGameScript::create_inventory](../classes/LuaGameScript.md#create-inventory) or be a basic inventory owned by some entity.

##### raise_destroyed

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, [script_raised_destroy](../events/script_raised_destroy.md) will be raised. Defaults to `true`.

#### Return values

- [boolean](../concepts/boolean.md) — Whether mining succeeded.

#### Raises

- `script_raised_destroy` — Raised if the `raise_destroyed` flag was set and the entity was successfully mined.

### order_deconstruction

`order_deconstruction(force, player, undo_index)`

Sets the entity to be deconstructed by construction robots.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force whose robots are supposed to do the deconstruction.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to set the last_user to, if any. Also the player whose undo queue this action should be added to.

##### undo_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index of the undo item to add this action to. An index of `0` creates a new undo item for it. An index of `1` adds the action to the latest undo action on the stack. Defaults to putting it into the appropriate undo item automatically if one is not specified.

#### Return values

- [boolean](../concepts/boolean.md) — if the entity was marked for deconstruction.

#### Raises

- `on_marked_for_deconstruction` — Raised if the entity was successfully marked for deconstruction.

### order_upgrade

`order_upgrade({force, player, target, undo_index})`

Sets the entity to be upgraded by construction robots.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force whose robots are supposed to do the upgrade.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player whose undo queue this action should be added to.

##### target

**Type:** [EntityWithQualityID](../concepts/EntityWithQualityID.md)

The prototype of the entity to upgrade to.

##### undo_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index of the undo item to add this action to. An index of `0` creates a new undo item for it. Defaults to putting it into the appropriate undo item automatically if not specified.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the entity was marked for upgrade.

#### Raises

- `on_marked_for_upgrade` — Raised if the entity was successfully marked for upgrade.

### play_note

`play_note(instrument, note, stop_playing_sounds)`

Plays a note with the given instrument and note.

#### Parameters

##### instrument

**Type:** [uint32](../concepts/uint32.md)

##### note

**Type:** [uint32](../concepts/uint32.md)

##### stop_playing_sounds

**Type:** [boolean](../concepts/boolean.md) · _optional_

#### Return values

- [boolean](../concepts/boolean.md) — Whether the request is valid. The sound may or may not be played depending on polyphony settings.

### register_tree

`register_tree(tree)`

Registers the given tree in this agricultural tower.

If the tree is not within range of the tower it will not be registered.

If the tree is already registered with a tower it will not be registered.

#### Parameters

##### tree

**Type:** [LuaEntity](../classes/LuaEntity.md)

#### Return values

- [boolean](../concepts/boolean.md) — If the tree was registered.

### release_from_spawner

`release_from_spawner()`

Release the unit from the spawner which spawned it. This allows the spawner to continue spawning additional units.

### remove_fluid

`remove_fluid(amount, index)`

Removes the given fluid amount from the entity's given fluid storage if possible.

#### Parameters

##### amount

**Type:** [FluidAmount](../concepts/FluidAmount.md)

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [Fluid](../concepts/Fluid.md) _(optional)_ — The fluid removed.

### remove_fluid_box_linked_connection

`remove_fluid_box_linked_connection(this_linked_connection_id)`

Removes linked fluidbox connection record. If connected, other end will be also removed.

#### Parameters

##### this_linked_connection_id

**Type:** [uint32](../concepts/uint32.md)

### remove_fluid_segment_fluid

`remove_fluid_segment_fluid(amount, index)`

Removes the given fluid amount from the given storage's fluid segment if possible.

#### Parameters

##### amount

**Type:** [FluidAmount](../concepts/FluidAmount.md)

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [Fluid](../concepts/Fluid.md) _(optional)_ — The fluid removed.

### remove_market_item

`remove_market_item(offer)`

Remove an offer from a market.

The other offers are moved down to fill the gap created by removing the offer, which decrements the overall size of the offer array.

#### Parameters

##### offer

**Type:** [uint32](../concepts/uint32.md)

Index of offer to remove.

#### Return values

- [boolean](../concepts/boolean.md) — `true` if the offer was successfully removed; `false` when the given index was not valid.

### request_to_close

`request_to_close(force)`

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force that requests the gate to be closed.

### request_to_open

`request_to_open(extra_time, force)`

#### Parameters

##### extra_time

**Type:** [uint32](../concepts/uint32.md) · _optional_

Extra ticks to stay open.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force that requests the gate to be open.

### revive

`revive({overflow, raise_revive})`

Revive a ghost, which turns it from a ghost into a real entity or tile.

#### Parameters

##### overflow

**Type:** [LuaInventory](../classes/LuaInventory.md) · _optional_

Items that would be deleted will be transferred to this inventory. Must be a script inventory or inventory of other entity. Inventory references obtained from proxy container are not allowed.

##### raise_revive

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, and an entity ghost; [script_raised_revive](../events/script_raised_revive.md) will be called. Else if true, and a tile ghost; [script_raised_set_tiles](../events/script_raised_set_tiles.md) will be called.

#### Return values

- array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] _(optional)_ — Any items the new real entity collided with or `nil` if the ghost could not be revived.
- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — The revived entity if an entity ghost was successfully revived.
- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — The item request proxy if one was created.

#### Raises

- `script_raised_revive` — Raised if this was an entity ghost and the `raise_revive` flag was set and the entity was successfully revived.
- `script_raised_set_tiles` — Raised if this was a tile ghost and the `raise_revive` flag was set and the tile was successfully revived.

### rotate

`rotate({by_player, reverse})`

Rotates this entity as if the player rotated it.

#### Parameters

##### by_player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

##### reverse

**Type:** [boolean](../concepts/boolean.md) · _optional_

If `true`, rotate the entity in the counter-clockwise direction.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the rotation was successful.

#### Raises

- `on_player_rotated_entity` — Raised if the `by_player` argument was given and the rotation was successful.

### set_beam_source

`set_beam_source(source)`

Set the source of this beam.

#### Parameters

##### source

**Type:** [LuaEntity](../classes/LuaEntity.md) ∣ [MapPosition](../concepts/MapPosition.md)

### set_beam_target

`set_beam_target(target)`

Set the target of this beam.

#### Parameters

##### target

**Type:** [LuaEntity](../classes/LuaEntity.md) ∣ [MapPosition](../concepts/MapPosition.md)

### set_driver

`set_driver(driver)`

Sets the driver of this vehicle.

This differs from [LuaEntity::set_passenger](../classes/LuaEntity.md#set-passenger) in that the passenger can't drive the vehicle.

#### Parameters

##### driver

**Type:** [LuaEntity](../classes/LuaEntity.md) ∣ [PlayerIdentification](../concepts/PlayerIdentification.md) ∣ [nil](../concepts/nil.md)

The new driver. Writing `nil` ejects the current driver, if any.

#### Raises

- `on_player_driving_changed_state` — 

### set_filter

`set_filter(filter, index)`

Set the filter for a slot in an inserter (ItemFilter), loader (ItemFilter), mining drill (EntityID), asteroid collector (AsteroidChunkID) or logistic storage container (ItemWithQualityID). The entity must allow filters.

#### Parameters

##### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md) ∣ [ItemWithQualityID](../concepts/ItemWithQualityID.md) ∣ [EntityID](../concepts/EntityID.md) ∣ [AsteroidChunkID](../concepts/AsteroidChunkID.md) · _optional_

The item or entity to filter, or `nil` to clear the filter.

##### index

**Type:** [uint32](../concepts/uint32.md)

Index of the slot to set the filter for.

### set_fluid

`set_fluid(fluid, index)`

Sets the fluid in the entity's given fluid storage to the provided fluid if possible.

Fluid filters may block setting the fluid, or less fluid may be set if it's more than the maximum capacity.

#### Parameters

##### fluid

**Type:** [Fluid](../concepts/Fluid.md)

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [FluidAmount](../concepts/FluidAmount.md) — How much of the given fluid was actually set.

### set_fluid_filter

`set_fluid_filter(filter, index)`

Set a fluidbox filter, such as the filter of a pump.

Some entities cannot have their fluidbox filter set, notably fluid wagons and crafting machines.

#### Parameters

##### filter

**Type:** [FluidFilter](../concepts/FluidFilter.md) · _optional_

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the filter was set.

### set_fluid_segment_fluid

`set_fluid_segment_fluid(fluid, index)`

Sets the fluid within the given storage's fluid segment.

#### Parameters

##### fluid

**Type:** [Fluid](../concepts/Fluid.md)

##### index

**Type:** [FluidStorageIndex](../concepts/FluidStorageIndex.md)

#### Return values

- [FluidAmount](../concepts/FluidAmount.md) — The amount of fluid set.

### set_heat_setting

`set_heat_setting(filter)`

Sets the heat setting for this heat interface.

#### Parameters

##### filter

**Type:** [HeatSetting](../concepts/HeatSetting.md)

The new setting.

### set_infinity_container_filter

`set_infinity_container_filter(filter, index)`

Sets the filter for this infinity container at the given index.

#### Parameters

##### filter

**Type:** [InfinityInventoryFilter](../concepts/InfinityInventoryFilter.md) ∣ [nil](../concepts/nil.md)

The new filter, or `nil` to clear the filter.

##### index

**Type:** [uint32](../concepts/uint32.md)

The index to set.

### set_infinity_pipe_filter

`set_infinity_pipe_filter(filter)`

Sets the filter for this infinity pipe.

#### Parameters

##### filter

**Type:** [InfinityPipeFilter](../concepts/InfinityPipeFilter.md) ∣ [nil](../concepts/nil.md)

The new filter, or `nil` to clear the filter.

### set_inventory_bar

`set_inventory_bar(bar, inventory_index)`

The same as [LuaInventory::set_bar](../classes/LuaInventory.md#set-bar) but also works for ghosts where the inventory is not available through [LuaControl::get_inventory](../classes/LuaControl.md#get-inventory).

#### Parameters

##### bar

**Type:** [uint32](../concepts/uint32.md) · _optional_

The new limit. Omitting this parameter or passing `nil` will clear the limit.

##### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

### set_inventory_filter

`set_inventory_filter(filter, index, inventory_index)`

The same as [LuaInventory::set_filter](../classes/LuaInventory.md#set-filter) but also works for ghosts where the inventory is not available through [LuaControl::get_inventory](../classes/LuaControl.md#get-inventory).

#### Parameters

##### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md) ∣ [nil](../concepts/nil.md)

The new filter. `nil` erases any existing filter.

##### index

**Type:** [uint32](../concepts/uint32.md)

The item stack index.

##### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

#### Return values

- [boolean](../concepts/boolean.md) — If the filter was allowed to be set.

### set_inventory_size_override

`set_inventory_size_override(inventory_index, overflow, size_override)`

Sets inventory size override. When set, supported entity will ignore inventory size from prototype and will instead keep inventory size equal to the override. Setting `nil` will restore default inventory size.

#### Parameters

##### inventory_index

**Type:** [defines.inventory](../defines/defines.md)

##### overflow

**Type:** [LuaInventory](../classes/LuaInventory.md) · _optional_

Items that would be deleted due to change of inventory size will be transferred to this inventory. Must be a script inventory or inventory of other entity. Inventory references obtained from proxy container are not allowed.

##### size_override

**Type:** [uint16](../concepts/uint16.md) ∣ [nil](../concepts/nil.md)

### set_movement

`set_movement(direction, speed)`

Sets the movement direction and movement speed for this combat robot or asteroid.

Note that for combat robots this does not affect the constant drift in the direction they are facing.

#### Parameters

##### direction

**Type:** [Vector](../concepts/Vector.md)

This normalized form of this vector is used for the movement direction.

##### speed

**Type:** [double](../concepts/double.md)

Speed in tiles per tick. Cannot be less than 0.

### set_passenger

`set_passenger(passenger)`

Sets the passenger of this car, spidertron, or cargo pod.

This differs from [LuaEntity::get_driver](../classes/LuaEntity.md#get-driver) in that the passenger can't drive the car.

#### Parameters

##### passenger

**Type:** [LuaEntity](../classes/LuaEntity.md) ∣ [PlayerIdentification](../concepts/PlayerIdentification.md) ∣ [nil](../concepts/nil.md)

The new passenger. Writing `nil` ejects the current passenger, if any.

#### Raises

- `on_player_driving_changed_state` — 

### set_priority_target

`set_priority_target(entity_id, index)`

Set the entity ID name at the specified position in the turret's priority list.

#### Parameters

##### entity_id

**Type:** [EntityID](../concepts/EntityID.md) · _optional_

The name of the entity prototype, or `nil` to clear the entry.

##### index

**Type:** [uint32](../concepts/uint32.md)

The index of the entry to set.

### set_recipe

`set_recipe(quality, recipe)`

Sets the given recipe in this assembly machine.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

The quality. If not provided `normal` is used.

##### recipe

**Type:** [RecipeID](../concepts/RecipeID.md) · _optional_

The new recipe. Writing `nil` clears the recipe, if any.

#### Return values

- array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] — Any items removed from this entity as a result of setting the recipe.

### set_stored_durability

`set_stored_durability(durability, item)`

#### Parameters

##### durability

**Type:** [LabStoredDurability](../concepts/LabStoredDurability.md)

Durability to set.

##### item

**Type:** [ItemID](../concepts/ItemID.md)

Item for which a stored durability is requested.

### set_tooltip_field

`set_tooltip_field(field)`

Adds or changes runtime tooltip field. If `id` is not given a new one will be allocated in a way that makes it unique within this entity. If a value is given that is already used, existing line will be updated.

#### Parameters

##### field

**Type:** [RuntimeTooltipField](../concepts/RuntimeTooltipField.md)

#### Return values

- [uint32](../concepts/uint32.md) — Identifier of the record that was given or allocated.

### silent_revive

`silent_revive({overflow, raise_revive})`

Revives a ghost silently, so the revival makes no sound and no smoke is created.

#### Parameters

##### overflow

**Type:** [LuaInventory](../classes/LuaInventory.md) · _optional_

Items that would be deleted will be transferred to this inventory. Must be a script inventory or inventory of other entity. Inventory references obtained from proxy container are not allowed.

##### raise_revive

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, and an entity ghost; [script_raised_revive](../events/script_raised_revive.md) will be called. Else if true, and a tile ghost; [script_raised_set_tiles](../events/script_raised_set_tiles.md) will be called.

#### Return values

- array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] — Any items the new real entity collided with or `nil` if the ghost could not be revived.
- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — The revived entity if an entity ghost was successfully revived.
- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — The item request proxy if one was created.

#### Raises

- `script_raised_revive` — Raised if this was an entity ghost and the `raise_revive` flag was set and the entity was successfully revived.
- `script_raised_set_tiles` — Raised if this was a tile ghost and the `raise_revive` flag was set and the tile was successfully revived.

### spawn_decorations

`spawn_decorations()`

Triggers spawn_decoration actions defined in the entity prototype or does nothing if entity is not "turret" or "unit-spawner".

### start_fading_out

`start_fading_out()`

Only works if the entity is a speech-bubble, with an "effect" defined in its wrapper_flow_style. Starts animating the opacity of the speech bubble towards zero, and destroys the entity when it hits zero.

### stop_spider

`stop_spider()`

Sets the [speed](../classes/LuaEntity.md#speed) of the given SpiderVehicle to zero. Notably does not clear its [autopilot_destination](../classes/LuaEntity.md#autopilot-destination), which it will continue moving towards if set.

### supports_backer_name

`supports_backer_name()`

Whether this entity supports a backer name.

#### Return values

- [boolean](../concepts/boolean.md)

### to_be_deconstructed

`to_be_deconstructed()`

Is this entity marked for deconstruction?

#### Return values

- [boolean](../concepts/boolean.md)

### to_be_upgraded

`to_be_upgraded()`

Is this entity marked for upgrade?

#### Return values

- [boolean](../concepts/boolean.md)

### toggle_equipment_movement_bonus

`toggle_equipment_movement_bonus()`

Toggle this entity's equipment movement bonus. Does nothing if the entity does not have an equipment grid.

This property can also be read and written on the equipment grid of this entity.

### update_connections

`update_connections()`

Reconnect loader, beacon, cliff and mining drill connections to entities that might have been teleported out or in by the script. The game doesn't do this automatically as we don't want to lose performance by checking this in normal games.
