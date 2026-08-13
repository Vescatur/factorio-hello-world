# RoboportPrototype

_prototype_

**Prototype type string:** `type = "roboport"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [roboport](https://wiki.factorio.com/Roboport).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [base](#base) | [Sprite](../types/Sprite.md) | yes |
| [base_animation](#base-animation) | [Animation](../types/Animation.md) | yes |
| [base_patch](#base-patch) | [Sprite](../types/Sprite.md) | yes |
| [charge_approach_distance](#charge-approach-distance) | [float](../types/float.md) |  |
| [charging_distance](#charging-distance) | [float](../types/float.md) | yes |
| [charging_energy](#charging-energy) | [Energy](../types/Energy.md) |  |
| [charging_offsets](#charging-offsets) | array[[Vector](../types/Vector.md)] | yes |
| [charging_station_count](#charging-station-count) | [uint32](../types/uint32.md) | yes |
| [charging_station_count_affected_by_quality](#charging-station-count-affected-by-quality) | [boolean](../types/boolean.md) | yes |
| [charging_station_shift](#charging-station-shift) | [Vector](../types/Vector.md) | yes |
| [charging_threshold_distance](#charging-threshold-distance) | [float](../types/float.md) | yes |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [close_door_trigger_effect](#close-door-trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [construction_radius](#construction-radius) | [float](../types/float.md) |  |
| [default_available_construction_output_signal](#default-available-construction-output-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_available_logistic_output_signal](#default-available-logistic-output-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_roboport_count_output_signal](#default-roboport-count-output-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_total_construction_output_signal](#default-total-construction-output-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_total_logistic_output_signal](#default-total-logistic-output-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [door_animation_down](#door-animation-down) | [Animation](../types/Animation.md) | yes |
| [door_animation_up](#door-animation-up) | [Animation](../types/Animation.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_construction_radius_visualization](#draw-construction-radius-visualization) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [draw_logistic_radius_visualization](#draw-logistic-radius-visualization) | [boolean](../types/boolean.md) | yes |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md) |  |
| [energy_usage](#energy-usage) | [Energy](../types/Energy.md) |  |
| [frozen_patch](#frozen-patch) | [Sprite](../types/Sprite.md) | yes |
| [logistics_connection_distance](#logistics-connection-distance) | [float](../types/float.md) | yes |
| [logistics_radius](#logistics-radius) | [float](../types/float.md) |  |
| [material_slots_count](#material-slots-count) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [max_logistic_slots](#max-logistic-slots) | [LogisticFilterIndex](../types/LogisticFilterIndex.md) | yes |
| [open_door_trigger_effect](#open-door-trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [radar_range](#radar-range) | [uint32](../types/uint32.md) | yes |
| [radar_visualisation_color](#radar-visualisation-color) | [Color](../types/Color.md) | yes |
| [recharge_minimum](#recharge-minimum) | [Energy](../types/Energy.md) |  |
| [recharging_animation](#recharging-animation) | [Animation](../types/Animation.md) | yes |
| [recharging_light](#recharging-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [render_recharge_icon](#render-recharge-icon) | [boolean](../types/boolean.md) | yes |
| [request_to_open_door_timeout](#request-to-open-door-timeout) | [uint32](../types/uint32.md) |  |
| [robot_limit](#robot-limit) | [ItemCountType](../types/ItemCountType.md) | yes |
| [robot_slots_count](#robot-slots-count) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [robot_vertical_acceleration](#robot-vertical-acceleration) | [float](../types/float.md) | yes |
| [robots_shrink_when_entering_and_exiting](#robots-shrink-when-entering-and-exiting) | [boolean](../types/boolean.md) | yes |
| [spawn_and_station_height](#spawn-and-station-height) | [float](../types/float.md) |  |
| [spawn_and_station_shadow_height_offset](#spawn-and-station-shadow-height-offset) | [float](../types/float.md) | yes |
| [stationing_offset](#stationing-offset) | [Vector](../types/Vector.md) | yes |
| [stationing_render_layer_swap_height](#stationing-render-layer-swap-height) | [float](../types/float.md) | yes |

### base

**Type:** [Sprite](../types/Sprite.md) · _optional_

### base_animation

**Type:** [Animation](../types/Animation.md) · _optional_

The animation played when the roboport is idle.

### base_patch

**Type:** [Sprite](../types/Sprite.md) · _optional_

### charge_approach_distance

**Type:** [float](../types/float.md)

The distance (in tiles) from the roboport at which robots will wait to charge. Notably, if the robot is already in range, then it will simply wait at its current position.

### charging_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### charging_energy

**Type:** [Energy](../types/Energy.md)

The maximum power provided to each charging station.

**Example:**

```
charging_energy = "1000kW"
```

### charging_offsets

**Type:** array[[Vector](../types/Vector.md)] · _optional_

The offsets from the center of the roboport at which robots will charge. Only used if `charging_station_count` is equal to 0.

### charging_station_count

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

How many charging points this roboport has. If this is 0, the length of the charging_offsets table is used to calculate the charging station count.

### charging_station_count_affected_by_quality

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### charging_station_shift

**Type:** [Vector](../types/Vector.md) · _optional_

### charging_threshold_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Unused.

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### close_door_trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### construction_radius

**Type:** [float](../types/float.md)

Can't be negative.

### default_available_construction_output_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_available_logistic_output_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_roboport_count_output_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_total_construction_output_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_total_logistic_output_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### door_animation_down

**Type:** [Animation](../types/Animation.md) · _optional_

### door_animation_up

**Type:** [Animation](../types/Animation.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_construction_radius_visualization

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_logistic_radius_visualization

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md)

The roboport's energy source.

### energy_usage

**Type:** [Energy](../types/Energy.md)

The amount of energy the roboport uses when idle.

**Example:**

```
energy_usage = "50kW"
```

### frozen_patch

**Type:** [Sprite](../types/Sprite.md) · _optional_

### logistics_connection_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `value of `logistics_radius``

Must be >= `logistics_radius`.

### logistics_radius

**Type:** [float](../types/float.md)

Can't be negative.

### material_slots_count

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

The number of repair pack slots in the roboport.

### max_logistic_slots

**Type:** [LogisticFilterIndex](../types/LogisticFilterIndex.md) · _optional_

### open_door_trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### radar_range

**Type:** [uint32](../types/uint32.md) · _optional_

In chunks. The radius of how many chunks this roboport charts around itself. Defaults to the max of logistic range or construction range rounded up to chunks.

### radar_visualisation_color

**Type:** [Color](../types/Color.md) · _optional_

### recharge_minimum

**Type:** [Energy](../types/Energy.md)

Minimum charge that the roboport has to have after a blackout (0 charge/buffered energy) to begin working again. Additionally, freshly placed roboports will have their energy buffer filled with `0.25 × recharge_minimum` energy.

Must be larger than or equal to `energy_usage` otherwise during low power the roboport will toggle on and off every tick.

**Example:**

```
recharge_minimum = "40MJ"
```

### recharging_animation

**Type:** [Animation](../types/Animation.md) · _optional_

The animation played at each charging point when a robot is charging there.

### recharging_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

The light emitted when charging a robot.

### render_recharge_icon

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether to render the [no charge](../prototypes/UtilitySprites.md#recharge-icon) icon if the roboport has less energy than `recharge_minimum` in its internal buffer and is recovering from a blackout.

### request_to_open_door_timeout

**Type:** [uint32](../types/uint32.md)

### robot_limit

**Type:** [ItemCountType](../types/ItemCountType.md) · _optional_ · **Default:** `max uint`

Unused.

### robot_slots_count

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

The number of robot slots in the roboport.

### robot_vertical_acceleration

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.01}`

### robots_shrink_when_entering_and_exiting

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### spawn_and_station_height

**Type:** [float](../types/float.md)

Presumably states the height of the charging stations and thus an additive offset for the charging_offsets.

### spawn_and_station_shadow_height_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### stationing_offset

**Type:** [Vector](../types/Vector.md) · _optional_

The offset from the center of the roboport at which robots will enter and exit.

### stationing_render_layer_swap_height

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.87}`

When robot ascends or descends to this roboport, at which height is should switch between `"air-object"` and `"object"` [render layer](../types/RenderLayer.md).
