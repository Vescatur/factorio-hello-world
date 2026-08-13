# RocketSiloPrototype

_prototype_

**Prototype type string:** `type = "rocket-silo"`

**Inherits from:** [AssemblingMachinePrototype](../prototypes/AssemblingMachinePrototype.md)

A [rocket silo](https://wiki.factorio.com/Rocket_silo).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [active_energy_usage](#active-energy-usage) | [Energy](../types/Energy.md) |  |
| [alarm_sound](#alarm-sound) | [Sound](../types/Sound.md) | yes |
| [alarm_trigger](#alarm-trigger) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [arm_01_back_animation](#arm-01-back-animation) | [Animation](../types/Animation.md) | yes |
| [arm_02_right_animation](#arm-02-right-animation) | [Animation](../types/Animation.md) | yes |
| [arm_03_front_animation](#arm-03-front-animation) | [Animation](../types/Animation.md) | yes |
| [arms_speed_modifier_per_quality_level](#arms-speed-modifier-per-quality-level) | [double](../types/double.md) | yes |
| [base_day_sprite](#base-day-sprite) | [Sprite](../types/Sprite.md) | yes |
| [base_engine_light](#base-engine-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [base_front_frozen](#base-front-frozen) | [Sprite](../types/Sprite.md) | yes |
| [base_front_sprite](#base-front-sprite) | [Sprite](../types/Sprite.md) | yes |
| [base_frozen](#base-frozen) | [Sprite](../types/Sprite.md) | yes |
| [base_light](#base-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [base_night_sprite](#base-night-sprite) | [Sprite](../types/Sprite.md) | yes |
| [can_launch_without_landing_pads](#can-launch-without-landing-pads) | [boolean](../types/boolean.md) | yes |
| [cargo_station_parameters](#cargo-station-parameters) | [CargoStationParameters](../types/CargoStationParameters.md) |  |
| [clamps_off_sound](#clamps-off-sound) | [Sound](../types/Sound.md) | yes |
| [clamps_off_trigger](#clamps-off-trigger) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [clamps_on_sound](#clamps-on-sound) | [Sound](../types/Sound.md) | yes |
| [clamps_on_trigger](#clamps-on-trigger) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [door_back_frozen](#door-back-frozen) | [Sprite](../types/Sprite.md) | yes |
| [door_back_open_offset](#door-back-open-offset) | [Vector](../types/Vector.md) |  |
| [door_back_sprite](#door-back-sprite) | [Sprite](../types/Sprite.md) | yes |
| [door_front_frozen](#door-front-frozen) | [Sprite](../types/Sprite.md) | yes |
| [door_front_open_offset](#door-front-open-offset) | [Vector](../types/Vector.md) |  |
| [door_front_sprite](#door-front-sprite) | [Sprite](../types/Sprite.md) | yes |
| [door_opening_speed](#door-opening-speed) | [double](../types/double.md) |  |
| [doors_sound](#doors-sound) | [Sound](../types/Sound.md) | yes |
| [doors_trigger](#doors-trigger) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [hole_clipping_box](#hole-clipping-box) | [BoundingBox](../types/BoundingBox.md) |  |
| [hole_frozen](#hole-frozen) | [Sprite](../types/Sprite.md) | yes |
| [hole_light_sprite](#hole-light-sprite) | [Sprite](../types/Sprite.md) | yes |
| [hole_sprite](#hole-sprite) | [Sprite](../types/Sprite.md) | yes |
| [lamp_energy_usage](#lamp-energy-usage) | [Energy](../types/Energy.md) |  |
| [launch_to_space_platforms](#launch-to-space-platforms) | [boolean](../types/boolean.md) | yes |
| [launch_wait_time](#launch-wait-time) | [uint8](../types/uint8.md) | yes |
| [lift_weight](#lift-weight) | [Weight](../types/Weight.md) | yes |
| [light_blinking_speed](#light-blinking-speed) | [double](../types/double.md) |  |
| [logistic_trash_inventory_size](#logistic-trash-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [quick_alarm_sound](#quick-alarm-sound) | [Sound](../types/Sound.md) | yes |
| [raise_rocket_sound](#raise-rocket-sound) | [Sound](../types/Sound.md) | yes |
| [raise_rocket_trigger](#raise-rocket-trigger) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [red_lights_back_sprites](#red-lights-back-sprites) | [Sprite](../types/Sprite.md) | yes |
| [red_lights_front_sprites](#red-lights-front-sprites) | [Sprite](../types/Sprite.md) | yes |
| [render_not_in_network_icon](#render-not-in-network-icon) | [boolean](../types/boolean.md) | yes |
| [robot_door](#robot-door) | [RobotDoorSpecification](../types/RobotDoorSpecification.md) | yes |
| [rocket_engine_starting_speed_modifier_per_quality_level](#rocket-engine-starting-speed-modifier-per-quality-level) | [double](../types/double.md) | yes |
| [rocket_entity](#rocket-entity) | [EntityID](../types/EntityID.md) |  |
| [rocket_glow_overlay_sprite](#rocket-glow-overlay-sprite) | [Sprite](../types/Sprite.md) | yes |
| [rocket_parts_required](#rocket-parts-required) | [uint32](../types/uint32.md) |  |
| [rocket_parts_storage_cap](#rocket-parts-storage-cap) | [uint32](../types/uint32.md) | yes |
| [rocket_quick_relaunch_start_offset](#rocket-quick-relaunch-start-offset) | [double](../types/double.md) |  |
| [rocket_rising_delay](#rocket-rising-delay) | [uint8](../types/uint8.md) | yes |
| [rocket_rising_speed_modifier_per_quality_level](#rocket-rising-speed-modifier-per-quality-level) | [double](../types/double.md) | yes |
| [rocket_shadow_overlay_sprite](#rocket-shadow-overlay-sprite) | [Sprite](../types/Sprite.md) | yes |
| [satellite_animation](#satellite-animation) | [Animation](../types/Animation.md) | yes |
| [satellite_shadow_animation](#satellite-shadow-animation) | [Animation](../types/Animation.md) | yes |
| [shadow_sprite](#shadow-sprite) | [Sprite](../types/Sprite.md) | yes |
| [silo_fade_out_end_distance](#silo-fade-out-end-distance) | [double](../types/double.md) |  |
| [silo_fade_out_start_distance](#silo-fade-out-start-distance) | [double](../types/double.md) |  |
| [times_to_blink](#times-to-blink) | [uint8](../types/uint8.md) |  |
| [to_be_inserted_to_rocket_inventory_size](#to-be-inserted-to-rocket-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |

### active_energy_usage

**Type:** [Energy](../types/Energy.md)

Additional energy used during the following parts of the [launch sequence](../defines/defines.md): doors_opening, rocket_rising, arms_advance, engine_starting, arms_retract, doors_closing.

### alarm_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played when switching into the [lights_blinking_open](../defines/defines.md) state.

### alarm_trigger

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

Applied when switching into the [lights_blinking_open](../defines/defines.md) state.

### arm_01_back_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### arm_02_right_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### arm_03_front_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### arms_speed_modifier_per_quality_level

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be >= 0.

### base_day_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### base_engine_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### base_front_frozen

**Type:** [Sprite](../types/Sprite.md) · _optional_

### base_front_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### base_frozen

**Type:** [Sprite](../types/Sprite.md) · _optional_

### base_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### base_night_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

Drawn instead of `base_day_sprite` during the night, that is when [LuaSurface::darkness](../classes/LuaSurface.md#darkness) is larger than 0.3.

### can_launch_without_landing_pads

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### cargo_station_parameters

**Type:** [CargoStationParameters](../types/CargoStationParameters.md)

Must have exactly one entry in [CargoStationParameters::hatch_definitions](../types/CargoStationParameters.md#hatch-definitions).

### clamps_off_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played when switching into the [arms_retract](../defines/defines.md) state.

### clamps_off_trigger

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

Applied when switching into the [arms_retract](../defines/defines.md) state.

### clamps_on_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played when switching into the [arms_advance](../defines/defines.md) state.

### clamps_on_trigger

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

Applied when switching into the [arms_advance](../defines/defines.md) state.

### door_back_frozen

**Type:** [Sprite](../types/Sprite.md) · _optional_

### door_back_open_offset

**Type:** [Vector](../types/Vector.md)

### door_back_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### door_front_frozen

**Type:** [Sprite](../types/Sprite.md) · _optional_

### door_front_open_offset

**Type:** [Vector](../types/Vector.md)

### door_front_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### door_opening_speed

**Type:** [double](../types/double.md)

The inverse of the duration in ticks of [doors_opening](../defines/defines.md) and [closing](../defines/defines.md).

**Example:**

```
door_opening_speed = 1 / (4 * 60) -- doors opening and closing takes 4 seconds
```

### doors_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played when switching into the [doors_opening](../defines/defines.md) and [doors_closing](../defines/defines.md) states.

### doors_trigger

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

Applied when switching into the [doors_opening](../defines/defines.md) and [doors_closing](../defines/defines.md) states.

### hole_clipping_box

**Type:** [BoundingBox](../types/BoundingBox.md)

### hole_frozen

**Type:** [Sprite](../types/Sprite.md) · _optional_

### hole_light_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### hole_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### lamp_energy_usage

**Type:** [Energy](../types/Energy.md)

May be 0.

Additional energy used during the night, that is when [LuaSurface::darkness](../classes/LuaSurface.md#darkness) is larger than 0.3.

### launch_to_space_platforms

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Enables 'Space Age' functionality for this rocket silo, allowing it to supply space platforms.

### launch_wait_time

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 120}`

The time to wait in the [launch_started](../defines/defines.md) state before switching to [engine_starting](../defines/defines.md).

### lift_weight

**Type:** [Weight](../types/Weight.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1000000}`

When `launch_to_space_platforms` is false, the inventory has no weight restrictions, so this value is ignored.

### light_blinking_speed

**Type:** [double](../types/double.md)

The inverse of the duration in ticks of [lights_blinking_open](../defines/defines.md) and [lights_blinking_close](../defines/defines.md).

**Example:**

```
light_blinking_speed = 1 / (2 * 60) -- lights blinking takes 120 ticks
```

### logistic_trash_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### quick_alarm_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played when switching from [rocket_flying](../defines/defines.md) into the [doors_opened](../defines/defines.md) state when a quick follow-up rocket is ready.

### raise_rocket_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played when switching into the [rocket_rising](../defines/defines.md) state.

### raise_rocket_trigger

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

Applied when switching into the [rocket_rising](../defines/defines.md) state.

### red_lights_back_sprites

**Type:** [Sprite](../types/Sprite.md) · _optional_

Drawn from the start of the [lights_blinking_open](../defines/defines.md) state until the end of the [lights_blinking_close](../defines/defines.md) state.

### red_lights_front_sprites

**Type:** [Sprite](../types/Sprite.md) · _optional_

Drawn from the start of the [lights_blinking_open](../defines/defines.md) state until the end of the [lights_blinking_close](../defines/defines.md) state.

### render_not_in_network_icon

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the "no network" icon should be rendered on this entity if the entity is not within a logistics network.

### robot_door

**Type:** [RobotDoorSpecification](../types/RobotDoorSpecification.md) · _optional_

### rocket_engine_starting_speed_modifier_per_quality_level

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be >= 0.

### rocket_entity

**Type:** [EntityID](../types/EntityID.md)

Name of a [RocketSiloRocketPrototype](../prototypes/RocketSiloRocketPrototype.md).

### rocket_glow_overlay_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### rocket_parts_required

**Type:** [uint32](../types/uint32.md)

The number of crafts that must complete to produce a rocket. This includes bonus crafts from productivity. Recipe products are ignored.

### rocket_parts_storage_cap

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `Value of `rocket_parts_required``

Must be at least `rocket_parts_required`.

### rocket_quick_relaunch_start_offset

**Type:** [double](../types/double.md)

### rocket_rising_delay

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 30}`

The time to wait in the [doors_opened](../defines/defines.md) state before switching to [rocket_rising](../defines/defines.md).

### rocket_rising_speed_modifier_per_quality_level

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be >= 0.

### rocket_shadow_overlay_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### satellite_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### satellite_shadow_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### shadow_sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### silo_fade_out_end_distance

**Type:** [double](../types/double.md)

### silo_fade_out_start_distance

**Type:** [double](../types/double.md)

### times_to_blink

**Type:** [uint8](../types/uint8.md)

How many times the `red_lights_back_sprites` and `red_lights_front_sprites` should blink during [lights_blinking_open](../defines/defines.md) and [lights_blinking_close](../defines/defines.md).

Does not affect the duration of the launch sequence.

### to_be_inserted_to_rocket_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

When `launch_to_space_platforms` is true, the inventory has dynamic size and is weight-restricted, so this value is ignored.
