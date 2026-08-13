# SpiderLegPrototype

_prototype_

**Prototype type string:** `type = "spider-leg"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Used by [SpiderLegSpecification](../types/SpiderLegSpecification.md) for [SpiderVehiclePrototype](../prototypes/SpiderVehiclePrototype.md), also known as [spidertron](https://wiki.factorio.com/Spidertron).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [ankle_height](#ankle-height) | [double](../types/double.md) | yes |
| [base_position_selection_distance](#base-position-selection-distance) | [double](../types/double.md) |  |
| [graphics_set](#graphics-set) | [SpiderLegGraphicsSet](../types/SpiderLegGraphicsSet.md) | yes |
| [hip_flexibility](#hip-flexibility) | [double](../types/double.md) | yes |
| [initial_movement_speed](#initial-movement-speed) | [double](../types/double.md) |  |
| [knee_distance_factor](#knee-distance-factor) | [double](../types/double.md) |  |
| [knee_height](#knee-height) | [double](../types/double.md) |  |
| [lower_leg_dying_trigger_effects](#lower-leg-dying-trigger-effects) | array[[SpiderLegTriggerEffect](../types/SpiderLegTriggerEffect.md)] | yes |
| [minimal_step_size](#minimal-step-size) | [double](../types/double.md) |  |
| [movement_acceleration](#movement-acceleration) | [double](../types/double.md) |  |
| [movement_based_position_selection_distance](#movement-based-position-selection-distance) | [double](../types/double.md) |  |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [stretch_force_scalar](#stretch-force-scalar) | [double](../types/double.md) | yes |
| [target_position_randomisation_distance](#target-position-randomisation-distance) | [double](../types/double.md) |  |
| [upper_leg_dying_trigger_effects](#upper-leg-dying-trigger-effects) | array[[SpiderLegTriggerEffect](../types/SpiderLegTriggerEffect.md)] | yes |
| [walking_sound_speed_modifier](#walking-sound-speed-modifier) | [float](../types/float.md) | yes |
| [walking_sound_volume_modifier](#walking-sound-volume-modifier) | [float](../types/float.md) | yes |

### ankle_height

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The height of the foot from the ground when at rest.

### base_position_selection_distance

**Type:** [double](../types/double.md)

### graphics_set

**Type:** [SpiderLegGraphicsSet](../types/SpiderLegGraphicsSet.md) · _optional_

### hip_flexibility

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

The flexibility of hip. Must be between 0 and 1 inclusive. 0 means the hip doesn't flex at all, and 1 means the hip can bend the entire range, from straight up to straight down. Values less than one will dampen the hip flexibility and cause the upper and lower leg parts to stretch and squish more to compensate. Does not affect movement, only graphics.

### initial_movement_speed

**Type:** [double](../types/double.md)

### knee_distance_factor

**Type:** [double](../types/double.md)

The placement of the knee relative to the torso of the spider and the end of the foot when at rest. Used to calculate the shape of the leg and the length of the individual parts. Values between 0 and 1 place the knee between the torso and the leg. Values closer to 0 will place the knee closer to the torso.

### knee_height

**Type:** [double](../types/double.md)

The resting height of the knee from the ground. Used to derive leg part length and size. If set too low, this could cause the knee to invert, bending inwards underneath the spider.

### lower_leg_dying_trigger_effects

**Type:** array[[SpiderLegTriggerEffect](../types/SpiderLegTriggerEffect.md)] · _optional_

### minimal_step_size

**Type:** [double](../types/double.md)

### movement_acceleration

**Type:** [double](../types/double.md)

### movement_based_position_selection_distance

**Type:** [double](../types/double.md)

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### stretch_force_scalar

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.715}`

A scalar that controls the amount of influence this leg has over the position of the torso. Must be greater than 0.

### target_position_randomisation_distance

**Type:** [double](../types/double.md)

### upper_leg_dying_trigger_effects

**Type:** array[[SpiderLegTriggerEffect](../types/SpiderLegTriggerEffect.md)] · _optional_

### walking_sound_speed_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be larger than 0.

### walking_sound_volume_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Cannot be negative.
