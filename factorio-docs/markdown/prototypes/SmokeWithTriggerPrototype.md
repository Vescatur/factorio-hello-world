# SmokeWithTriggerPrototype

_prototype_

**Prototype type string:** `type = "smoke-with-trigger"`

**Inherits from:** [SmokePrototype](../prototypes/SmokePrototype.md)

An entity with animation and a trigger.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [Trigger](../types/Trigger.md) | yes |
| [action_cooldown](#action-cooldown) | [uint32](../types/uint32.md) | yes |
| [attach_to_target](#attach-to-target) | [boolean](../types/boolean.md) | yes |
| [fade_when_attachment_is_destroyed](#fade-when-attachment-is-destroyed) | [boolean](../types/boolean.md) | yes |
| [particle_count](#particle-count) | [uint8](../types/uint8.md) | yes |
| [particle_distance_scale_factor](#particle-distance-scale-factor) | [float](../types/float.md) | yes |
| [particle_duration_variation](#particle-duration-variation) | [uint32](../types/uint32.md) | yes |
| [particle_scale_factor](#particle-scale-factor) | [Vector](../types/Vector.md) | yes |
| [particle_spread](#particle-spread) | [Vector](../types/Vector.md) | yes |
| [spread_duration_variation](#spread-duration-variation) | [uint32](../types/uint32.md) | yes |
| [wave_distance](#wave-distance) | [Vector](../types/Vector.md) | yes |
| [wave_speed](#wave-speed) | [Vector](../types/Vector.md) | yes |

### action

**Type:** [Trigger](../types/Trigger.md) · _optional_

### action_cooldown

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

0 means never apply.

### attach_to_target

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If true, causes the smoke to move with the target entity if one is specified.

### fade_when_attachment_is_destroyed

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If true, the smoke will immediately start fading away when the entity it is attached to is destroyed. If it was never attached to an entity in the first place, then the smoke will fade away immediately after being created.

### particle_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### particle_distance_scale_factor

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### particle_duration_variation

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### particle_scale_factor

**Type:** [Vector](../types/Vector.md) · _optional_

### particle_spread

**Type:** [Vector](../types/Vector.md) · _optional_

### spread_duration_variation

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### wave_distance

**Type:** [Vector](../types/Vector.md) · _optional_

### wave_speed

**Type:** [Vector](../types/Vector.md) · _optional_
