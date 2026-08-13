# RobotDoorSpecification

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation](#animation) | [Animation](../types/Animation.md) | yes |
| [animation_sound](#animation-sound) | [Sound](../types/Sound.md) | yes |
| [location_offset](#location-offset) | [Vector](../types/Vector.md) | yes |
| [opened_duration](#opened-duration) | [uint8](../types/uint8.md) | yes |

### animation

**Type:** [Animation](../types/Animation.md) · _optional_

Drawn when a robot brings/takes items from this entity.

### animation_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played when a robot brings/takes items from this entity. Only loaded if `animation` is defined.

### location_offset

**Type:** [Vector](../types/Vector.md) · _optional_

The offset from the center of this entity where a robot visually brings/takes items.

### opened_duration

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
