# CombinatorPrototype

_prototype_ · **abstract**

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Abstract base type for decider and arithmetic combinators.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [active_energy_usage](#active-energy-usage) | [Energy](../types/Energy.md) |  |
| [activity_led_hold_time](#activity-led-hold-time) | [uint8](../types/uint8.md) | yes |
| [activity_led_light](#activity-led-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [activity_led_light_offsets](#activity-led-light-offsets) | tuple[[Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md)] |  |
| [activity_led_sprites](#activity-led-sprites) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [emissions_per_second](#emissions-per-second) | dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] | yes |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md) |  |
| [frozen_patch](#frozen-patch) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [input_connection_bounding_box](#input-connection-bounding-box) | [BoundingBox](../types/BoundingBox.md) |  |
| [input_connection_points](#input-connection-points) | tuple[[WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md)] |  |
| [output_connection_bounding_box](#output-connection-bounding-box) | [BoundingBox](../types/BoundingBox.md) |  |
| [output_connection_points](#output-connection-points) | tuple[[WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md)] |  |
| [screen_light](#screen-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [screen_light_offsets](#screen-light-offsets) | tuple[[Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md)] |  |
| [sprites](#sprites) | [Sprite4Way](../types/Sprite4Way.md) | yes |

### active_energy_usage

**Type:** [Energy](../types/Energy.md)

**Example:**

```
active_energy_usage = "1kW"
```

### activity_led_hold_time

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5}`

### activity_led_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### activity_led_light_offsets

**Type:** tuple[[Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md)]

### activity_led_sprites

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### emissions_per_second

**Type:** dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] · _optional_ · _overrides parent_

Emissions cannot be larger than zero, combinators cannot produce pollution.

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md)

Defines how this combinator gets energy. The emissions set on the energy source are ignored so combinators cannot produce pollution.

### frozen_patch

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### input_connection_bounding_box

**Type:** [BoundingBox](../types/BoundingBox.md)

### input_connection_points

**Type:** tuple[[WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md)]

### output_connection_bounding_box

**Type:** [BoundingBox](../types/BoundingBox.md)

### output_connection_points

**Type:** tuple[[WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md)]

### screen_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### screen_light_offsets

**Type:** tuple[[Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md)]

### sprites

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_
