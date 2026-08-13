# VehiclePrototype

_prototype_ · **abstract**

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Abstract base of all vehicles.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_passengers](#allow-passengers) | [boolean](../types/boolean.md) | yes |
| [allow_remote_driving](#allow-remote-driving) | [boolean](../types/boolean.md) | yes |
| [braking_force](#braking-force) | [double](../types/double.md) |  |
| [chunk_exploration_radius](#chunk-exploration-radius) | [uint32](../types/uint32.md) | yes |
| [crash_trigger](#crash-trigger) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [deliver_category](#deliver-category) | [string](../types/string.md) | yes |
| [energy_per_hit_point](#energy-per-hit-point) | [double](../types/double.md) |  |
| [equipment_grid](#equipment-grid) | [EquipmentGridID](../types/EquipmentGridID.md) | yes |
| [friction_force](#friction-force) | [double](../types/double.md) |  |
| [impact_speed_to_volume_ratio](#impact-speed-to-volume-ratio) | [double](../types/double.md) | yes |
| [minimap_representation](#minimap-representation) | [Sprite](../types/Sprite.md) | yes |
| [selected_minimap_representation](#selected-minimap-representation) | [Sprite](../types/Sprite.md) | yes |
| [stop_trigger](#stop-trigger) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [stop_trigger_speed](#stop-trigger-speed) | [double](../types/double.md) | yes |
| [terrain_friction_modifier](#terrain-friction-modifier) | [float](../types/float.md) | yes |
| [weight](#weight) | [double](../types/double.md) |  |

### allow_passengers

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Determines whether this vehicle accepts passengers. This includes both drivers and gunners, if applicable.

### allow_remote_driving

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### braking_force

**Type:** [double](../types/double.md)

Must be positive.

### chunk_exploration_radius

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

In chunks. The radius of the radar range of the vehicle, so how many chunks it charts around itself.

### crash_trigger

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### deliver_category

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

Name of a [DeliverCategory](../prototypes/DeliverCategory.md).

### energy_per_hit_point

**Type:** [double](../types/double.md)

The (movement) energy used per hit point (1 hit point = 1 health damage) taken and dealt for this vehicle during collisions. The smaller the number, the more damage this vehicle and the rammed entity take during collisions: `damage = energy / energy_per_hit_point`.

### equipment_grid

**Type:** [EquipmentGridID](../types/EquipmentGridID.md) · _optional_

The name of the [EquipmentGridPrototype](../prototypes/EquipmentGridPrototype.md) this vehicle has.

### friction_force

**Type:** [double](../types/double.md)

Must be positive.

### impact_speed_to_volume_ratio

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5.0}`

### minimap_representation

**Type:** [Sprite](../types/Sprite.md) · _optional_

The sprite that represents this vehicle on the map/minimap.

### selected_minimap_representation

**Type:** [Sprite](../types/Sprite.md) · _optional_

The sprite that represents this vehicle on the map/minimap when it is selected.

### stop_trigger

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### stop_trigger_speed

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### terrain_friction_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be in the [0, 1] interval.

### weight

**Type:** [double](../types/double.md)

Must be positive. Weight of the entity used for physics calculation when car hits something.
