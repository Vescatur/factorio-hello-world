# ProjectileTriggerDelivery

_type_

**Inherits from:** [TriggerDeliveryItem](../types/TriggerDeliveryItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [direction_deviation](#direction-deviation) | [float](../types/float.md) | yes |
| [inherit_speed](#inherit-speed) | [boolean](../types/boolean.md) | yes |
| [max_range](#max-range) | [double](../types/double.md) | yes |
| [min_range](#min-range) | [double](../types/double.md) | yes |
| [projectile](#projectile) | [EntityID](../types/EntityID.md) |  |
| [range_deviation](#range-deviation) | [float](../types/float.md) | yes |
| [starting_speed](#starting-speed) | [float](../types/float.md) |  |
| [starting_speed_deviation](#starting-speed-deviation) | [float](../types/float.md) | yes |
| [type](#type) | `"projectile"` |  |

### direction_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Maximum deviation of the projectile from source orientation, in +/- (`x radians / 2`). Example: `3.14 radians -> +/- (180° / 2)`, meaning up to 90° deviation in either direction of rotation.

### inherit_speed

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, the projectile will inherit any positive speed component from the source entity's movement toward the target.

### max_range

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1000}`

### min_range

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### projectile

**Type:** [EntityID](../types/EntityID.md)

Name of a [ProjectilePrototype](../prototypes/ProjectilePrototype.md).

### range_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum deviation of the projectile maximum range from `max_range` is `max_range × range_deviation ÷ 2`. This means a deviation of `0.5` will appear as a maximum of `0.25` (25%) deviation of an initial range goal. Post-deviation range may exceed `max_range` or be less than `min_range`.

### starting_speed

**Type:** [float](../types/float.md)

Starting speed in tiles per tick.

### starting_speed_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### type

**Type:** `"projectile"`
