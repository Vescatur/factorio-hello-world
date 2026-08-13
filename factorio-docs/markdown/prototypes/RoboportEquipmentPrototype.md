# RoboportEquipmentPrototype

_prototype_

**Prototype type string:** `type = "roboport-equipment"`

**Inherits from:** [EquipmentPrototype](../prototypes/EquipmentPrototype.md)

Used by [personal roboport](https://wiki.factorio.com/Personal_roboport).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [burner](#burner) | [BurnerEnergySource](../types/BurnerEnergySource.md) | yes |
| [charge_approach_distance](#charge-approach-distance) | [float](../types/float.md) |  |
| [charging_distance](#charging-distance) | [float](../types/float.md) | yes |
| [charging_energy](#charging-energy) | [Energy](../types/Energy.md) |  |
| [charging_offsets](#charging-offsets) | array[[Vector](../types/Vector.md)] | yes |
| [charging_station_count](#charging-station-count) | [uint32](../types/uint32.md) | yes |
| [charging_station_count_affected_by_quality](#charging-station-count-affected-by-quality) | [boolean](../types/boolean.md) | yes |
| [charging_station_shift](#charging-station-shift) | [Vector](../types/Vector.md) | yes |
| [charging_threshold_distance](#charging-threshold-distance) | [float](../types/float.md) | yes |
| [construction_radius](#construction-radius) | [float](../types/float.md) |  |
| [draw_construction_radius_visualization](#draw-construction-radius-visualization) | [boolean](../types/boolean.md) | yes |
| [draw_logistic_radius_visualization](#draw-logistic-radius-visualization) | [boolean](../types/boolean.md) | yes |
| [power](#power) | [Energy](../types/Energy.md) | yes |
| [recharging_animation](#recharging-animation) | [Animation](../types/Animation.md) | yes |
| [recharging_light](#recharging-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [robot_limit](#robot-limit) | [ItemCountType](../types/ItemCountType.md) | yes |
| [robot_vertical_acceleration](#robot-vertical-acceleration) | [float](../types/float.md) | yes |
| [robots_shrink_when_entering_and_exiting](#robots-shrink-when-entering-and-exiting) | [boolean](../types/boolean.md) | yes |
| [spawn_and_station_height](#spawn-and-station-height) | [float](../types/float.md) |  |
| [spawn_and_station_shadow_height_offset](#spawn-and-station-shadow-height-offset) | [float](../types/float.md) | yes |
| [spawn_minimum](#spawn-minimum) | [Energy](../types/Energy.md) | yes |
| [stationing_offset](#stationing-offset) | [Vector](../types/Vector.md) | yes |
| [stationing_render_layer_swap_height](#stationing-render-layer-swap-height) | [float](../types/float.md) | yes |

### burner

**Type:** [BurnerEnergySource](../types/BurnerEnergySource.md) · _optional_

Add this is if the roboport should be fueled directly instead of using power from the equipment grid.

### charge_approach_distance

**Type:** [float](../types/float.md)

Presumably, the distance from the roboport at which robots will wait to charge.

### charging_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### charging_energy

**Type:** [Energy](../types/Energy.md)

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

Distance in tiles. This defines how far away a robot can be from the charging spot and still be charged, however the bot is still required to reach a charging spot in the first place.

### construction_radius

**Type:** [float](../types/float.md)

Can't be negative.

### draw_construction_radius_visualization

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_logistic_radius_visualization

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Unused, as roboport equipment does not have a logistic radius that could be drawn.

### power

**Type:** [Energy](../types/Energy.md) · _optional_

Mandatory if `burner` is defined.

The size of the buffer of the burner energy source, so effectively the amount of power that the energy source can produce per tick.

### recharging_animation

**Type:** [Animation](../types/Animation.md) · _optional_

The animation played at each charging point when a robot is charging there.

### recharging_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

The light emitted when charging a robot.

### robot_limit

**Type:** [ItemCountType](../types/ItemCountType.md) · _optional_ · **Default:** `max uint`

How many robots can exist in the network (cumulative).

### robot_vertical_acceleration

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.01}`

### robots_shrink_when_entering_and_exiting

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### spawn_and_station_height

**Type:** [float](../types/float.md)

Presumably states the height of the charging stations and thus an additive offset for the charging_offsets.

### spawn_and_station_shadow_height_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### spawn_minimum

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `0.2 * energy_source.buffer_capacity`

Minimum amount of energy that needs to available inside the roboport's buffer so that robots can be spawned.

### stationing_offset

**Type:** [Vector](../types/Vector.md) · _optional_

The offset from the center of the roboport at which robots will enter and exit.

### stationing_render_layer_swap_height

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.87}`

When robot ascends or descends to this roboport, at which height is should switch between `"air-object"` and `"object"` [render layer](../types/RenderLayer.md).
