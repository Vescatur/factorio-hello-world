# ArtilleryTriggerDelivery

_type_

**Inherits from:** [TriggerDeliveryItem](../types/TriggerDeliveryItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [direction_deviation](#direction-deviation) | [float](../types/float.md) | yes |
| [projectile](#projectile) | [EntityID](../types/EntityID.md) |  |
| [range_deviation](#range-deviation) | [float](../types/float.md) | yes |
| [starting_speed](#starting-speed) | [float](../types/float.md) |  |
| [starting_speed_deviation](#starting-speed-deviation) | [float](../types/float.md) | yes |
| [trigger_fired_artillery](#trigger-fired-artillery) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"artillery"` |  |

### direction_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Maximum deviation of the projectile from source orientation, in +/- (`x radians / 2`). Example: `3.14 radians -> +/- (180° / 2)`, meaning up to 90° deviation in either direction of rotation.

### projectile

**Type:** [EntityID](../types/EntityID.md)

Name of a [ArtilleryProjectilePrototype](../prototypes/ArtilleryProjectilePrototype.md).

### range_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### starting_speed

**Type:** [float](../types/float.md)

### starting_speed_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### trigger_fired_artillery

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### type

**Type:** `"artillery"`
