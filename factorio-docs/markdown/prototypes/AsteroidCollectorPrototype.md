# AsteroidCollectorPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "asteroid-collector"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [arm_angular_speed_cap_base](#arm-angular-speed-cap-base) | [float](../types/float.md) | yes |
| [arm_angular_speed_cap_quality_scaling](#arm-angular-speed-cap-quality-scaling) | [float](../types/float.md) | yes |
| [arm_color_gradient](#arm-color-gradient) | array[[Color](../types/Color.md)] | yes |
| [arm_count_base](#arm-count-base) | [uint32](../types/uint32.md) | yes |
| [arm_count_quality_scaling](#arm-count-quality-scaling) | [uint32](../types/uint32.md) | yes |
| [arm_energy_usage](#arm-energy-usage) | [Energy](../types/Energy.md) |  |
| [arm_extend_sound](#arm-extend-sound) | [Sound](../types/Sound.md) | yes |
| [arm_inventory_size](#arm-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [arm_inventory_size_quality_increase](#arm-inventory-size-quality-increase) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [arm_retract_sound](#arm-retract-sound) | [Sound](../types/Sound.md) | yes |
| [arm_slow_energy_usage](#arm-slow-energy-usage) | [Energy](../types/Energy.md) |  |
| [arm_speed_base](#arm-speed-base) | [float](../types/float.md) | yes |
| [arm_speed_quality_scaling](#arm-speed-quality-scaling) | [float](../types/float.md) | yes |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [collection_box_offset](#collection-box-offset) | [float](../types/float.md) | yes |
| [collection_radius](#collection-radius) | [double](../types/double.md) |  |
| [deposit_radius](#deposit-radius) | [float](../types/float.md) | yes |
| [deposit_sound](#deposit-sound) | [Sound](../types/Sound.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md) |  |
| [energy_usage_quality_scaling](#energy-usage-quality-scaling) | [float](../types/float.md) | yes |
| [graphics_set](#graphics-set) | [AsteroidCollectorGraphicsSet](../types/AsteroidCollectorGraphicsSet.md) |  |
| [head_collection_radius](#head-collection-radius) | [float](../types/float.md) | yes |
| [held_items_display_count](#held-items-display-count) | [uint8](../types/uint8.md) | yes |
| [held_items_offset](#held-items-offset) | [float](../types/float.md) | yes |
| [held_items_spread](#held-items-spread) | [float](../types/float.md) | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [inventory_size_quality_increase](#inventory-size-quality-increase) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [minimal_arm_swing_segment_retraction](#minimal-arm-swing-segment-retraction) | [uint32](../types/uint32.md) | yes |
| [munch_sound](#munch-sound) | [Sound](../types/Sound.md) | yes |
| [passive_energy_usage](#passive-energy-usage) | [Energy](../types/Energy.md) |  |
| [radius_visualisation_picture](#radius-visualisation-picture) | [Sprite](../types/Sprite.md) | yes |
| [tether_size](#tether-size) | [float](../types/float.md) | yes |
| [unpowered_arm_speed_scale](#unpowered-arm-speed-scale) | [float](../types/float.md) | yes |

### arm_angular_speed_cap_base

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

### arm_angular_speed_cap_quality_scaling

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

### arm_color_gradient

**Type:** array[[Color](../types/Color.md)] · _optional_ · **Default:** `{{1, 1, 1}}`

### arm_count_base

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3}`

### arm_count_quality_scaling

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### arm_energy_usage

**Type:** [Energy](../types/Energy.md)

### arm_extend_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### arm_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5}`

### arm_inventory_size_quality_increase

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### arm_retract_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### arm_slow_energy_usage

**Type:** [Energy](../types/Energy.md)

If `arm_energy_usage` is not met, attempts to move slower at the cost of `arm_slow_energy_usage`.

### arm_speed_base

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

### arm_speed_quality_scaling

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### collection_box_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### collection_radius

**Type:** [double](../types/double.md)

Must be positive.

### deposit_radius

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.5}`

### deposit_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md)

### energy_usage_quality_scaling

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

### graphics_set

**Type:** [AsteroidCollectorGraphicsSet](../types/AsteroidCollectorGraphicsSet.md)

### head_collection_radius

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.6}`

### held_items_display_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5}`

### held_items_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

### held_items_spread

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.15}`

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 39}`

### inventory_size_quality_increase

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5}`

### minimal_arm_swing_segment_retraction

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 6}`

### munch_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### passive_energy_usage

**Type:** [Energy](../types/Energy.md)

### radius_visualisation_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### tether_size

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.4}`

### unpowered_arm_speed_scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.3}`
