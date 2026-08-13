# BeamPrototype

_prototype_

**Prototype type string:** `type = "beam"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

Used as a laser beam.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [Trigger](../types/Trigger.md) | yes |
| [action_triggered_automatically](#action-triggered-automatically) | [boolean](../types/boolean.md) | yes |
| [damage_interval](#damage-interval) | [uint32](../types/uint32.md) |  |
| [graphics_set](#graphics-set) | [BeamGraphicsSet](../types/BeamGraphicsSet.md) |  |
| [random_target_offset](#random-target-offset) | [boolean](../types/boolean.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [target_offset](#target-offset) | [Vector](../types/Vector.md) | yes |
| [width](#width) | [float](../types/float.md) |  |

### action

**Type:** [Trigger](../types/Trigger.md) · _optional_

### action_triggered_automatically

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this beams should trigger its action every `damage_interval`. If false, the action is instead triggered when its owner triggers shooting.

### damage_interval

**Type:** [uint32](../types/uint32.md)

Damage interval can't be 0. A value of 1 will cause the attack to be applied each tick.

### graphics_set

**Type:** [BeamGraphicsSet](../types/BeamGraphicsSet.md)

### random_target_offset

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### target_offset

**Type:** [Vector](../types/Vector.md) · _optional_

### width

**Type:** [float](../types/float.md)
