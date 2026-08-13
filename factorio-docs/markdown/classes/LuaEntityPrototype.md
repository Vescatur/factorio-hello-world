# LuaEntityPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of an entity.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [absorptions_per_second](#absorptions-per-second) | dictionary[[string](../concepts/string.md) → [EnemySpawnerAbsorption](../concepts/EnemySpawnerAbsorption.md)] |  |
| [absorptions_to_join_attack](#absorptions-to-join-attack) | dictionary[[string](../concepts/string.md) → [float](../concepts/float.md)] | yes |
| [acceleration](#acceleration) | [double](../concepts/double.md) | yes |
| [acceleration_rate](#acceleration-rate) | [double](../concepts/double.md) |  |
| [accepted_seeds](#accepted-seeds) | array[[string](../concepts/string.md)] | yes |
| [action](#action) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [action_cooldown](#action-cooldown) | [uint32](../concepts/uint32.md) | yes |
| [action_triggered_automatically](#action-triggered-automatically) | [boolean](../concepts/boolean.md) | yes |
| [activation_buffer_ratio](#activation-buffer-ratio) | [FluidAmount](../concepts/FluidAmount.md) | yes |
| [activation_distance](#activation-distance) | [double](../concepts/double.md) | yes |
| [active_energy_usage](#active-energy-usage) | [double](../concepts/double.md) | yes |
| [add_fuel_cooldown](#add-fuel-cooldown) | [uint32](../concepts/uint32.md) | yes |
| [additional_pastable_entities](#additional-pastable-entities) | array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] |  |
| [affected_by_tiles](#affected-by-tiles) | [boolean](../concepts/boolean.md) | yes |
| [agricultural_tower_radius](#agricultural-tower-radius) | [double](../concepts/double.md) | yes |
| [ai_settings](#ai-settings) | [UnitAISettings](../concepts/UnitAISettings.md) | yes |
| [air_resistance](#air-resistance) | [double](../concepts/double.md) | yes |
| [alarm_trigger](#alarm-trigger) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [alert_after_time](#alert-after-time) | [uint32](../concepts/uint32.md) |  |
| [alert_icon_scale](#alert-icon-scale) | [float](../concepts/float.md) |  |
| [alert_icon_shift](#alert-icon-shift) | [Vector](../concepts/Vector.md) |  |
| [alert_when_attacking](#alert-when-attacking) | [boolean](../concepts/boolean.md) | yes |
| [alert_when_damaged](#alert-when-damaged) | [boolean](../concepts/boolean.md) | yes |
| [allow_access_to_all_forces](#allow-access-to-all-forces) | [boolean](../concepts/boolean.md) | yes |
| [allow_blueprint_connection](#allow-blueprint-connection) | [boolean](../concepts/boolean.md) | yes |
| [allow_burner_leech](#allow-burner-leech) | [boolean](../concepts/boolean.md) | yes |
| [allow_clone_connection](#allow-clone-connection) | [boolean](../concepts/boolean.md) | yes |
| [allow_container_interaction](#allow-container-interaction) | [boolean](../concepts/boolean.md) | yes |
| [allow_copy_paste](#allow-copy-paste) | [boolean](../concepts/boolean.md) |  |
| [allow_custom_vectors](#allow-custom-vectors) | [boolean](../concepts/boolean.md) | yes |
| [allow_manual_color](#allow-manual-color) | [boolean](../concepts/boolean.md) | yes |
| [allow_passengers](#allow-passengers) | [boolean](../concepts/boolean.md) | yes |
| [allow_rail_interaction](#allow-rail-interaction) | [boolean](../concepts/boolean.md) | yes |
| [allow_robot_dispatch_in_automatic_mode](#allow-robot-dispatch-in-automatic-mode) | [boolean](../concepts/boolean.md) | yes |
| [allow_run_time_change_of_is_military_target](#allow-run-time-change-of-is-military-target) | [boolean](../concepts/boolean.md) | yes |
| [allow_side_loading](#allow-side-loading) | [boolean](../concepts/boolean.md) | yes |
| [allow_turning_when_starting_attack](#allow-turning-when-starting-attack) | [boolean](../concepts/boolean.md) | yes |
| [allow_unloading](#allow-unloading) | [boolean](../concepts/boolean.md) | yes |
| [allowed_effects](#allowed-effects) | dictionary[[string](../concepts/string.md) → [boolean](../concepts/boolean.md)] | yes |
| [allowed_module_categories](#allowed-module-categories) | dictionary[[string](../concepts/string.md) → `true`] | yes |
| [allows_flipping](#allows-flipping) | [boolean](../concepts/boolean.md) |  |
| [always_on](#always-on) | [boolean](../concepts/boolean.md) | yes |
| [ammo_category](#ammo-category) | [string](../concepts/string.md) | yes |
| [ammo_stack_limit](#ammo-stack-limit) | [ItemCountType](../concepts/ItemCountType.md) | yes |
| [animation_speed_coefficient](#animation-speed-coefficient) | [double](../concepts/double.md) | yes |
| [arm_angular_speed_cap_base](#arm-angular-speed-cap-base) | [float](../concepts/float.md) | yes |
| [arm_angular_speed_cap_quality_scaling](#arm-angular-speed-cap-quality-scaling) | [float](../concepts/float.md) | yes |
| [arm_color_gradient](#arm-color-gradient) | array[[Color](../concepts/Color.md)] | yes |
| [arm_count_base](#arm-count-base) | [uint32](../concepts/uint32.md) | yes |
| [arm_count_quality_scaling](#arm-count-quality-scaling) | [uint32](../concepts/uint32.md) | yes |
| [arm_energy_usage](#arm-energy-usage) | [double](../concepts/double.md) | yes |
| [arm_inventory_size_quality_increase](#arm-inventory-size-quality-increase) | [ItemStackIndex](../concepts/ItemStackIndex.md) | yes |
| [arm_slow_energy_usage](#arm-slow-energy-usage) | [double](../concepts/double.md) | yes |
| [arm_speed_base](#arm-speed-base) | [float](../concepts/float.md) | yes |
| [arm_speed_quality_scaling](#arm-speed-quality-scaling) | [float](../concepts/float.md) | yes |
| [arms_speed_modifier_per_quality_level](#arms-speed-modifier-per-quality-level) | [double](../concepts/double.md) | yes |
| [attach_to_target](#attach-to-target) | [boolean](../concepts/boolean.md) | yes |
| [attack_parameters](#attack-parameters) | [AttackParameters](../concepts/AttackParameters.md) | yes |
| [attack_reaction](#attack-reaction) | array[[AttackReactionItem](../concepts/AttackReactionItem.md)] | yes |
| [attack_result](#attack-result) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [attack_target_mask](#attack-target-mask) | [TriggerTargetMask](../concepts/TriggerTargetMask.md) |  |
| [attacking_speed](#attacking-speed) | [double](../concepts/double.md) | yes |
| [attractor_hit_effect](#attractor-hit-effect) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [auto_connect_up_to_n_wires](#auto-connect-up-to-n-wires) | [uint8](../concepts/uint8.md) | yes |
| [auto_setup_collision_box](#auto-setup-collision-box) | [boolean](../concepts/boolean.md) |  |
| [auto_sort_inventory](#auto-sort-inventory) | [boolean](../concepts/boolean.md) | yes |
| [automated_ammo_count](#automated-ammo-count) | [uint32](../concepts/uint32.md) | yes |
| [automatic_weapon_cycling](#automatic-weapon-cycling) | [boolean](../concepts/boolean.md) | yes |
| [autoplace_specification](#autoplace-specification) | [AutoplaceSpecification](../concepts/AutoplaceSpecification.md) | yes |
| [beacon_counter](#beacon-counter) | `"total"` ∣ `"same_type"` | yes |
| [belt_distance](#belt-distance) | [double](../concepts/double.md) | yes |
| [belt_length](#belt-length) | [double](../concepts/double.md) | yes |
| [belt_speed](#belt-speed) | [double](../concepts/double.md) | yes |
| [boiler_mode](#boiler-mode) | `"heat-fluid-inside"` ∣ `"output-to-separate-pipe"` | yes |
| [braking_force](#braking-force) | [double](../concepts/double.md) | yes |
| [build_distance](#build-distance) | [uint32](../concepts/uint32.md) | yes |
| [building_grid_bit_shift](#building-grid-bit-shift) | [uint32](../concepts/uint32.md) |  |
| [bulk](#bulk) | [boolean](../concepts/boolean.md) | yes |
| [burner_prototype](#burner-prototype) | [LuaBurnerPrototype](../classes/LuaBurnerPrototype.md) | yes |
| [burns_fluid](#burns-fluid) | [boolean](../concepts/boolean.md) | yes |
| [call_for_help_radius](#call-for-help-radius) | [double](../concepts/double.md) | yes |
| [can_launch_without_landing_pads](#can-launch-without-landing-pads) | [boolean](../concepts/boolean.md) | yes |
| [can_open_gates](#can-open-gates) | [boolean](../concepts/boolean.md) | yes |
| [can_retarget_while_starting_attack](#can-retarget-while-starting-attack) | [boolean](../concepts/boolean.md) | yes |
| [cant_insert_at_source_message_key](#cant-insert-at-source-message-key) | [string](../concepts/string.md) | yes |
| [capture_speed](#capture-speed) | [double](../concepts/double.md) | yes |
| [captured_spawner_entity](#captured-spawner-entity) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [cargo_pod_entity](#cargo-pod-entity) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [cargo_station_parameters](#cargo-station-parameters) | [CargoStationParameters](../concepts/CargoStationParameters.md) | yes |
| [chain_shooting_cooldown_modifier](#chain-shooting-cooldown-modifier) | [double](../concepts/double.md) | yes |
| [character_corpse](#character-corpse) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [chunk_exploration_radius](#chunk-exploration-radius) | [double](../concepts/double.md) | yes |
| [clamps_off_trigger](#clamps-off-trigger) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [clamps_on_trigger](#clamps-on-trigger) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [cliff_explosive_prototype](#cliff-explosive-prototype) | [string](../concepts/string.md) | yes |
| [cliff_removal_probability](#cliff-removal-probability) | [double](../concepts/double.md) | yes |
| [close_door_trigger_effect](#close-door-trigger-effect) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [collection_box_offset](#collection-box-offset) | [float](../concepts/float.md) | yes |
| [collision_box](#collision-box) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [collision_mask](#collision-mask) | [CollisionMask](../concepts/CollisionMask.md) |  |
| [collision_mask_allow_on_deep_oil_ocean](#collision-mask-allow-on-deep-oil-ocean) | [CollisionMask](../concepts/CollisionMask.md) | yes |
| [collision_mask_collides_with_self](#collision-mask-collides-with-self) | [boolean](../concepts/boolean.md) |  |
| [collision_mask_collides_with_tiles_only](#collision-mask-collides-with-tiles-only) | [boolean](../concepts/boolean.md) |  |
| [collision_mask_considers_tile_transitions](#collision-mask-considers-tile-transitions) | [boolean](../concepts/boolean.md) |  |
| [color](#color) | [Color](../concepts/Color.md) | yes |
| [combat_robot_friction](#combat-robot-friction) | [double](../concepts/double.md) | yes |
| [connectable_box](#connectable-box) | [BoundingBox](../concepts/BoundingBox.md) | yes |
| [connection_category](#connection-category) | array[[string](../concepts/string.md)] |  |
| [connection_distance](#connection-distance) | [double](../concepts/double.md) | yes |
| [connects_to_other_radars](#connects-to-other-radars) | [boolean](../concepts/boolean.md) | yes |
| [construction_radius](#construction-radius) | [double](../concepts/double.md) | yes |
| [consumption](#consumption) | [double](../concepts/double.md) | yes |
| [container_distance](#container-distance) | [double](../concepts/double.md) | yes |
| [corpses](#corpses) | dictionary[[string](../concepts/string.md) → [LuaEntityPrototype](../classes/LuaEntityPrototype.md)] | yes |
| [count_as_rock_for_filtered_deconstruction](#count-as-rock-for-filtered-deconstruction) | [boolean](../concepts/boolean.md) | yes |
| [crafting_categories](#crafting-categories) | dictionary[[string](../concepts/string.md) → `true`] | yes |
| [crafting_speed_quality_multiplier](#crafting-speed-quality-multiplier) | dictionary[[QualityID](../concepts/QualityID.md) → [double](../concepts/double.md)] |  |
| [crane_energy_usage](#crane-energy-usage) | [double](../concepts/double.md) | yes |
| [create_ghost_on_death](#create-ghost-on-death) | [boolean](../concepts/boolean.md) |  |
| [created_effect](#created-effect) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [created_smoke](#created-smoke) | table{initial_height, max_radius, offset_deviation, offsets, smoke_name, speed, speed_from_center, speed_from_center_deviation, speed_multiplier, speed_multiplier_deviation, starting_frame, starting_frame_deviation} | yes |
| [creation_shift](#creation-shift) | [Vector](../concepts/Vector.md) | yes |
| [custom_input_slot_tooltip_key](#custom-input-slot-tooltip-key) | [string](../concepts/string.md) | yes |
| [damage](#damage) | [DamageParameters](../concepts/DamageParameters.md) | yes |
| [damage_hit_tint](#damage-hit-tint) | [Color](../concepts/Color.md) | yes |
| [damage_interval](#damage-interval) | [uint32](../concepts/uint32.md) | yes |
| [damage_multiplier_decrease_per_tick](#damage-multiplier-decrease-per-tick) | [float](../concepts/float.md) | yes |
| [damage_multiplier_increase_per_added_fuel](#damage-multiplier-increase-per-added-fuel) | [float](../concepts/float.md) | yes |
| [damage_per_hp](#damage-per-hp) | [float](../concepts/float.md) | yes |
| [damage_per_tick](#damage-per-tick) | [DamageParameters](../concepts/DamageParameters.md) | yes |
| [damaged_trigger_effect](#damaged-trigger-effect) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [darkness_for_all_lamps_off](#darkness-for-all-lamps-off) | [float](../concepts/float.md) | yes |
| [darkness_for_all_lamps_on](#darkness-for-all-lamps-on) | [float](../concepts/float.md) | yes |
| [default_available_construction_output_signal](#default-available-construction-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_available_logistic_output_signal](#default-available-logistic-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_blue_output_signal](#default-blue-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_blue_signal](#default-blue-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_copy_color_from_train_stop](#default-copy-color-from-train-stop) | [boolean](../concepts/boolean.md) | yes |
| [default_day_length_output_signal](#default-day-length-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_day_tick_output_signal](#default-day-tick-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_game_tick_output_signal](#default-game-tick-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_green_output_signal](#default-green-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_green_signal](#default-green-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_orange_output_signal](#default-orange-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_output_signal](#default-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_recipe_finished_signal](#default-recipe-finished-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_red_output_signal](#default-red-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_red_signal](#default-red-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_rgb_signal](#default-rgb-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_roboport_count_output_signal](#default-roboport-count-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_stack_control_input_signal](#default-stack-control-input-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_status](#default-status) | [defines.entity_status](../defines/defines.md) | yes |
| [default_technology_level_signal](#default-technology-level-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_temperature_signal](#default-temperature-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_total_construction_output_signal](#default-total-construction-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_total_logistic_output_signal](#default-total-logistic-output-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [default_universe_channel](#default-universe-channel) | [SignalID](../concepts/SignalID.md) | yes |
| [default_working_signal](#default-working-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [delay_between_initial_flames](#delay-between-initial-flames) | [uint32](../concepts/uint32.md) | yes |
| [deposit_radius](#deposit-radius) | [float](../concepts/float.md) | yes |
| [destroy_action](#destroy-action) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [destroy_non_fuel_fluid](#destroy-non-fuel-fluid) | [boolean](../concepts/boolean.md) | yes |
| [destroy_on_empty](#destroy-on-empty) | [boolean](../concepts/boolean.md) | yes |
| [direction_count](#direction-count) | [uint8](../concepts/uint8.md) | yes |
| [direction_only](#direction-only) | [boolean](../concepts/boolean.md) | yes |
| [disable_automatic_firing](#disable-automatic-firing) | [boolean](../concepts/boolean.md) | yes |
| [disabled_when_recipe_not_researched](#disabled-when-recipe-not-researched) | [boolean](../concepts/boolean.md) | yes |
| [distraction_cooldown](#distraction-cooldown) | [uint32](../concepts/uint32.md) | yes |
| [distribution_effectivity](#distribution-effectivity) | [double](../concepts/double.md) | yes |
| [distribution_effectivity_bonus_per_quality_level](#distribution-effectivity-bonus-per-quality-level) | [double](../concepts/double.md) | yes |
| [door_opening_speed](#door-opening-speed) | [double](../concepts/double.md) | yes |
| [doors_trigger](#doors-trigger) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [draw_cargo](#draw-cargo) | [boolean](../concepts/boolean.md) | yes |
| [drawing_box_vertical_extension](#drawing-box-vertical-extension) | [double](../concepts/double.md) |  |
| [drive_over_elevated_tie_trigger](#drive-over-elevated-tie-trigger) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [drive_over_tie_trigger](#drive-over-tie-trigger) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [drive_over_tie_trigger_minimal_speed](#drive-over-tie-trigger-minimal-speed) | [double](../concepts/double.md) | yes |
| [drop_item_distance](#drop-item-distance) | [uint32](../concepts/uint32.md) | yes |
| [drops_full_belt_stacks](#drops-full-belt-stacks) | [boolean](../concepts/boolean.md) | yes |
| [dying_explosion](#dying-explosion) | array[[ExplosionDefinition](../concepts/ExplosionDefinition.md)] | yes |
| [dying_speed](#dying-speed) | [float](../concepts/float.md) | yes |
| [dying_trigger_effect](#dying-trigger-effect) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [early_death_ticks](#early-death-ticks) | [uint32](../concepts/uint32.md) | yes |
| [effect_duration](#effect-duration) | [uint16](../concepts/uint16.md) | yes |
| [effect_receiver](#effect-receiver) | [EffectReceiver](../concepts/EffectReceiver.md) | yes |
| [effectivity](#effectivity) | [double](../concepts/double.md) | yes |
| [electric_energy_source_prototype](#electric-energy-source-prototype) | [LuaElectricEnergySourcePrototype](../classes/LuaElectricEnergySourcePrototype.md) | yes |
| [elevated_collision_mask](#elevated-collision-mask) | [CollisionMask](../concepts/CollisionMask.md) | yes |
| [elevated_selection_boxes](#elevated-selection-boxes) | array[[BoundingBox](../concepts/BoundingBox.md)] | yes |
| [elevated_selection_priority](#elevated-selection-priority) | [uint8](../concepts/uint8.md) | yes |
| [emissions_per_second](#emissions-per-second) | dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] |  |
| [ended_in_water_trigger_effect](#ended-in-water-trigger-effect) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [enemy_map_color](#enemy-map-color) | [Color](../concepts/Color.md) |  |
| [energy](#energy) | [double](../concepts/double.md) | yes |
| [energy_fraction_to_connect](#energy-fraction-to-connect) | [float](../concepts/float.md) | yes |
| [energy_fraction_to_disconnect](#energy-fraction-to-disconnect) | [float](../concepts/float.md) | yes |
| [energy_per_hit_point](#energy-per-hit-point) | [double](../concepts/double.md) | yes |
| [energy_per_item](#energy-per-item) | [double](../concepts/double.md) | yes |
| [energy_per_move](#energy-per-move) | [double](../concepts/double.md) | yes |
| [energy_per_movement](#energy-per-movement) | [double](../concepts/double.md) | yes |
| [energy_per_nearby_scan](#energy-per-nearby-scan) | [double](../concepts/double.md) | yes |
| [energy_per_rotation](#energy-per-rotation) | [double](../concepts/double.md) | yes |
| [energy_per_sector](#energy-per-sector) | [double](../concepts/double.md) | yes |
| [energy_per_shot](#energy-per-shot) | [double](../concepts/double.md) | yes |
| [energy_per_tick](#energy-per-tick) | [double](../concepts/double.md) | yes |
| [energy_usage](#energy-usage) | [double](../concepts/double.md) | yes |
| [energy_usage_quality_multiplier](#energy-usage-quality-multiplier) | dictionary[[QualityID](../concepts/QualityID.md) → [double](../concepts/double.md)] |  |
| [energy_usage_quality_scaling](#energy-usage-quality-scaling) | [float](../concepts/float.md) | yes |
| [engine_starting_speed](#engine-starting-speed) | [double](../concepts/double.md) | yes |
| [enraged_duration](#enraged-duration) | [MapTick](../concepts/MapTick.md) | yes |
| [enraged_speed](#enraged-speed) | [double](../concepts/double.md) |  |
| [enter_drop_mode_if_held_stack_spoiled](#enter-drop-mode-if-held-stack-spoiled) | [boolean](../concepts/boolean.md) | yes |
| [enter_vehicle_distance](#enter-vehicle-distance) | [double](../concepts/double.md) | yes |
| [erase_contents_when_mined](#erase-contents-when-mined) | [boolean](../concepts/boolean.md) | yes |
| [expires](#expires) | [boolean](../concepts/boolean.md) | yes |
| [explosion_beam](#explosion-beam) | [double](../concepts/double.md) | yes |
| [explosion_effect](#explosion-effect) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [explosion_rotate](#explosion-rotate) | [double](../concepts/double.md) | yes |
| [factoriopedia_alternative](#factoriopedia-alternative) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [fast_replaceable_group](#fast-replaceable-group) | [string](../concepts/string.md) | yes |
| [filter_count](#filter-count) | [uint32](../concepts/uint32.md) | yes |
| [final_attack_result](#final-attack-result) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [fire_spread_cooldown](#fire-spread-cooldown) | [uint8](../concepts/uint8.md) | yes |
| [fire_spread_entity](#fire-spread-entity) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [fire_spread_radius](#fire-spread-radius) | [float](../concepts/float.md) | yes |
| [fixed_quality](#fixed-quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [fixed_recipe](#fixed-recipe) | [LuaRecipePrototype](../classes/LuaRecipePrototype.md) | yes |
| [flags](#flags) | [EntityPrototypeFlags](../concepts/EntityPrototypeFlags.md) |  |
| [flow_scaling](#flow-scaling) | [boolean](../concepts/boolean.md) | yes |
| [fluid_boxes_off_when_no_fluid_recipe](#fluid-boxes-off-when-no-fluid-recipe) | [boolean](../concepts/boolean.md) | yes |
| [fluid_buffer_input_flow](#fluid-buffer-input-flow) | [FluidAmount](../concepts/FluidAmount.md) | yes |
| [fluid_buffer_size](#fluid-buffer-size) | [FluidAmount](../concepts/FluidAmount.md) | yes |
| [fluid_capacity](#fluid-capacity) | [double](../concepts/double.md) |  |
| [fluid_energy_source_prototype](#fluid-energy-source-prototype) | [LuaFluidEnergySourcePrototype](../classes/LuaFluidEnergySourcePrototype.md) | yes |
| [fluid_source_offset](#fluid-source-offset) | [Vector](../concepts/Vector.md) | yes |
| [fluid_wagon_connector_speed](#fluid-wagon-connector-speed) | [double](../concepts/double.md) | yes |
| [fluid_wagon_tank_valve_max_distance](#fluid-wagon-tank-valve-max-distance) | [double](../concepts/double.md) | yes |
| [fluidbox_prototypes](#fluidbox-prototypes) | array[[LuaFluidBoxPrototype](../classes/LuaFluidBoxPrototype.md)] |  |
| [flying_acceleration](#flying-acceleration) | [double](../concepts/double.md) | yes |
| [flying_collision_mask](#flying-collision-mask) | [CollisionMask](../concepts/CollisionMask.md) | yes |
| [flying_speed](#flying-speed) | [double](../concepts/double.md) | yes |
| [flying_trigger](#flying-trigger) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [folded_turret_corpses](#folded-turret-corpses) | dictionary[[string](../concepts/string.md) → [LuaEntityPrototype](../classes/LuaEntityPrototype.md)] | yes |
| [follows_player](#follows-player) | [boolean](../concepts/boolean.md) | yes |
| [footprint_particles](#footprint-particles) | dictionary[[LuaTilePrototype](../classes/LuaTilePrototype.md) → array[[LuaParticlePrototype](../classes/LuaParticlePrototype.md)]] | yes |
| [footstep_particle_triggers](#footstep-particle-triggers) | dictionary[[LuaTilePrototype](../classes/LuaTilePrototype.md) → array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)]] | yes |
| [force_die_on_attack](#force-die-on-attack) | [boolean](../concepts/boolean.md) | yes |
| [force_visibility](#force-visibility) | [ForceCondition](../concepts/ForceCondition.md) | yes |
| [friction_force](#friction-force) | [double](../concepts/double.md) | yes |
| [friendly_map_color](#friendly-map-color) | [Color](../concepts/Color.md) |  |
| [grab_less_to_match_belt_stack](#grab-less-to-match-belt-stack) | [boolean](../concepts/boolean.md) | yes |
| [grid_offset](#grid-offset) | [Vector](../concepts/Vector.md) | yes |
| [grid_prototype](#grid-prototype) | [LuaEquipmentGridPrototype](../classes/LuaEquipmentGridPrototype.md) | yes |
| [grid_size](#grid-size) | [Vector](../concepts/Vector.md) | yes |
| [grounded_landing_search_radius](#grounded-landing-search-radius) | [double](../concepts/double.md) | yes |
| [growth_area_radius](#growth-area-radius) | [double](../concepts/double.md) | yes |
| [growth_grid_tile_size](#growth-grid-tile-size) | [uint32](../concepts/uint32.md) | yes |
| [growth_ticks](#growth-ticks) | [uint32](../concepts/uint32.md) | yes |
| [gui_mode](#gui-mode) | `"all"` ∣ `"none"` ∣ `"admins"` | yes |
| [gui_title_key](#gui-title-key) | [string](../concepts/string.md) | yes |
| [guns](#guns) | dictionary[[string](../concepts/string.md) → [LuaItemPrototype](../classes/LuaItemPrototype.md)] | yes |
| [harvest_emissions](#harvest-emissions) | dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] | yes |
| [has_belt_immunity](#has-belt-immunity) | [boolean](../concepts/boolean.md) | yes |
| [has_direction](#has-direction) | [boolean](../concepts/boolean.md) | yes |
| [hatch_definitions](#hatch-definitions) | array[[CargoHatchDefinition](../concepts/CargoHatchDefinition.md)] | yes |
| [head_collection_radius](#head-collection-radius) | [float](../concepts/float.md) | yes |
| [healing_per_tick](#healing-per-tick) | [float](../concepts/float.md) | yes |
| [heat_buffer_prototype](#heat-buffer-prototype) | [LuaHeatBufferPrototype](../classes/LuaHeatBufferPrototype.md) | yes |
| [heat_energy_source_prototype](#heat-energy-source-prototype) | [LuaHeatEnergySourcePrototype](../classes/LuaHeatEnergySourcePrototype.md) | yes |
| [heating_energy](#heating-energy) | [double](../concepts/double.md) |  |
| [heating_radius](#heating-radius) | [float](../concepts/float.md) | yes |
| [height](#height) | [double](../concepts/double.md) | yes |
| [height_from_ground](#height-from-ground) | [float](../concepts/float.md) | yes |
| [held_items_display_count](#held-items-display-count) | [uint8](../concepts/uint8.md) | yes |
| [held_items_offset](#held-items-offset) | [float](../concepts/float.md) | yes |
| [held_items_spread](#held-items-spread) | [float](../concepts/float.md) | yes |
| [hide_resistances](#hide-resistances) | [boolean](../concepts/boolean.md) | yes |
| [hit_at_collision_position](#hit-at-collision-position) | [boolean](../concepts/boolean.md) | yes |
| [hit_collision_mask](#hit-collision-mask) | [CollisionMask](../concepts/CollisionMask.md) | yes |
| [icon_draw_specification](#icon-draw-specification) | [IconDrawSpecification](../concepts/IconDrawSpecification.md) |  |
| [icons_positioning](#icons-positioning) | array[[IconSequencePositioning](../concepts/IconSequencePositioning.md)] | yes |
| [ignore_target_mask](#ignore-target-mask) | [TriggerTargetMask](../concepts/TriggerTargetMask.md) |  |
| [immune_to_all_impacts](#immune-to-all-impacts) | [boolean](../concepts/boolean.md) | yes |
| [immune_to_cliff_impacts](#immune-to-cliff-impacts) | [boolean](../concepts/boolean.md) | yes |
| [immune_to_rock_impacts](#immune-to-rock-impacts) | [boolean](../concepts/boolean.md) | yes |
| [immune_to_tree_impacts](#immune-to-tree-impacts) | [boolean](../concepts/boolean.md) | yes |
| [indexed_guns](#indexed-guns) | array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] | yes |
| [infinite_depletion_resource_amount](#infinite-depletion-resource-amount) | [uint32](../concepts/uint32.md) | yes |
| [infinite_resource](#infinite-resource) | [boolean](../concepts/boolean.md) | yes |
| [ingredient_count](#ingredient-count) | [uint32](../concepts/uint32.md) | yes |
| [initial_action](#initial-action) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [initial_flame_count](#initial-flame-count) | [uint8](../concepts/uint8.md) | yes |
| [initial_height](#initial-height) | [float](../concepts/float.md) | yes |
| [initial_lifetime](#initial-lifetime) | [uint32](../concepts/uint32.md) | yes |
| [initial_speed](#initial-speed) | [Vector](../concepts/Vector.md) | yes |
| [initial_vertical_speed](#initial-vertical-speed) | [float](../concepts/float.md) | yes |
| [input_connection_bounding_box](#input-connection-bounding-box) | [BoundingBox](../concepts/BoundingBox.md) | yes |
| [inserter_chases_belt_items](#inserter-chases-belt-items) | [boolean](../concepts/boolean.md) | yes |
| [inserter_drop_position](#inserter-drop-position) | [Vector](../concepts/Vector.md) | yes |
| [inserter_max_belt_stack_size](#inserter-max-belt-stack-size) | [uint8](../concepts/uint8.md) | yes |
| [inserter_pickup_position](#inserter-pickup-position) | [Vector](../concepts/Vector.md) | yes |
| [inserter_stack_size_bonus](#inserter-stack-size-bonus) | [uint32](../concepts/uint32.md) | yes |
| [instruments](#instruments) | array[[ProgrammableSpeakerInstrument](../concepts/ProgrammableSpeakerInstrument.md)] | yes |
| [inventory_properties](#inventory-properties) | [InventoryWithCustomStackSizeSpecification](../concepts/InventoryWithCustomStackSizeSpecification.md) | yes |
| [inventory_size_quality_increase](#inventory-size-quality-increase) | [ItemStackIndex](../concepts/ItemStackIndex.md) | yes |
| [inventory_type](#inventory-type) | `"normal"` ∣ `"with_bar"` ∣ `"with_filters"` ∣ `"with_filters_and_bar"` ∣ `"with_weight_limit"` ∣ `"with_custom_stack_size"` | yes |
| [inventory_weight_limit](#inventory-weight-limit) | [Weight](../concepts/Weight.md) | yes |
| [investigating_speed](#investigating-speed) | [double](../concepts/double.md) | yes |
| [is_building](#is-building) | [boolean](../concepts/boolean.md) |  |
| [is_entity_with_owner](#is-entity-with-owner) | [boolean](../concepts/boolean.md) |  |
| [is_military_target](#is-military-target) | [boolean](../concepts/boolean.md) | yes |
| [item_pickup_distance](#item-pickup-distance) | [double](../concepts/double.md) | yes |
| [items_to_place_this](#items-to-place-this) | array[[ItemToPlace](../concepts/ItemToPlace.md)] | yes |
| [joint_distance](#joint-distance) | [double](../concepts/double.md) | yes |
| [lab_inputs](#lab-inputs) | array[[string](../concepts/string.md)] | yes |
| [lamp_energy_usage](#lamp-energy-usage) | [double](../concepts/double.md) | yes |
| [launch_to_space_platforms](#launch-to-space-platforms) | [boolean](../concepts/boolean.md) | yes |
| [launch_wait_time](#launch-wait-time) | [uint8](../concepts/uint8.md) | yes |
| [leave_attacking_if_shoot_fails](#leave-attacking-if-shoot-fails) | [boolean](../concepts/boolean.md) | yes |
| [life_time](#life-time) | [uint16](../concepts/uint16.md) | yes |
| [lifetime_increase_by](#lifetime-increase-by) | [uint32](../concepts/uint32.md) | yes |
| [lifetime_increase_cooldown](#lifetime-increase-cooldown) | [uint32](../concepts/uint32.md) | yes |
| [lift_weight](#lift-weight) | [Weight](../concepts/Weight.md) | yes |
| [light_blinking_speed](#light-blinking-speed) | [double](../concepts/double.md) | yes |
| [limit_overlapping_particles](#limit-overlapping-particles) | [boolean](../concepts/boolean.md) | yes |
| [loader_adjustable_belt_stack_size](#loader-adjustable-belt-stack-size) | [boolean](../concepts/boolean.md) | yes |
| [loader_max_belt_stack_size](#loader-max-belt-stack-size) | [uint8](../concepts/uint8.md) | yes |
| [loader_respect_insert_limits](#loader-respect-insert-limits) | [boolean](../concepts/boolean.md) | yes |
| [loader_wait_for_full_stack](#loader-wait-for-full-stack) | [boolean](../concepts/boolean.md) | yes |
| [logistic_mode](#logistic-mode) | `"requester"` ∣ `"active-provider"` ∣ `"passive-provider"` ∣ `"buffer"` ∣ `"storage"` ∣ `"none"` | yes |
| [logistic_parameters](#logistic-parameters) | table{charge_approach_distance, charging_distance, charging_energy, charging_station_count, charging_station_shift, charging_threshold_distance, construction_radius, logistic_radius, logistics_connection_distance, robot_limit, robot_vertical_acceleration, robots_shrink_when_entering_and_exiting, spawn_and_station_height, spawn_and_station_shadow_height_offset, stationing_offset, stationing_render_layer_swap_height} | yes |
| [logistic_radius](#logistic-radius) | [double](../concepts/double.md) | yes |
| [loot](#loot) | array[[ItemProduct](../concepts/ItemProduct.md)] | yes |
| [loot_pickup_distance](#loot-pickup-distance) | [double](../concepts/double.md) | yes |
| [manual_range_modifier](#manual-range-modifier) | [double](../concepts/double.md) | yes |
| [map_color](#map-color) | [Color](../concepts/Color.md) | yes |
| [map_generator_bounding_box](#map-generator-bounding-box) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [map_grid](#map-grid) | [boolean](../concepts/boolean.md) | yes |
| [max_count_of_owned_defensive_units](#max-count-of-owned-defensive-units) | [double](../concepts/double.md) | yes |
| [max_count_of_owned_units](#max-count-of-owned-units) | [double](../concepts/double.md) | yes |
| [max_darkness_to_spawn](#max-darkness-to-spawn) | [float](../concepts/float.md) | yes |
| [max_defensive_friends_around_to_spawn](#max-defensive-friends-around-to-spawn) | [double](../concepts/double.md) | yes |
| [max_friends_around_to_spawn](#max-friends-around-to-spawn) | [double](../concepts/double.md) | yes |
| [max_item_product_count](#max-item-product-count) | [uint32](../concepts/uint32.md) | yes |
| [max_payload_size](#max-payload-size) | [uint32](../concepts/uint32.md) | yes |
| [max_payload_size_after_bonus](#max-payload-size-after-bonus) | [uint32](../concepts/uint32.md) | yes |
| [max_performance](#max-performance) | [ThrusterPerformancePoint](../concepts/ThrusterPerformancePoint.md) | yes |
| [max_polyphony](#max-polyphony) | [uint32](../concepts/uint32.md) | yes |
| [max_pursue_distance](#max-pursue-distance) | [double](../concepts/double.md) | yes |
| [max_records_count](#max-records-count) | [uint32](../concepts/uint32.md) | yes |
| [max_richness_for_spawn_shift](#max-richness-for-spawn-shift) | [double](../concepts/double.md) | yes |
| [max_separation_force](#max-separation-force) | [double](../concepts/double.md) | yes |
| [max_snap_to_train_stop_distance](#max-snap-to-train-stop-distance) | [float](../concepts/float.md) | yes |
| [max_speed](#max-speed) | [double](../concepts/double.md) | yes |
| [max_text_length](#max-text-length) | [uint32](../concepts/uint32.md) | yes |
| [max_text_width](#max-text-width) | [uint32](../concepts/uint32.md) | yes |
| [max_to_charge](#max-to-charge) | [float](../concepts/float.md) | yes |
| [max_underground_distance](#max-underground-distance) | [uint8](../concepts/uint8.md) | yes |
| [maximum_corner_sliding_distance](#maximum-corner-sliding-distance) | [double](../concepts/double.md) | yes |
| [maximum_damage_multiplier](#maximum-damage-multiplier) | [float](../concepts/float.md) | yes |
| [maximum_lifetime](#maximum-lifetime) | [uint32](../concepts/uint32.md) | yes |
| [maximum_spread_count](#maximum-spread-count) | [uint16](../concepts/uint16.md) | yes |
| [maximum_temperature](#maximum-temperature) | [double](../concepts/double.md) | yes |
| [meltdown_action](#meltdown-action) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [min_darkness_to_spawn](#min-darkness-to-spawn) | [float](../concepts/float.md) | yes |
| [min_performance](#min-performance) | [ThrusterPerformancePoint](../concepts/ThrusterPerformancePoint.md) | yes |
| [min_pursue_time](#min-pursue-time) | [uint32](../concepts/uint32.md) | yes |
| [min_to_charge](#min-to-charge) | [float](../concepts/float.md) | yes |
| [mineable_properties](#mineable-properties) | [MineableProperties](../concepts/MineableProperties.md) |  |
| [minimal_arm_swing_segment_retraction](#minimal-arm-swing-segment-retraction) | [uint32](../concepts/uint32.md) | yes |
| [minimum_resource_amount](#minimum-resource-amount) | [uint32](../concepts/uint32.md) | yes |
| [mining_drill_radius](#mining-drill-radius) | [double](../concepts/double.md) | yes |
| [mining_speed](#mining-speed) | [double](../concepts/double.md) | yes |
| [module_inventory_size](#module-inventory-size) | [uint32](../concepts/uint32.md) | yes |
| [module_slots_quality_bonus](#module-slots-quality-bonus) | dictionary[[QualityID](../concepts/QualityID.md) → [ItemStackIndex](../concepts/ItemStackIndex.md)] |  |
| [move_while_shooting](#move-while-shooting) | [boolean](../concepts/boolean.md) | yes |
| [movement_modifier](#movement-modifier) | [double](../concepts/double.md) | yes |
| [movement_modifier_when_on_ground](#movement-modifier-when-on-ground) | [double](../concepts/double.md) | yes |
| [neighbour_bonus](#neighbour-bonus) | [double](../concepts/double.md) | yes |
| [neighbour_connectable](#neighbour-connectable) | [NeighbourConnectable](../concepts/NeighbourConnectable.md) | yes |
| [next_upgrade](#next-upgrade) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [normal_resource_amount](#normal-resource-amount) | [uint32](../concepts/uint32.md) | yes |
| [not_buildable_if_no_rails](#not-buildable-if-no-rails) | [boolean](../concepts/boolean.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [on_damage_tick_effect](#on-damage-tick-effect) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [on_fuel_added_action](#on-fuel-added-action) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [open_door_trigger_effect](#open-door-trigger-effect) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [opened_collision_mask](#opened-collision-mask) | [CollisionMask](../concepts/CollisionMask.md) | yes |
| [opening_speed](#opening-speed) | [float](../concepts/float.md) | yes |
| [orientations](#orientations) | [OrientedCliffPrototypeSet](../concepts/OrientedCliffPrototypeSet.md) | yes |
| [output_connection_bounding_box](#output-connection-bounding-box) | [BoundingBox](../concepts/BoundingBox.md) | yes |
| [overkill_fraction](#overkill-fraction) | [float](../concepts/float.md) | yes |
| [particle](#particle) | [LuaParticlePrototype](../classes/LuaParticlePrototype.md) | yes |
| [particle_buffer_size](#particle-buffer-size) | [uint16](../concepts/uint16.md) | yes |
| [particle_count](#particle-count) | [uint8](../concepts/uint8.md) | yes |
| [particle_height](#particle-height) | [DeviatedValue](../concepts/DeviatedValue.md) | yes |
| [particle_horizontal_speed](#particle-horizontal-speed) | [DeviatedValue](../concepts/DeviatedValue.md) | yes |
| [particle_spawn_interval](#particle-spawn-interval) | [uint16](../concepts/uint16.md) | yes |
| [particle_spawn_timeout](#particle-spawn-timeout) | [uint16](../concepts/uint16.md) | yes |
| [particle_time_before_start](#particle-time-before-start) | [DeviatedValue](../concepts/DeviatedValue.md) | yes |
| [particle_time_to_live](#particle-time-to-live) | [DeviatedValue](../concepts/DeviatedValue.md) | yes |
| [particle_vertical_acceleration](#particle-vertical-acceleration) | [float](../concepts/float.md) | yes |
| [particle_vertical_speed](#particle-vertical-speed) | [DeviatedValue](../concepts/DeviatedValue.md) | yes |
| [passive_energy_usage](#passive-energy-usage) | [double](../concepts/double.md) | yes |
| [patrolling_speed](#patrolling-speed) | [double](../concepts/double.md) | yes |
| [patrolling_turn_radius](#patrolling-turn-radius) | [double](../concepts/double.md) | yes |
| [per_lane_filters](#per-lane-filters) | [boolean](../concepts/boolean.md) | yes |
| [perceived_performance](#perceived-performance) | [PerceivedPerformance](../concepts/PerceivedPerformance.md) | yes |
| [piercing_damage](#piercing-damage) | [float](../concepts/float.md) | yes |
| [place_as_crater](#place-as-crater) | [CraterPlacementDefinition](../concepts/CraterPlacementDefinition.md) | yes |
| [platform_repair_speed_modifier](#platform-repair-speed-modifier) | [float](../concepts/float.md) | yes |
| [platform_weight](#platform-weight) | [Weight](../concepts/Weight.md) | yes |
| [prepare_with_no_ammo](#prepare-with-no-ammo) | [boolean](../concepts/boolean.md) | yes |
| [preserve_contents_when_created](#preserve-contents-when-created) | [boolean](../concepts/boolean.md) | yes |
| [profile](#profile) | array[[double](../concepts/double.md)] | yes |
| [progress_to_create_smoke](#progress-to-create-smoke) | [float](../concepts/float.md) | yes |
| [protected_from_tile_building](#protected-from-tile-building) | [boolean](../concepts/boolean.md) |  |
| [pulse_duration](#pulse-duration) | [uint32](../concepts/uint32.md) | yes |
| [quality_affects_capacity](#quality-affects-capacity) | [boolean](../concepts/boolean.md) | yes |
| [quality_affects_energy_usage](#quality-affects-energy-usage) | [boolean](../concepts/boolean.md) | yes |
| [quality_affects_inventory_size](#quality-affects-inventory-size) | [boolean](../concepts/boolean.md) | yes |
| [quality_affects_max_speed](#quality-affects-max-speed) | [boolean](../concepts/boolean.md) | yes |
| [quality_affects_mining_radius](#quality-affects-mining-radius) | [boolean](../concepts/boolean.md) | yes |
| [quality_affects_module_slots](#quality-affects-module-slots) | [boolean](../concepts/boolean.md) | yes |
| [quality_affects_supply_area_distance](#quality-affects-supply-area-distance) | [boolean](../concepts/boolean.md) | yes |
| [radar_range](#radar-range) | [uint32](../concepts/uint32.md) | yes |
| [radius](#radius) | [double](../concepts/double.md) |  |
| [radius_visualisation_specification](#radius-visualisation-specification) | [RadiusVisualisationSpecification](../concepts/RadiusVisualisationSpecification.md) | yes |
| [raise_rocket_trigger](#raise-rocket-trigger) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [random_corpse_variation](#random-corpse-variation) | [boolean](../concepts/boolean.md) | yes |
| [random_growth_offset](#random-growth-offset) | [double](../concepts/double.md) | yes |
| [randomize_planting_tile](#randomize-planting-tile) | [boolean](../concepts/boolean.md) | yes |
| [range_from_player](#range-from-player) | [double](../concepts/double.md) | yes |
| [reach_distance](#reach-distance) | [uint32](../concepts/uint32.md) | yes |
| [reach_resource_distance](#reach-resource-distance) | [double](../concepts/double.md) | yes |
| [recharge_minimum](#recharge-minimum) | [double](../concepts/double.md) | yes |
| [regular_trigger_effect](#regular-trigger-effect) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [regular_trigger_effect_frequency](#regular-trigger-effect-frequency) | [uint32](../concepts/uint32.md) | yes |
| [related_rail](#related-rail) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [related_underground_belt](#related-underground-belt) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [remains_when_mined](#remains-when-mined) | array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] |  |
| [remove_decoratives](#remove-decoratives) | `"automatic"` ∣ `"true"` ∣ `"false"` |  |
| [remove_on_entity_placement](#remove-on-entity-placement) | [boolean](../concepts/boolean.md) | yes |
| [remove_on_tile_collision](#remove-on-tile-collision) | [boolean](../concepts/boolean.md) | yes |
| [remove_on_tile_placement](#remove-on-tile-placement) | [boolean](../concepts/boolean.md) | yes |
| [repair_speed_modifier](#repair-speed-modifier) | [float](../concepts/float.md) | yes |
| [require_charge_to_mine](#require-charge-to-mine) | [boolean](../concepts/boolean.md) | yes |
| [require_resources_to_place](#require-resources-to-place) | [boolean](../concepts/boolean.md) | yes |
| [resistances](#resistances) | dictionary[[string](../concepts/string.md) → [Resistance](../concepts/Resistance.md)] | yes |
| [resource_categories](#resource-categories) | dictionary[[string](../concepts/string.md) → `true`] | yes |
| [resource_category](#resource-category) | [string](../concepts/string.md) | yes |
| [resource_drain_rate_percent](#resource-drain-rate-percent) | [uint8](../concepts/uint8.md) | yes |
| [resource_patch_search_radius](#resource-patch-search-radius) | [uint32](../concepts/uint32.md) | yes |
| [respawn_time](#respawn-time) | [uint32](../concepts/uint32.md) | yes |
| [result_units](#result-units) | array[[UnitSpawnDefinition](../concepts/UnitSpawnDefinition.md)] | yes |
| [reveal_map](#reveal-map) | [boolean](../concepts/boolean.md) | yes |
| [revenge_attack_parameters](#revenge-attack-parameters) | [AttackParameters](../concepts/AttackParameters.md) | yes |
| [reversing_power_modifier](#reversing-power-modifier) | [double](../concepts/double.md) | yes |
| [rewire_neighbours_when_destroying](#rewire-neighbours-when-destroying) | [boolean](../concepts/boolean.md) |  |
| [rising_speed](#rising-speed) | [double](../concepts/double.md) | yes |
| [rocket_dying_explosion](#rocket-dying-explosion) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [rocket_engine_starting_speed_modifier_per_quality_level](#rocket-engine-starting-speed-modifier-per-quality-level) | [double](../concepts/double.md) | yes |
| [rocket_entity_prototype](#rocket-entity-prototype) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [rocket_parts_required](#rocket-parts-required) | [uint32](../concepts/uint32.md) | yes |
| [rocket_parts_storage_cap](#rocket-parts-storage-cap) | [uint32](../concepts/uint32.md) | yes |
| [rocket_quick_relaunch_start_offset](#rocket-quick-relaunch-start-offset) | [double](../concepts/double.md) | yes |
| [rocket_rising_delay](#rocket-rising-delay) | [uint8](../concepts/uint8.md) | yes |
| [rocket_rising_speed_modifier_per_quality_level](#rocket-rising-speed-modifier-per-quality-level) | [double](../concepts/double.md) | yes |
| [rotatable](#rotatable) | [boolean](../concepts/boolean.md) | yes |
| [rotation_snap_angle](#rotation-snap-angle) | [double](../concepts/double.md) | yes |
| [rotation_speed](#rotation-speed) | [double](../concepts/double.md) | yes |
| [running_speed](#running-speed) | [double](../concepts/double.md) | yes |
| [scale_energy_usage](#scale-energy-usage) | [boolean](../concepts/boolean.md) | yes |
| [scale_fluid_usage](#scale-fluid-usage) | [boolean](../concepts/boolean.md) | yes |
| [science_pack_drain_rate_percent](#science-pack-drain-rate-percent) | [uint8](../concepts/uint8.md) |  |
| [search_radius](#search-radius) | [double](../concepts/double.md) | yes |
| [secondary_collision_box](#secondary-collision-box) | [BoundingBox](../concepts/BoundingBox.md) | yes |
| [segment_engine](#segment-engine) | [SegmentEngineSpecification](../concepts/SegmentEngineSpecification.md) | yes |
| [selectable_in_game](#selectable-in-game) | [boolean](../concepts/boolean.md) |  |
| [selection_box](#selection-box) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [selection_priority](#selection-priority) | [uint32](../concepts/uint32.md) |  |
| [separation_force_factor](#separation-force-factor) | [double](../concepts/double.md) | yes |
| [separation_range](#separation-range) | [double](../concepts/double.md) | yes |
| [shadow_slave_entity](#shadow-slave-entity) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [shoot_in_prepare_state](#shoot-in-prepare-state) | [boolean](../concepts/boolean.md) | yes |
| [shooting_cursor_size](#shooting-cursor-size) | [float](../concepts/float.md) |  |
| [shot_category](#shot-category) | [LuaAmmoCategoryPrototype](../classes/LuaAmmoCategoryPrototype.md) | yes |
| [shots_per_flare](#shots-per-flare) | [uint32](../concepts/uint32.md) | yes |
| [should_ground_target](#should-ground-target) | [boolean](../concepts/boolean.md) | yes |
| [show_fluid_visualization_when_in_cursor](#show-fluid-visualization-when-in-cursor) | [boolean](../concepts/boolean.md) |  |
| [shuffle_resources_to_mine](#shuffle-resources-to-mine) | [boolean](../concepts/boolean.md) | yes |
| [smoke](#smoke) | [LuaTrivialSmokePrototype](../classes/LuaTrivialSmokePrototype.md) | yes |
| [smoke_count](#smoke-count) | [uint16](../concepts/uint16.md) | yes |
| [smoke_sources](#smoke-sources) | array[[SmokeSource](../concepts/SmokeSource.md)] | yes |
| [snap_to_spots_distance](#snap-to-spots-distance) | [float](../concepts/float.md) | yes |
| [solar_panel_performance_at_day](#solar-panel-performance-at-day) | [double](../concepts/double.md) |  |
| [solar_panel_performance_at_night](#solar-panel-performance-at-night) | [double](../concepts/double.md) |  |
| [solar_panel_solar_coefficient_property](#solar-panel-solar-coefficient-property) | [LuaSurfacePropertyPrototype](../classes/LuaSurfacePropertyPrototype.md) |  |
| [source_offset](#source-offset) | [Vector](../concepts/Vector.md) | yes |
| [source_variance](#source-variance) | [Vector](../concepts/Vector.md) | yes |
| [spawn_blocked_trigger](#spawn-blocked-trigger) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [spawn_cooldown](#spawn-cooldown) | table{max, min} | yes |
| [spawn_decoration](#spawn-decoration) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [spawn_decorations_on_expansion](#spawn-decorations-on-expansion) | [boolean](../concepts/boolean.md) | yes |
| [spawn_entity](#spawn-entity) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [spawning_radius](#spawning-radius) | [double](../concepts/double.md) | yes |
| [spawning_spacing](#spawning-spacing) | [double](../concepts/double.md) | yes |
| [spawning_time_modifier](#spawning-time-modifier) | [double](../concepts/double.md) | yes |
| [special_neutral_target_damage](#special-neutral-target-damage) | [DamageParameters](../concepts/DamageParameters.md) | yes |
| [speed](#speed) | [double](../concepts/double.md) | yes |
| [speed_modifier](#speed-modifier) | [Vector](../concepts/Vector.md) | yes |
| [speed_multiplier_when_out_of_energy](#speed-multiplier-when-out-of-energy) | [float](../concepts/float.md) | yes |
| [spent_fluid](#spent-fluid) | [SpentFluidSpecification](../concepts/SpentFluidSpecification.md) | yes |
| [spider_engine](#spider-engine) | [SpiderEngineSpecification](../concepts/SpiderEngineSpecification.md) | yes |
| [spread_delay](#spread-delay) | [uint32](../concepts/uint32.md) | yes |
| [spread_delay_deviation](#spread-delay-deviation) | [uint32](../concepts/uint32.md) | yes |
| [start_attacking_only_when_can_shoot](#start-attacking-only-when-can-shoot) | [boolean](../concepts/boolean.md) | yes |
| [steering_settings](#steering-settings) | [SteeringSettings](../concepts/SteeringSettings.md) | yes |
| [sticker_box](#sticker-box) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [sticker_movement_modifiers](#sticker-movement-modifiers) | table{target_movement_max_from, target_movement_max_to, target_movement_modifier_from, target_movement_modifier_to} | yes |
| [sticker_vehicle_modifiers](#sticker-vehicle-modifiers) | table{vehicle_friction_modifier_from, vehicle_friction_modifier_to, vehicle_speed_max_from, vehicle_speed_max_to, vehicle_speed_modifier_from, vehicle_speed_modifier_to} | yes |
| [stickers_per_square_meter](#stickers-per-square-meter) | [float](../concepts/float.md) | yes |
| [stream_particle_horizontal_speed](#stream-particle-horizontal-speed) | [float](../concepts/float.md) | yes |
| [stream_particle_horizontal_speed_deviation](#stream-particle-horizontal-speed-deviation) | [float](../concepts/float.md) | yes |
| [strike_effect](#strike-effect) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [support_range](#support-range) | [float](../concepts/float.md) | yes |
| [supports_direction](#supports-direction) | [boolean](../concepts/boolean.md) |  |
| [surface_conditions](#surface-conditions) | array[[SurfaceCondition](../concepts/SurfaceCondition.md)] | yes |
| [synced_footstep_particle_triggers](#synced-footstep-particle-triggers) | dictionary[[LuaTilePrototype](../classes/LuaTilePrototype.md) → array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)]] | yes |
| [tank_driving](#tank-driving) | [boolean](../concepts/boolean.md) | yes |
| [target_initial_position_only](#target-initial-position-only) | [boolean](../concepts/boolean.md) | yes |
| [target_position_deviation](#target-position-deviation) | [double](../concepts/double.md) | yes |
| [target_temperature](#target-temperature) | [float](../concepts/float.md) | yes |
| [terrain_friction_modifier](#terrain-friction-modifier) | [float](../concepts/float.md) | yes |
| [territory_radius](#territory-radius) | [uint32](../concepts/uint32.md) | yes |
| [tether_size](#tether-size) | [float](../concepts/float.md) | yes |
| [ticks_per_scan](#ticks-per-scan) | [uint32](../concepts/uint32.md) | yes |
| [ticks_to_keep_aiming_direction](#ticks-to-keep-aiming-direction) | [uint32](../concepts/uint32.md) | yes |
| [ticks_to_keep_gun](#ticks-to-keep-gun) | [uint32](../concepts/uint32.md) | yes |
| [ticks_to_stay_in_combat](#ticks-to-stay-in-combat) | [uint32](../concepts/uint32.md) | yes |
| [tie_distance](#tie-distance) | [double](../concepts/double.md) | yes |
| [tile_buildability_rules](#tile-buildability-rules) | array[[TileBuildabilityRule](../concepts/TileBuildabilityRule.md)] | yes |
| [tile_height](#tile-height) | [uint32](../concepts/uint32.md) |  |
| [tile_width](#tile-width) | [uint32](../concepts/uint32.md) |  |
| [time_to_capture](#time-to-capture) | [MapTick](../concepts/MapTick.md) | yes |
| [time_to_damage](#time-to-damage) | [uint16](../concepts/uint16.md) | yes |
| [time_to_live](#time-to-live) | [MapTick](../concepts/MapTick.md) |  |
| [timeout](#timeout) | [uint32](../concepts/uint32.md) | yes |
| [timeout_to_close](#timeout-to-close) | [uint32](../concepts/uint32.md) | yes |
| [tool_attack_distance](#tool-attack-distance) | [double](../concepts/double.md) | yes |
| [tool_attack_result](#tool-attack-result) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [torso_bob_speed](#torso-bob-speed) | [double](../concepts/double.md) | yes |
| [torso_rotation_speed](#torso-rotation-speed) | [double](../concepts/double.md) | yes |
| [track_coverage_during_drag_building](#track-coverage-during-drag-building) | [boolean](../concepts/boolean.md) | yes |
| [track_particle_triggers](#track-particle-triggers) | dictionary[[LuaTilePrototype](../classes/LuaTilePrototype.md) → array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)]] |  |
| [transition_collision_mask](#transition-collision-mask) | [CollisionMask](../concepts/CollisionMask.md) | yes |
| [tree_color_count](#tree-color-count) | [uint8](../concepts/uint8.md) | yes |
| [tree_dying_factor](#tree-dying-factor) | [float](../concepts/float.md) | yes |
| [tree_removal_max_distance](#tree-removal-max-distance) | [double](../concepts/double.md) | yes |
| [tree_removal_probability](#tree-removal-probability) | [double](../concepts/double.md) | yes |
| [trigger_collision_mask](#trigger-collision-mask) | [CollisionMask](../concepts/CollisionMask.md) | yes |
| [trigger_force](#trigger-force) | [ForceCondition](../concepts/ForceCondition.md) | yes |
| [trigger_interval](#trigger-interval) | [uint32](../concepts/uint32.md) | yes |
| [trigger_radius](#trigger-radius) | [double](../concepts/double.md) | yes |
| [trigger_target_mask](#trigger-target-mask) | dictionary[[string](../concepts/string.md) → [boolean](../concepts/boolean.md)] |  |
| [turn_radius](#turn-radius) | [double](../concepts/double.md) | yes |
| [turn_smoothing](#turn-smoothing) | [double](../concepts/double.md) | yes |
| [turn_speed](#turn-speed) | [float](../concepts/float.md) | yes |
| [turning_speed_increases_exponentially_with_projectile_speed](#turning-speed-increases-exponentially-with-projectile-speed) | [boolean](../concepts/boolean.md) | yes |
| [turret_base_has_direction](#turret-base-has-direction) | [boolean](../concepts/boolean.md) | yes |
| [turret_prepare_range](#turret-prepare-range) | [double](../concepts/double.md) | yes |
| [turret_range](#turret-range) | [uint32](../concepts/uint32.md) | yes |
| [turret_rotation_speed](#turret-rotation-speed) | [float](../concepts/float.md) | yes |
| [two_direction_only](#two-direction-only) | [boolean](../concepts/boolean.md) | yes |
| [unpowered_arm_speed_scale](#unpowered-arm-speed-scale) | [float](../concepts/float.md) | yes |
| [update_effects](#update-effects) | array[[TriggerEffectWithCooldown](../concepts/TriggerEffectWithCooldown.md)] | yes |
| [update_effects_while_enraged](#update-effects-while-enraged) | array[[TriggerEffectWithCooldown](../concepts/TriggerEffectWithCooldown.md)] | yes |
| [use_damage_substitute](#use-damage-substitute) | [boolean](../concepts/boolean.md) | yes |
| [use_easter_egg](#use-easter-egg) | [boolean](../concepts/boolean.md) | yes |
| [use_exact_mode](#use-exact-mode) | [boolean](../concepts/boolean.md) | yes |
| [use_mirroring](#use-mirroring) | [boolean](../concepts/boolean.md) | yes |
| [use_unloading_distance_limit](#use-unloading-distance-limit) | [boolean](../concepts/boolean.md) | yes |
| [uses_alternative_behavior](#uses-alternative-behavior) | [boolean](../concepts/boolean.md) | yes |
| [uses_force_mining_productivity_bonus](#uses-force-mining-productivity-bonus) | [boolean](../concepts/boolean.md) | yes |
| [uses_inserter_stack_size_bonus](#uses-inserter-stack-size-bonus) | [boolean](../concepts/boolean.md) | yes |
| [uses_quality_drain_modifier](#uses-quality-drain-modifier) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [valve_mode](#valve-mode) | [ValveMode](../concepts/ValveMode.md) | yes |
| [valve_threshold](#valve-threshold) | [float](../concepts/float.md) | yes |
| [vector_to_place_result](#vector-to-place-result) | [Vector](../concepts/Vector.md) | yes |
| [vertical_selection_shift](#vertical-selection-shift) | [double](../concepts/double.md) | yes |
| [vision_distance](#vision-distance) | [double](../concepts/double.md) | yes |
| [void_energy_source_prototype](#void-energy-source-prototype) | [LuaVoidEnergySourcePrototype](../classes/LuaVoidEnergySourcePrototype.md) | yes |
| [wait_for_full_hand](#wait-for-full-hand) | [boolean](../concepts/boolean.md) | yes |
| [weight](#weight) | [double](../concepts/double.md) | yes |
| [width](#width) | [float](../concepts/float.md) | yes |

### absorptions_per_second

**Read:** dictionary[[string](../concepts/string.md) → [EnemySpawnerAbsorption](../concepts/EnemySpawnerAbsorption.md)] · _read-only_

### absorptions_to_join_attack

**Read:** dictionary[[string](../concepts/string.md) → [float](../concepts/float.md)] · _read-only_ · _optional_

A table of pollutions amounts that has to be absorbed by the unit's spawner before the unit will leave the spawner and attack the source of the pollution, indexed by the name of each absorbed pollution type.

### acceleration

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### acceleration_rate

**Read:** [double](../concepts/double.md) · _read-only_

### accepted_seeds

**Read:** array[[string](../concepts/string.md)] · _read-only_ · _optional_

### action

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### action_cooldown

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### action_triggered_automatically

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### activation_buffer_ratio

**Read:** [FluidAmount](../concepts/FluidAmount.md) · _read-only_ · _optional_

### activation_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### active_energy_usage

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The active energy usage of this rocket silo or combinator prototype.

### add_fuel_cooldown

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### additional_pastable_entities

**Read:** array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_

Entities this entity can be pasted onto in addition to the normal allowed ones.

### affected_by_tiles

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this unit prototype is affected by tile walking speed modifiers.

### agricultural_tower_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### ai_settings

**Read:** [UnitAISettings](../concepts/UnitAISettings.md) · _read-only_ · _optional_

### air_resistance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The air resistance of this rolling stock prototype.

### alarm_trigger

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### alert_after_time

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### alert_icon_scale

**Read:** [float](../concepts/float.md) · _read-only_

The alert icon scale of this entity prototype.

### alert_icon_shift

**Read:** [Vector](../concepts/Vector.md) · _read-only_

The alert icon shift of this entity prototype.

### alert_when_attacking

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this turret raises an alert when attacking

### alert_when_damaged

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this entity raises an alert when damaged.

### allow_access_to_all_forces

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this market allows access to all forces or just friendly ones.

### allow_blueprint_connection

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### allow_burner_leech

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this inserter allows burner leeching.

### allow_clone_connection

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### allow_container_interaction

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### allow_copy_paste

**Read:** [boolean](../concepts/boolean.md) · _read-only_

When false copy-paste is not allowed for this entity.

### allow_custom_vectors

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this inserter allows custom pickup and drop vectors.

### allow_manual_color

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### allow_passengers

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this vehicle allows passengers.

### allow_rail_interaction

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### allow_robot_dispatch_in_automatic_mode

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### allow_run_time_change_of_is_military_target

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

True if this entity-with-owner's is_military_target can be changed run-time (on the entity, not on the prototype itself)

### allow_side_loading

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### allow_turning_when_starting_attack

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### allow_unloading

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### allowed_effects

**Read:** dictionary[[string](../concepts/string.md) → [boolean](../concepts/boolean.md)] · _read-only_ · _optional_

The allowed module effects for this entity, if any.

### allowed_module_categories

**Read:** dictionary[[string](../concepts/string.md) → `true`] · _read-only_ · _optional_

The allowed module categories for this entity, if any.

### allows_flipping

**Read:** [boolean](../concepts/boolean.md) · _read-only_

When this entity is part of blueprint, will it allow flipping of the blueprint?

### always_on

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether the lamp is always on (except when out of power or turned off by the circuit network).

### ammo_category

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

Name of the ammo category of this land mine.

### ammo_stack_limit

**Read:** [ItemCountType](../concepts/ItemCountType.md) · _read-only_ · _optional_

The max stack size of ammo in this artillery turret or artillery wagon.

### animation_speed_coefficient

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The animation speed coefficient of this belt connectable prototype.

### arm_angular_speed_cap_base

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### arm_angular_speed_cap_quality_scaling

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### arm_color_gradient

**Read:** array[[Color](../concepts/Color.md)] · _read-only_ · _optional_

### arm_count_base

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### arm_count_quality_scaling

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### arm_energy_usage

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### arm_inventory_size_quality_increase

**Read:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _read-only_ · _optional_

### arm_slow_energy_usage

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### arm_speed_base

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### arm_speed_quality_scaling

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### arms_speed_modifier_per_quality_level

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### attach_to_target

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### attack_parameters

**Read:** [AttackParameters](../concepts/AttackParameters.md) · _read-only_ · _optional_

The attack parameters for this entity, if any.

### attack_reaction

**Read:** array[[AttackReactionItem](../concepts/AttackReactionItem.md)] · _read-only_ · _optional_

### attack_result

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

The attack result of this entity, if any.

### attack_target_mask

**Read:** [TriggerTargetMask](../concepts/TriggerTargetMask.md) · _read-only_

### attacking_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### attractor_hit_effect

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### auto_connect_up_to_n_wires

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

### auto_setup_collision_box

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### auto_sort_inventory

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### automated_ammo_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The amount of ammo that inserters automatically insert into this ammo turret, artillery turret or artillery wagon.

### automatic_weapon_cycling

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this spider vehicle prototype automatically cycles weapons.

### autoplace_specification

**Read:** [AutoplaceSpecification](../concepts/AutoplaceSpecification.md) · _read-only_ · _optional_

Autoplace specification for this entity prototype, if any.

### beacon_counter

**Read:** `"total"` ∣ `"same_type"` · _read-only_ · _optional_

The beacon counter used by effect receiver when deciding which sample to take from beacon profile.

### belt_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### belt_length

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### belt_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The speed of this transport belt.

### boiler_mode

**Read:** `"heat-fluid-inside"` ∣ `"output-to-separate-pipe"` · _read-only_ · _optional_

The boiler operation mode of this boiler prototype.

### braking_force

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The braking force of this vehicle prototype.

### build_distance

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### building_grid_bit_shift

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The log2 of [grid size](../prototypes/EntityPrototype.md#build-grid-size) of the building.

### bulk

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this inserter is a bulk-type.

### burner_prototype

**Read:** [LuaBurnerPrototype](../classes/LuaBurnerPrototype.md) · _read-only_ · _optional_

The burner energy source prototype this entity uses, if any.

### burns_fluid

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this generator prototype burns fluid.

### call_for_help_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### can_launch_without_landing_pads

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### can_open_gates

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this unit prototype can open gates.

### can_retarget_while_starting_attack

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### cant_insert_at_source_message_key

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

### capture_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### captured_spawner_entity

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

### cargo_pod_entity

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

### cargo_station_parameters

**Read:** [CargoStationParameters](../concepts/CargoStationParameters.md) · _read-only_ · _optional_

### chain_shooting_cooldown_modifier

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The chain shooting cooldown modifier of this spider vehicle prototype.

### character_corpse

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

### chunk_exploration_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The chunk exploration radius of this vehicle prototype.

### clamps_off_trigger

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### clamps_on_trigger

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### cliff_explosive_prototype

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The item prototype name used to destroy this cliff.

### cliff_removal_probability

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### close_door_trigger_effect

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### collection_box_offset

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### collision_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_

The bounding box used for collision checking.

### collision_mask

**Read:** [CollisionMask](../concepts/CollisionMask.md) · _read-only_

The collision masks this entity uses

### collision_mask_allow_on_deep_oil_ocean

**Read:** [CollisionMask](../concepts/CollisionMask.md) · _read-only_ · _optional_

### collision_mask_collides_with_self

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Does this prototype collision mask collide with itself?

### collision_mask_collides_with_tiles_only

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Does this prototype collision mask collide with tiles only?

### collision_mask_considers_tile_transitions

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Does this prototype collision mask consider tile transitions?

### color

**Read:** [Color](../concepts/Color.md) · _read-only_ · _optional_

The color of the prototype, if any.

### combat_robot_friction

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### connectable_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_ · _optional_

### connection_category

**Read:** array[[string](../concepts/string.md)] · _read-only_

### connection_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### connects_to_other_radars

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### construction_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The construction radius for this roboport prototype.

### consumption

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The energy consumption of this car prototype.

### container_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### corpses

**Read:** dictionary[[string](../concepts/string.md) → [LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_ · _optional_

Corpses used when this entity is destroyed. It is a dictionary indexed by the corpse's prototype name.

### count_as_rock_for_filtered_deconstruction

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If this simple-entity is counted as a rock for the deconstruction planner "trees and rocks only" filter.

### crafting_categories

**Read:** dictionary[[string](../concepts/string.md) → `true`] · _read-only_ · _optional_

The [crafting categories](../classes/LuaRecipeCategoryPrototype.md) this entity prototype supports.

The value in the dictionary is meaningless and exists just to allow for easy lookup.

### crafting_speed_quality_multiplier

**Read:** dictionary[[QualityID](../concepts/QualityID.md) → [double](../concepts/double.md)] · _read-only_

### crane_energy_usage

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The crane energy usage of this agricultural tower prototype.

### create_ghost_on_death

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this prototype will attempt to create a ghost of itself on death.

If this is false then a ghost will never be made, if it's true a ghost may be made.

### created_effect

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

The trigger to run when this entity is created, if any.

### created_smoke

**Read:** table{initial_height, max_radius, offset_deviation, offsets, smoke_name, speed, speed_from_center, speed_from_center_deviation, speed_multiplier, speed_multiplier_deviation, starting_frame, starting_frame_deviation} · _read-only_ · _optional_

The smoke trigger run when this entity is built, if any.

### creation_shift

**Read:** [Vector](../concepts/Vector.md) · _read-only_ · _optional_

### custom_input_slot_tooltip_key

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

### damage

**Read:** [DamageParameters](../concepts/DamageParameters.md) · _read-only_ · _optional_

When lightning strikes something that is not a lightning attractor, this damage is applied to the target.

For stickers the damage is applied every [LuaEntityPrototype::damage_interval](../classes/LuaEntityPrototype.md#damage-interval) ticks.

### damage_hit_tint

**Read:** [Color](../concepts/Color.md) · _read-only_ · _optional_

### damage_interval

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### damage_multiplier_decrease_per_tick

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### damage_multiplier_increase_per_added_fuel

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### damage_per_hp

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### damage_per_tick

**Read:** [DamageParameters](../concepts/DamageParameters.md) · _read-only_ · _optional_

### damaged_trigger_effect

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### darkness_for_all_lamps_off

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

Value between 0 and 1 darkness where all lamps of this lamp prototype are off.

### darkness_for_all_lamps_on

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

Value between 0 and 1 darkness where all lamps of this lamp prototype are on.

### default_available_construction_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_available_logistic_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_blue_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_blue_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_copy_color_from_train_stop

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### default_day_length_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_day_tick_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_game_tick_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_green_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_green_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_orange_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_recipe_finished_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_red_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_red_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_rgb_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_roboport_count_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_stack_control_input_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_status

**Read:** [defines.entity_status](../defines/defines.md) · _read-only_ · _optional_

### default_technology_level_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_temperature_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_total_construction_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_total_logistic_output_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_universe_channel

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### default_working_signal

**Read:** [SignalID](../concepts/SignalID.md) · _read-only_ · _optional_

### delay_between_initial_flames

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### deposit_radius

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### destroy_action

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### destroy_non_fuel_fluid

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this generator prototype destroys non-fuel fluids.

### destroy_on_empty

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### direction_count

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

### direction_only

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### disable_automatic_firing

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If automatic firing is disabled for this artillery turret or artillery wagon.

### disabled_when_recipe_not_researched

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### distraction_cooldown

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The distraction cooldown of this unit prototype.

### distribution_effectivity

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The distribution effectivity for this beacon prototype.

### distribution_effectivity_bonus_per_quality_level

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The distribution effectivity bonus per quality level for this beacon prototype.

### door_opening_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The door opening speed for this rocket silo prototype.

### doors_trigger

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### draw_cargo

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this logistics or construction robot renders its cargo when flying.

### drawing_box_vertical_extension

**Read:** [double](../concepts/double.md) · _read-only_

Extra vertical space needed to see the whole entity in GUIs. This is used to calculate the correct zoom and positioning in the entity info gui, for example in the entity tooltip.

### drive_over_elevated_tie_trigger

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### drive_over_tie_trigger

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### drive_over_tie_trigger_minimal_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### drop_item_distance

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### drops_full_belt_stacks

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If this mining drill puts full belt stacks onto belts.

### dying_explosion

**Read:** array[[ExplosionDefinition](../concepts/ExplosionDefinition.md)] · _read-only_ · _optional_

### dying_speed

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The dying time of this corpse prototype.

### dying_trigger_effect

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### early_death_ticks

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### effect_duration

**Read:** [uint16](../concepts/uint16.md) · _read-only_ · _optional_

### effect_receiver

**Read:** [EffectReceiver](../concepts/EffectReceiver.md) · _read-only_ · _optional_

Effect receiver prototype of crafting machine, lab, mining drill, or agricultural tower.

### effectivity

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The effectivity of this car prototype, generator prototype.

### electric_energy_source_prototype

**Read:** [LuaElectricEnergySourcePrototype](../classes/LuaElectricEnergySourcePrototype.md) · _read-only_ · _optional_

The electric energy source prototype this entity uses, if any.

### elevated_collision_mask

**Read:** [CollisionMask](../concepts/CollisionMask.md) · _read-only_ · _optional_

### elevated_selection_boxes

**Read:** array[[BoundingBox](../concepts/BoundingBox.md)] · _read-only_ · _optional_

### elevated_selection_priority

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

### emissions_per_second

**Read:** dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] · _read-only_

A table of pollution emissions per second the entity will create, grouped by the name of the pollution type.

### ended_in_water_trigger_effect

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### enemy_map_color

**Read:** [Color](../concepts/Color.md) · _read-only_

The enemy map color used when charting this entity.

### energy

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

When lightning hits a lightning attractor this amount of energy is transferred to the lightning attractor.

### energy_fraction_to_connect

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### energy_fraction_to_disconnect

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### energy_per_hit_point

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The energy used per hit point taken for this vehicle during collisions.

### energy_per_item

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### energy_per_move

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The energy consumed per tile moved for this flying robot.

### energy_per_movement

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### energy_per_nearby_scan

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### energy_per_rotation

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### energy_per_sector

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### energy_per_shot

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### energy_per_tick

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The energy consumed per tick for this flying robot.

### energy_usage

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The direct energy usage of this entity, if any.

### energy_usage_quality_multiplier

**Read:** dictionary[[QualityID](../concepts/QualityID.md) → [double](../concepts/double.md)] · _read-only_

### energy_usage_quality_scaling

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### engine_starting_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The engine starting speed for this rocket silo rocket prototype.

### enraged_duration

**Read:** [MapTick](../concepts/MapTick.md) · _read-only_ · _optional_

### enraged_speed

**Read:** [double](../concepts/double.md) · _read-only_

### enter_drop_mode_if_held_stack_spoiled

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### enter_vehicle_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### erase_contents_when_mined

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### expires

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### explosion_beam

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

Whether this explosion has a beam.

### explosion_effect

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### explosion_rotate

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

Whether this explosion rotates.

### factoriopedia_alternative

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### fast_replaceable_group

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The group of mutually fast-replaceable entities, if any.

### filter_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The filter count of this inserter, loader, mining drill, roboport or logistic chest. For logistic containers, `nil` means no limit.

### final_attack_result

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

The final attack result for this entity if it has one.

### fire_spread_cooldown

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

### fire_spread_entity

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

### fire_spread_radius

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### fixed_quality

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_ · _optional_

The fixed recipe quality for this assembling machine prototype, if any.

### fixed_recipe

**Read:** [LuaRecipePrototype](../classes/LuaRecipePrototype.md) · _read-only_ · _optional_

The fixed recipe for this assembling machine prototype, if any.

### flags

**Read:** [EntityPrototypeFlags](../concepts/EntityPrototypeFlags.md) · _read-only_

The flags for this entity prototype.

### flow_scaling

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### fluid_boxes_off_when_no_fluid_recipe

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### fluid_buffer_input_flow

**Read:** [FluidAmount](../concepts/FluidAmount.md) · _read-only_ · _optional_

### fluid_buffer_size

**Read:** [FluidAmount](../concepts/FluidAmount.md) · _read-only_ · _optional_

### fluid_capacity

**Read:** [double](../concepts/double.md) · _read-only_

The fluid capacity of this entity or 0 if this entity doesn't support fluids.

Crafting machines will report 0 due to their fluid capacity being whatever a given recipe needs.

### fluid_energy_source_prototype

**Read:** [LuaFluidEnergySourcePrototype](../classes/LuaFluidEnergySourcePrototype.md) · _read-only_ · _optional_

The fluid energy source prototype this entity uses, if any.

### fluid_source_offset

**Read:** [Vector](../concepts/Vector.md) · _read-only_ · _optional_

### fluid_wagon_connector_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### fluid_wagon_tank_valve_max_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### fluidbox_prototypes

**Read:** array[[LuaFluidBoxPrototype](../classes/LuaFluidBoxPrototype.md)] · _read-only_

The fluidbox prototypes for this entity.

### flying_acceleration

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The flying acceleration for this rocket silo rocket prototype.

### flying_collision_mask

**Read:** [CollisionMask](../concepts/CollisionMask.md) · _read-only_ · _optional_

### flying_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The flying speed for this rocket silo rocket prototype.

### flying_trigger

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### folded_turret_corpses

**Read:** dictionary[[string](../concepts/string.md) → [LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_ · _optional_

### follows_player

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### footprint_particles

**Read:** dictionary[[LuaTilePrototype](../classes/LuaTilePrototype.md) → array[[LuaParticlePrototype](../classes/LuaParticlePrototype.md)]] · _read-only_ · _optional_

### footstep_particle_triggers

**Read:** dictionary[[LuaTilePrototype](../classes/LuaTilePrototype.md) → array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)]] · _read-only_ · _optional_

### force_die_on_attack

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### force_visibility

**Read:** [ForceCondition](../concepts/ForceCondition.md) · _read-only_ · _optional_

### friction_force

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The friction of this vehicle prototype.

### friendly_map_color

**Read:** [Color](../concepts/Color.md) · _read-only_

The friendly map color used when charting this entity.

### grab_less_to_match_belt_stack

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### grid_offset

**Read:** [Vector](../concepts/Vector.md) · _read-only_ · _optional_

### grid_prototype

**Read:** [LuaEquipmentGridPrototype](../classes/LuaEquipmentGridPrototype.md) · _read-only_ · _optional_

The equipment grid prototype for this entity, if any.

### grid_size

**Read:** [Vector](../concepts/Vector.md) · _read-only_ · _optional_

### grounded_landing_search_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### growth_area_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### growth_grid_tile_size

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### growth_ticks

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### gui_mode

**Read:** `"all"` ∣ `"none"` ∣ `"admins"` · _read-only_ · _optional_

### gui_title_key

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

### guns

**Read:** dictionary[[string](../concepts/string.md) → [LuaItemPrototype](../classes/LuaItemPrototype.md)] · _read-only_ · _optional_

A mapping of the gun name to the gun prototype this prototype uses. `nil` if this entity prototype doesn't use guns.

### harvest_emissions

**Read:** dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] · _read-only_ · _optional_

A table of pollutants that this plant will release when it is harvested.

### has_belt_immunity

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this unit, car, or character prototype has belt immunity.

### has_direction

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### hatch_definitions

**Read:** array[[CargoHatchDefinition](../concepts/CargoHatchDefinition.md)] · _read-only_ · _optional_

### head_collection_radius

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### healing_per_tick

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

Amount this entity can heal per tick, if any.

### heat_buffer_prototype

**Read:** [LuaHeatBufferPrototype](../classes/LuaHeatBufferPrototype.md) · _read-only_ · _optional_

The heat buffer prototype this entity uses, if any.

### heat_energy_source_prototype

**Read:** [LuaHeatEnergySourcePrototype](../classes/LuaHeatEnergySourcePrototype.md) · _read-only_ · _optional_

The heat energy source prototype this entity uses, if any.

### heating_energy

**Read:** [double](../concepts/double.md) · _read-only_

The energy required to keep this entity from freezing. Zero energy means it doesn't freeze.

### heating_radius

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### height

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The height of this spider unit, spider vehicle or projectile.

### height_from_ground

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### held_items_display_count

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

### held_items_offset

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### held_items_spread

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### hide_resistances

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### hit_at_collision_position

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### hit_collision_mask

**Read:** [CollisionMask](../concepts/CollisionMask.md) · _read-only_ · _optional_

### icon_draw_specification

**Read:** [IconDrawSpecification](../concepts/IconDrawSpecification.md) · _read-only_

The definition of where and how the alt-mode icons of this entity should be drawn.

### icons_positioning

**Read:** array[[IconSequencePositioning](../concepts/IconSequencePositioning.md)] · _read-only_ · _optional_

The icon positioning for inventories of this entity, if defined.

### ignore_target_mask

**Read:** [TriggerTargetMask](../concepts/TriggerTargetMask.md) · _read-only_

### immune_to_all_impacts

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### immune_to_cliff_impacts

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### immune_to_rock_impacts

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### immune_to_tree_impacts

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### indexed_guns

**Read:** array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] · _read-only_ · _optional_

A vector of the gun prototypes of this car, spider vehicle, artillery wagon, or turret.

### infinite_depletion_resource_amount

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

Every time this infinite resource 'ticks' down, it is reduced by this amount. Meaningless if this isn't an infinite resource.

### infinite_resource

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this resource is infinite.

### ingredient_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The max number of ingredients this crafting machine prototype supports.

### initial_action

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### initial_flame_count

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

### initial_height

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### initial_lifetime

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### initial_speed

**Read:** [Vector](../concepts/Vector.md) · _read-only_ · _optional_

### initial_vertical_speed

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### input_connection_bounding_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_ · _optional_

### inserter_chases_belt_items

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

True if this inserter chases items on belts for pickup.

### inserter_drop_position

**Read:** [Vector](../concepts/Vector.md) · _read-only_ · _optional_

The drop position for this inserter.

### inserter_max_belt_stack_size

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

The max belt stack size for this inserter.

### inserter_pickup_position

**Read:** [Vector](../concepts/Vector.md) · _read-only_ · _optional_

The pickup position for this inserter.

### inserter_stack_size_bonus

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The built-in stack size bonus of this inserter prototype.

### instruments

**Read:** array[[ProgrammableSpeakerInstrument](../concepts/ProgrammableSpeakerInstrument.md)] · _read-only_ · _optional_

The instruments for this programmable speaker.

### inventory_properties

**Read:** [InventoryWithCustomStackSizeSpecification](../concepts/InventoryWithCustomStackSizeSpecification.md) · _read-only_ · _optional_

Properties of custom inventory. Only provided if `inventory_type` is `"with_custom_stack_size"`.

### inventory_size_quality_increase

**Read:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _read-only_ · _optional_

### inventory_type

**Read:** `"normal"` ∣ `"with_bar"` ∣ `"with_filters"` ∣ `"with_filters_and_bar"` ∣ `"with_weight_limit"` ∣ `"with_custom_stack_size"` · _read-only_ · _optional_

The inventory type this container or linked container uses.

### inventory_weight_limit

**Read:** [Weight](../concepts/Weight.md) · _read-only_ · _optional_

Weight limit of the inventory if inventory_type is `"with_weight_limit"`.

### investigating_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### is_building

**Read:** [boolean](../concepts/boolean.md) · _read-only_

These are the objects that are considered buildings:

- AccumulatorPrototype
- AgriculturalTowerPrototype
- ArtilleryTurretPrototype
- AsteroidCollectorPrototype
- BeaconPrototype
- BoilerPrototype
- BurnerGeneratorPrototype
- CargoBayPrototype
- CargoLandingPadPrototype
- CombinatorPrototype → ArithmeticCombinator, DeciderCombinator, SelectorCombinator
- ConstantCombinatorPrototype
- ContainerPrototype → LogisticContainer, InfinityContainer, TemporaryContainer
- CraftingMachinePrototype → AssemblingMachine, RocketSilo, Furnace
- DisplayPanelPrototype
- ElectricEnergyInterfacePrototype
- ElectricPolePrototype
- EnemySpawnerPrototype
- FusionGeneratorPrototype
- FusionReactorPrototype
- GatePrototype
- GeneratorPrototype
- HeatInterfacePrototype
- HeatPipePrototype
- InserterPrototype
- LabPrototype
- LampPrototype
- LightningAttractorPrototype
- LinkedContainerPrototype
- MarketPrototype
- MiningDrillPrototype
- OffshorePumpPrototype
- PipePrototype → InfinityPipe
- PipeToGroundPrototype
- PowerSwitchPrototype
- ProgrammableSpeakerPrototype
- ProxyContainerPrototype
- PumpPrototype
- RadarPrototype
- RailPrototype → CurvedRailA, ElevatedCurvedRailA, CurvedRailB, ElevatedCurvedRailB, HalfDiagonalRail, ElevatedHalfDiagonalRail, LegacyCurvedRail, LegacyStraightRail, RailRamp, StraightRail, ElevatedStraightRail
- RailSignalBasePrototype → RailChainSignal, RailSignal
- RailSupportPrototype
- ReactorPrototype
- RoboportPrototype
- SimpleEntityPrototype
- SimpleEntityWithOwnerPrototype → SimpleEntityWithForce
- SolarPanelPrototype
- SpacePlatformHubPrototype
- StorageTankPrototype
- ThrusterPrototype
- TrainStopPrototype
- TransportBeltConnectablePrototype → LaneSplitter, LinkedBelt, Loader1x1, Loader1x2, Splitter, TransportBelt, UndergroundBelt
- TurretPrototype → AmmoTurret, ElectricTurret, FluidTurret
- ValvePrototype
- WallPrototype

### is_entity_with_owner

**Read:** [boolean](../concepts/boolean.md) · _read-only_

True if this is entity-with-owner

### is_military_target

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

True if this entity-with-owner is military target

### item_pickup_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### items_to_place_this

**Read:** array[[ItemToPlace](../concepts/ItemToPlace.md)] · _read-only_ · _optional_

Items that when placed will produce this entity, if any. Construction bots will choose the first item in the list to build this entity.

### joint_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### lab_inputs

**Read:** array[[string](../concepts/string.md)] · _read-only_ · _optional_

The item prototype names that are the inputs of this lab prototype.

### lamp_energy_usage

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The lamp energy usage of this rocket silo prototype.

### launch_to_space_platforms

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### launch_wait_time

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

The rocket launch delay for this rocket silo prototype.

### leave_attacking_if_shoot_fails

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### life_time

**Read:** [uint16](../concepts/uint16.md) · _read-only_ · _optional_

### lifetime_increase_by

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### lifetime_increase_cooldown

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### lift_weight

**Read:** [Weight](../concepts/Weight.md) · _read-only_ · _optional_

### light_blinking_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The light blinking speed for this rocket silo prototype.

### limit_overlapping_particles

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### loader_adjustable_belt_stack_size

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

True if this loader supports a runtime-adjustable belt stack size.

### loader_max_belt_stack_size

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

The max belt stack size for this loader.

### loader_respect_insert_limits

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### loader_wait_for_full_stack

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

True if this loader will not drop items for which total amount is less than a full belt stack.

### logistic_mode

**Read:** `"requester"` ∣ `"active-provider"` ∣ `"passive-provider"` ∣ `"buffer"` ∣ `"storage"` ∣ `"none"` · _read-only_ · _optional_

The logistic mode of this logistic container.

### logistic_parameters

**Read:** table{charge_approach_distance, charging_distance, charging_energy, charging_station_count, charging_station_shift, charging_threshold_distance, construction_radius, logistic_radius, logistics_connection_distance, robot_limit, robot_vertical_acceleration, robots_shrink_when_entering_and_exiting, spawn_and_station_height, spawn_and_station_shadow_height_offset, stationing_offset, stationing_render_layer_swap_height} · _read-only_ · _optional_

The logistic parameters for this roboport.

### logistic_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The logistic radius for this roboport prototype.

### loot

**Read:** array[[ItemProduct](../concepts/ItemProduct.md)] · _read-only_ · _optional_

Loot that will be dropped when this entity is killed, if any.

### loot_pickup_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### manual_range_modifier

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The manual range modifier for this artillery turret or wagon prototype.

### map_color

**Read:** [Color](../concepts/Color.md) · _read-only_ · _optional_

The map color used when charting this entity if a friendly or enemy color isn't defined, if any.

### map_generator_bounding_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_

The bounding box used for map generator collision checking.

### map_grid

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### max_count_of_owned_defensive_units

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

Count of defensive enemies this spawner can sustain.

### max_count_of_owned_units

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

Count of enemies this spawner can sustain.

### max_darkness_to_spawn

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The maximum darkness at which this unit spawner can spawn entities.

### max_defensive_friends_around_to_spawn

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

How many defensive friendly units are required within the spawning_radius of this spawner for it to stop producing more units.

### max_friends_around_to_spawn

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

How many friendly units are required within the spawning_radius of this spawner for it to stop producing more units.

### max_item_product_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The max number of item products this crafting machine prototype supports.

### max_payload_size

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The cargo carrying capacity of this logistics or construction robot.

### max_payload_size_after_bonus

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The maximum possible cargo carrying capacity of this logistics or construction robot. Bonuses from technologies/forces can't increase the carrying capacity beyond this number.

### max_performance

**Read:** [ThrusterPerformancePoint](../concepts/ThrusterPerformancePoint.md) · _read-only_ · _optional_

### max_polyphony

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The maximum polyphony for this programmable speaker.

### max_pursue_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The maximum pursue distance of this unit prototype.

### max_records_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### max_richness_for_spawn_shift

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### max_separation_force

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### max_snap_to_train_stop_distance

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### max_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The max speed of this projectile or flying robot prototype.

### max_text_length

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### max_text_width

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### max_to_charge

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The maximum energy for this flying robot above which it won't try to recharge when stationing.

### max_underground_distance

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

The max underground distance for underground belts and underground pipes.

### maximum_corner_sliding_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### maximum_damage_multiplier

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### maximum_lifetime

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### maximum_spread_count

**Read:** [uint16](../concepts/uint16.md) · _read-only_ · _optional_

### maximum_temperature

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The maximum fluid temperature of this generator prototype.

### meltdown_action

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### min_darkness_to_spawn

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The minimum darkness at which this unit spawner can spawn entities.

### min_performance

**Read:** [ThrusterPerformancePoint](../concepts/ThrusterPerformancePoint.md) · _read-only_ · _optional_

### min_pursue_time

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The minimum pursue time of this unit prototype.

### min_to_charge

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The minimum energy for this flying robot before it tries to recharge.

### mineable_properties

**Read:** [MineableProperties](../concepts/MineableProperties.md) · _read-only_

Whether this entity is minable and what can be obtained by mining it.

### minimal_arm_swing_segment_retraction

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### minimum_resource_amount

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

Minimum amount of this resource.

### mining_drill_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The mining radius of this mining drill prototype.

### mining_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The mining speed of this mining drill/character prototype.

### module_inventory_size

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The module inventory size. `nil` if this entity doesn't support modules.

Returns the inventory size if this entity is of normal quality. Use [LuaEntityPrototype::get_inventory_size](../classes/LuaEntityPrototype.md#get-inventory-size) for other qualities.

### module_slots_quality_bonus

**Read:** dictionary[[QualityID](../concepts/QualityID.md) → [ItemStackIndex](../concepts/ItemStackIndex.md)] · _read-only_

### move_while_shooting

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this unit prototype can move while shooting.

### movement_modifier

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### movement_modifier_when_on_ground

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### neighbour_bonus

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### neighbour_connectable

**Read:** [NeighbourConnectable](../concepts/NeighbourConnectable.md) · _read-only_ · _optional_

### next_upgrade

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

The next upgrade for this entity, if any.

### normal_resource_amount

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The normal amount for this resource.

### not_buildable_if_no_rails

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### on_damage_tick_effect

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### on_fuel_added_action

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### open_door_trigger_effect

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### opened_collision_mask

**Read:** [CollisionMask](../concepts/CollisionMask.md) · _read-only_ · _optional_

### opening_speed

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### orientations

**Read:** [OrientedCliffPrototypeSet](../concepts/OrientedCliffPrototypeSet.md) · _read-only_ · _optional_

### output_connection_bounding_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_ · _optional_

### overkill_fraction

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### particle

**Read:** [LuaParticlePrototype](../classes/LuaParticlePrototype.md) · _read-only_ · _optional_

### particle_buffer_size

**Read:** [uint16](../concepts/uint16.md) · _read-only_ · _optional_

### particle_count

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

### particle_height

**Read:** [DeviatedValue](../concepts/DeviatedValue.md) · _read-only_ · _optional_

### particle_horizontal_speed

**Read:** [DeviatedValue](../concepts/DeviatedValue.md) · _read-only_ · _optional_

### particle_spawn_interval

**Read:** [uint16](../concepts/uint16.md) · _read-only_ · _optional_

### particle_spawn_timeout

**Read:** [uint16](../concepts/uint16.md) · _read-only_ · _optional_

### particle_time_before_start

**Read:** [DeviatedValue](../concepts/DeviatedValue.md) · _read-only_ · _optional_

### particle_time_to_live

**Read:** [DeviatedValue](../concepts/DeviatedValue.md) · _read-only_ · _optional_

### particle_vertical_acceleration

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### particle_vertical_speed

**Read:** [DeviatedValue](../concepts/DeviatedValue.md) · _read-only_ · _optional_

### passive_energy_usage

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### patrolling_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### patrolling_turn_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### per_lane_filters

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### perceived_performance

**Read:** [PerceivedPerformance](../concepts/PerceivedPerformance.md) · _read-only_ · _optional_

### piercing_damage

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### place_as_crater

**Read:** [CraterPlacementDefinition](../concepts/CraterPlacementDefinition.md) · _read-only_ · _optional_

### platform_repair_speed_modifier

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

Repair speed of entities is multiplied by this value when they are on a space platform with this hub prototype.

### platform_weight

**Read:** [Weight](../concepts/Weight.md) · _read-only_ · _optional_

Weight which this entity adds to total space platform weight when placed.

### prepare_with_no_ammo

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### preserve_contents_when_created

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### profile

**Read:** array[[double](../concepts/double.md)] · _read-only_ · _optional_

The beacon profile: extra multiplier applied to the effects received from beacon by the effect receiver based on amount of beacons that reach that effect receiver

### progress_to_create_smoke

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### protected_from_tile_building

**Read:** [boolean](../concepts/boolean.md) · _read-only_

True if this entity prototype should be included during tile collision checks with [LuaTilePrototype::check_collision_with_entities](../classes/LuaTilePrototype.md#check-collision-with-entities) enabled.

### pulse_duration

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### quality_affects_capacity

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### quality_affects_energy_usage

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### quality_affects_inventory_size

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### quality_affects_max_speed

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### quality_affects_mining_radius

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### quality_affects_module_slots

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### quality_affects_supply_area_distance

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### radar_range

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### radius

**Read:** [double](../concepts/double.md) · _read-only_

The radius of this entity prototype. The radius is defined as half the distance between the top left corner and bottom right corner of the collision box.

### radius_visualisation_specification

**Read:** [RadiusVisualisationSpecification](../concepts/RadiusVisualisationSpecification.md) · _read-only_ · _optional_

### raise_rocket_trigger

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### random_corpse_variation

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### random_growth_offset

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### randomize_planting_tile

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### range_from_player

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### reach_distance

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### reach_resource_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### recharge_minimum

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### regular_trigger_effect

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### regular_trigger_effect_frequency

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### related_rail

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

### related_underground_belt

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

### remains_when_mined

**Read:** array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_

The remains left behind when this entity is mined.

### remove_decoratives

**Read:** `"automatic"` ∣ `"true"` ∣ `"false"` · _read-only_

Whether this entity should remove decoratives that collide with it when this entity is built.

### remove_on_entity_placement

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### remove_on_tile_collision

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### remove_on_tile_placement

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### repair_speed_modifier

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

Repair-speed modifier for this entity, if any. Actual repair speed will be `tool_repair_speed * entity_repair_speed_modifier`.

### require_charge_to_mine

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If this robot with logistic interface requires it be charged to manually mine.

### require_resources_to_place

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If this drill requires minable resources before it can be placed.

### resistances

**Read:** dictionary[[string](../concepts/string.md) → [Resistance](../concepts/Resistance.md)] · _read-only_ · _optional_

List of resistances towards each damage type. It is a dictionary indexed by damage type names (see `data/base/prototypes/damage-type.lua`).

### resource_categories

**Read:** dictionary[[string](../concepts/string.md) → `true`] · _read-only_ · _optional_

The [resource categories](../classes/LuaResourceCategoryPrototype.md) this character or mining drill supports.

The value in the dictionary is meaningless and exists just to allow for easy lookup.

### resource_category

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

Name of the category of this resource.

During data stage, this property is named "category".

### resource_drain_rate_percent

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

The resource drain rate percent of this mining drill prototype.

### resource_patch_search_radius

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### respawn_time

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### result_units

**Read:** array[[UnitSpawnDefinition](../concepts/UnitSpawnDefinition.md)] · _read-only_ · _optional_

The result units and spawn points with weight and evolution factor for a biter spawner entity.

### reveal_map

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### revenge_attack_parameters

**Read:** [AttackParameters](../concepts/AttackParameters.md) · _read-only_ · _optional_

The revenge attack parameters for this entity, if any. These attack parameters are used in addition to [LuaEntityPrototype::attack_parameters](../classes/LuaEntityPrototype.md#attack-parameters) if the entity is attacking a target that has previously dealt damage to the entity.

### reversing_power_modifier

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### rewire_neighbours_when_destroying

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### rising_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The rising speed for this rocket silo rocket prototype.

### rocket_dying_explosion

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

### rocket_engine_starting_speed_modifier_per_quality_level

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### rocket_entity_prototype

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

The rocket entity prototype associated with this rocket silo prototype.

### rocket_parts_required

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The rocket parts required for this rocket silo prototype.

### rocket_parts_storage_cap

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### rocket_quick_relaunch_start_offset

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### rocket_rising_delay

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

The rocket rising delay for this rocket silo prototype.

### rocket_rising_speed_modifier_per_quality_level

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### rotatable

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### rotation_snap_angle

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The rotation snap angle of this car prototype.

### rotation_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The rotation speed of this car prototype.

### running_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The movement speed of this character prototype.

### scale_energy_usage

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### scale_fluid_usage

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this generator prototype scales fluid usage.

### science_pack_drain_rate_percent

**Read:** [uint8](../concepts/uint8.md) · _read-only_

How much science pack durability is required to research one science point.

### search_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### secondary_collision_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_ · _optional_

The secondary bounding box used for collision checking, if any. This is only used in rails and rail remnants.

### segment_engine

**Read:** [SegmentEngineSpecification](../concepts/SegmentEngineSpecification.md) · _read-only_ · _optional_

### selectable_in_game

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this entity selectable?

### selection_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_

The bounding box used for drawing selection.

### selection_priority

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The selection priority of this entity - a value between `0` and `255`.

### separation_force_factor

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### separation_range

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### shadow_slave_entity

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

### shoot_in_prepare_state

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### shooting_cursor_size

**Read:** [float](../concepts/float.md) · _read-only_

The cursor size used when shooting at this entity.

### shot_category

**Read:** [LuaAmmoCategoryPrototype](../classes/LuaAmmoCategoryPrototype.md) · _read-only_ · _optional_

### shots_per_flare

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### should_ground_target

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### show_fluid_visualization_when_in_cursor

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### shuffle_resources_to_mine

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### smoke

**Read:** [LuaTrivialSmokePrototype](../classes/LuaTrivialSmokePrototype.md) · _read-only_ · _optional_

### smoke_count

**Read:** [uint16](../concepts/uint16.md) · _read-only_ · _optional_

### smoke_sources

**Read:** array[[SmokeSource](../concepts/SmokeSource.md)] · _read-only_ · _optional_

### snap_to_spots_distance

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### solar_panel_performance_at_day

**Read:** [double](../concepts/double.md) · _read-only_

### solar_panel_performance_at_night

**Read:** [double](../concepts/double.md) · _read-only_

### solar_panel_solar_coefficient_property

**Read:** [LuaSurfacePropertyPrototype](../classes/LuaSurfacePropertyPrototype.md) · _read-only_

### source_offset

**Read:** [Vector](../concepts/Vector.md) · _read-only_ · _optional_

### source_variance

**Read:** [Vector](../concepts/Vector.md) · _read-only_ · _optional_

### spawn_blocked_trigger

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### spawn_cooldown

**Read:** table{max, min} · _read-only_ · _optional_

The spawning cooldown for this enemy spawner prototype.

### spawn_decoration

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### spawn_decorations_on_expansion

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### spawn_entity

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

### spawning_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

How far from the spawner can the units be spawned.

### spawning_spacing

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

What spaces should be between the spawned units.

### spawning_time_modifier

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The spawning time modifier of this unit prototype.

### special_neutral_target_damage

**Read:** [DamageParameters](../concepts/DamageParameters.md) · _read-only_ · _optional_

### speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The default speed of this flying robot, or unit.

### speed_modifier

**Read:** [Vector](../concepts/Vector.md) · _read-only_ · _optional_

### speed_multiplier_when_out_of_energy

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The speed multiplier when this flying robot is out of energy.

### spent_fluid

**Read:** [SpentFluidSpecification](../concepts/SpentFluidSpecification.md) · _read-only_ · _optional_

### spider_engine

**Read:** [SpiderEngineSpecification](../concepts/SpiderEngineSpecification.md) · _read-only_ · _optional_

### spread_delay

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### spread_delay_deviation

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### start_attacking_only_when_can_shoot

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### steering_settings

**Read:** [SteeringSettings](../concepts/SteeringSettings.md) · _read-only_ · _optional_

### sticker_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_

The bounding box used to attach sticker type entities.

### sticker_movement_modifiers

**Read:** table{target_movement_max_from, target_movement_max_to, target_movement_modifier_from, target_movement_modifier_to} · _read-only_ · _optional_

### sticker_vehicle_modifiers

**Read:** table{vehicle_friction_modifier_from, vehicle_friction_modifier_to, vehicle_speed_max_from, vehicle_speed_max_to, vehicle_speed_modifier_from, vehicle_speed_modifier_to} · _read-only_ · _optional_

### stickers_per_square_meter

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### stream_particle_horizontal_speed

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### stream_particle_horizontal_speed_deviation

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### strike_effect

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### support_range

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### supports_direction

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this entity prototype could possibly ever be rotated.

### surface_conditions

**Read:** array[[SurfaceCondition](../concepts/SurfaceCondition.md)] · _read-only_ · _optional_

The surface conditions required to build this entity.

### synced_footstep_particle_triggers

**Read:** dictionary[[LuaTilePrototype](../classes/LuaTilePrototype.md) → array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)]] · _read-only_ · _optional_

### tank_driving

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If this car prototype uses tank controls to drive.

### target_initial_position_only

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### target_position_deviation

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### target_temperature

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The target temperature of this boiler or fusion reactor prototype. If `nil` on a fusion reactor, the target temperature is the default temperature of the output fluid.

### terrain_friction_modifier

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The terrain friction modifier for this vehicle.

### territory_radius

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### tether_size

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### ticks_per_scan

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### ticks_to_keep_aiming_direction

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### ticks_to_keep_gun

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### ticks_to_stay_in_combat

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### tie_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### tile_buildability_rules

**Read:** array[[TileBuildabilityRule](../concepts/TileBuildabilityRule.md)] · _read-only_ · _optional_

### tile_height

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Specifies the tiling size of the entity, is used to decide, if the center should be in the center of the tile (odd tile size dimension) or on the tile border (even tile size dimension)

### tile_width

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Specifies the tiling size of the entity, is used to decide, if the center should be in the center of the tile (odd tile size dimension) or on the tile border (even tile size dimension)

### time_to_capture

**Read:** [MapTick](../concepts/MapTick.md) · _read-only_ · _optional_

### time_to_damage

**Read:** [uint16](../concepts/uint16.md) · _read-only_ · _optional_

### time_to_live

**Read:** [MapTick](../concepts/MapTick.md) · _read-only_

The time to live for this prototype or `0` if prototype doesn't have time_to_live or time_before_removed.

### timeout

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The time it takes this land mine to arm.

### timeout_to_close

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### tool_attack_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### tool_attack_result

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### torso_bob_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The torso bob speed of this spider vehicle prototype.

### torso_rotation_speed

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The torso rotation speed of this spider vehicle prototype.

### track_coverage_during_drag_building

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### track_particle_triggers

**Read:** dictionary[[LuaTilePrototype](../classes/LuaTilePrototype.md) → array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)]] · _read-only_

### transition_collision_mask

**Read:** [CollisionMask](../concepts/CollisionMask.md) · _read-only_ · _optional_

### tree_color_count

**Read:** [uint8](../concepts/uint8.md) · _read-only_ · _optional_

If it is a tree, return the number of colors it supports.

### tree_dying_factor

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### tree_removal_max_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### tree_removal_probability

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### trigger_collision_mask

**Read:** [CollisionMask](../concepts/CollisionMask.md) · _read-only_ · _optional_

The collision mask entities must collide with to make this landmine blow up.

### trigger_force

**Read:** [ForceCondition](../concepts/ForceCondition.md) · _read-only_ · _optional_

### trigger_interval

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### trigger_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### trigger_target_mask

**Read:** dictionary[[string](../concepts/string.md) → [boolean](../concepts/boolean.md)] · _read-only_

The trigger target mask for this entity prototype type.

The values in the dictionary are meaningless and exists just to allow the dictionary type for easy lookup.

### turn_radius

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### turn_smoothing

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### turn_speed

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### turning_speed_increases_exponentially_with_projectile_speed

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### turret_base_has_direction

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### turret_prepare_range

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### turret_range

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

The range of this turret.

### turret_rotation_speed

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The turret rotation speed of this prototype.

### two_direction_only

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### unpowered_arm_speed_scale

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### update_effects

**Read:** array[[TriggerEffectWithCooldown](../concepts/TriggerEffectWithCooldown.md)] · _read-only_ · _optional_

The trigger effects to run every tick when on cooldown.

### update_effects_while_enraged

**Read:** array[[TriggerEffectWithCooldown](../concepts/TriggerEffectWithCooldown.md)] · _read-only_ · _optional_

The trigger effects to run every tick when on cooldown while the owning [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) is enraged.

### use_damage_substitute

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### use_easter_egg

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### use_exact_mode

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this logistic container prototype uses exact mode

### use_mirroring

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### use_unloading_distance_limit

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### uses_alternative_behavior

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### uses_force_mining_productivity_bonus

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If this drill uses force productivity bonus

### uses_inserter_stack_size_bonus

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### uses_quality_drain_modifier

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this lab uses the quality drain modifier when consuming science packs.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### valve_mode

**Read:** [ValveMode](../concepts/ValveMode.md) · _read-only_ · _optional_

The mode of operation of this valve.

### valve_threshold

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The default threshold of this valve.

### vector_to_place_result

**Read:** [Vector](../concepts/Vector.md) · _read-only_ · _optional_

### vertical_selection_shift

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

Vertical selection shift used by rolling stocks. It affects selection box vertical position but is also used to shift rolling stock graphics along the rails to fine tune train's look.

### vision_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The vision distance of this unit prototype.

### void_energy_source_prototype

**Read:** [LuaVoidEnergySourcePrototype](../classes/LuaVoidEnergySourcePrototype.md) · _read-only_ · _optional_

The void energy source prototype this entity uses, if any.

### wait_for_full_hand

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### weight

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The weight of this vehicle prototype.

### width

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

## Methods

| Method | Summary |
| --- | --- |
| [get_attraction_range_elongation](#get-attraction-range-elongation) |  |
| [get_crafting_speed](#get-crafting-speed) | The crafting speed of this crafting-machine or character. |
| [get_duration](#get-duration) |  |
| [get_energy_distribution_efficiency](#get-energy-distribution-efficiency) |  |
| [get_fluid_capacity](#get-fluid-capacity) | Gets the fluid capacity of this entity or 0 if this entity doesn't support fluids. |
| [get_fluid_usage_per_tick](#get-fluid-usage-per-tick) | The fluid usage of this generator, fusion generator or fusion reactor prototype. |
| [get_inserter_extension_speed](#get-inserter-extension-speed) | The extension speed of this inserter. |
| [get_inserter_rotation_speed](#get-inserter-rotation-speed) | The rotation speed of this inserter. |
| [get_inventory_size](#get-inventory-size) | Gets the base size of the given inventory on this entity or `nil` if the given inventory doesn't exist. |
| [get_inventory_size_bonus](#get-inventory-size-bonus) |  |
| [get_max_circuit_wire_distance](#get-max-circuit-wire-distance) | The maximum circuit wire distance for this entity. 0 if the entity doesn't support circuit wires. |
| [get_max_distance_of_nearby_sector_revealed](#get-max-distance-of-nearby-sector-revealed) | The radius of the area constantly revealed by this radar, or cargo landing pad, in chunks. |
| [get_max_distance_of_sector_revealed](#get-max-distance-of-sector-revealed) | The radius of the area this radar can chart, in chunks. |
| [get_max_energy](#get-max-energy) | The max energy for this flying robot prototype. |
| [get_max_energy_production](#get-max-energy-production) | The theoretical maximum energy production for this entity. |
| [get_max_energy_usage](#get-max-energy-usage) | The theoretical maximum energy usage for this entity. |
| [get_max_health](#get-max-health) | Max health of this entity. Will be `0` if this is not an entity with health. |
| [get_max_power_output](#get-max-power-output) | The maximum power output of this burner generator or generator prototype. |
| [get_max_speed](#get-max-speed) | The maximum speed of this rolling stock if defined. |
| [get_max_wire_distance](#get-max-wire-distance) | The maximum wire distance for this entity. 0 if the entity doesn't support wires. |
| [get_mining_drill_radius](#get-mining-drill-radius) | The mining radius of this mining drill prototype. |
| [get_pumping_speed](#get-pumping-speed) | The pumping speed of this offshore pump or normal pump. |
| [get_researching_speed](#get-researching-speed) | The base researching speed of this lab prototype. |
| [get_supply_area_distance](#get-supply-area-distance) | The supply area of this electric pole or beacon prototype. |
| [get_valve_flow_rate](#get-valve-flow-rate) | The maximum flow rate through this valve. |
| [has_flag](#has-flag) | Test whether this entity prototype has a certain flag set. |

### get_attraction_range_elongation

`get_attraction_range_elongation(quality)`

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_crafting_speed

`get_crafting_speed(quality)`

The crafting speed of this crafting-machine or character.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)

### get_duration

`get_duration(quality)`

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [uint32](../concepts/uint32.md) _(optional)_

### get_energy_distribution_efficiency

`get_energy_distribution_efficiency(quality)`

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_fluid_capacity

`get_fluid_capacity(quality)`

Gets the fluid capacity of this entity or 0 if this entity doesn't support fluids.

Crafting machines will report 0 due to their fluid capacity being whatever a given recipe needs.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)

### get_fluid_usage_per_tick

`get_fluid_usage_per_tick(quality)`

The fluid usage of this generator, fusion generator or fusion reactor prototype.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_inserter_extension_speed

`get_inserter_extension_speed(quality)`

The extension speed of this inserter.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_inserter_rotation_speed

`get_inserter_rotation_speed(quality)`

The rotation speed of this inserter.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_inventory_size

`get_inventory_size(index, quality)`

Gets the base size of the given inventory on this entity or `nil` if the given inventory doesn't exist.

#### Parameters

##### index

**Type:** [defines.inventory](../defines/defines.md)

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

Defaults to `"normal"`.

#### Return values

- [ItemStackIndex](../concepts/ItemStackIndex.md) _(optional)_

### get_inventory_size_bonus

`get_inventory_size_bonus(quality)`

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [ItemStackIndex](../concepts/ItemStackIndex.md) _(optional)_

### get_max_circuit_wire_distance

`get_max_circuit_wire_distance(quality)`

The maximum circuit wire distance for this entity. 0 if the entity doesn't support circuit wires.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)

### get_max_distance_of_nearby_sector_revealed

`get_max_distance_of_nearby_sector_revealed(quality)`

The radius of the area constantly revealed by this radar, or cargo landing pad, in chunks.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [uint32](../concepts/uint32.md) _(optional)_

### get_max_distance_of_sector_revealed

`get_max_distance_of_sector_revealed(quality)`

The radius of the area this radar can chart, in chunks.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [uint32](../concepts/uint32.md) _(optional)_

### get_max_energy

`get_max_energy(quality)`

The max energy for this flying robot prototype.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_max_energy_production

`get_max_energy_production(quality)`

The theoretical maximum energy production for this entity.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)

### get_max_energy_usage

`get_max_energy_usage(quality)`

The theoretical maximum energy usage for this entity.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)

### get_max_health

`get_max_health(quality)`

Max health of this entity. Will be `0` if this is not an entity with health.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [float](../concepts/float.md)

### get_max_power_output

`get_max_power_output(quality)`

The maximum power output of this burner generator or generator prototype.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_max_speed

`get_max_speed(quality)`

The maximum speed of this rolling stock if defined.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_max_wire_distance

`get_max_wire_distance(quality)`

The maximum wire distance for this entity. 0 if the entity doesn't support wires.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)

### get_mining_drill_radius

`get_mining_drill_radius(quality)`

The mining radius of this mining drill prototype.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_pumping_speed

`get_pumping_speed(quality)`

The pumping speed of this offshore pump or normal pump.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)

### get_researching_speed

`get_researching_speed(quality)`

The base researching speed of this lab prototype.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_supply_area_distance

`get_supply_area_distance(quality)`

The supply area of this electric pole or beacon prototype.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)

### get_valve_flow_rate

`get_valve_flow_rate(quality)`

The maximum flow rate through this valve.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)

### has_flag

`has_flag(flag)`

Test whether this entity prototype has a certain flag set.

#### Parameters

##### flag

**Type:** [EntityPrototypeFlag](../concepts/EntityPrototypeFlag.md)

The flag to test.

#### Return values

- [boolean](../concepts/boolean.md) — `true` if this prototype has the given flag set.
