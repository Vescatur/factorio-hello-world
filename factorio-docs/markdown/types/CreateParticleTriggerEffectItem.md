# CreateParticleTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [apply_tile_tint](#apply-tile-tint) | [ApplyTileTint](../types/ApplyTileTint.md) | yes |
| [frame_speed](#frame-speed) | [float](../types/float.md) | yes |
| [frame_speed_deviation](#frame-speed-deviation) | [float](../types/float.md) | yes |
| [initial_height](#initial-height) | [float](../types/float.md) |  |
| [initial_height_deviation](#initial-height-deviation) | [float](../types/float.md) | yes |
| [initial_vertical_speed](#initial-vertical-speed) | [float](../types/float.md) | yes |
| [initial_vertical_speed_deviation](#initial-vertical-speed-deviation) | [float](../types/float.md) | yes |
| [movement_multiplier](#movement-multiplier) | [float](../types/float.md) | yes |
| [offset_deviation](#offset-deviation) | [SimpleBoundingBox](../types/SimpleBoundingBox.md) | yes |
| [offsets](#offsets) | array[[Vector](../types/Vector.md)] | yes |
| [only_when_visible](#only-when-visible) | [boolean](../types/boolean.md) | yes |
| [particle_name](#particle-name) | [ParticleID](../types/ParticleID.md) |  |
| [rotate_offsets](#rotate-offsets) | [boolean](../types/boolean.md) | yes |
| [show_in_tooltip](#show-in-tooltip) | [boolean](../types/boolean.md) | yes |
| [speed_from_center](#speed-from-center) | [float](../types/float.md) | yes |
| [speed_from_center_deviation](#speed-from-center-deviation) | [float](../types/float.md) | yes |
| [tail_length](#tail-length) | [uint8](../types/uint8.md) | yes |
| [tail_length_deviation](#tail-length-deviation) | [uint8](../types/uint8.md) | yes |
| [tail_width](#tail-width) | [float](../types/float.md) | yes |
| [tile_collision_mask](#tile-collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [tint](#tint) | [Color](../types/Color.md) | yes |
| [type](#type) | `"create-particle"` |  |

### apply_tile_tint

**Type:** [ApplyTileTint](../types/ApplyTileTint.md) · _optional_

### frame_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### frame_speed_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### initial_height

**Type:** [float](../types/float.md)

### initial_height_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### initial_vertical_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### initial_vertical_speed_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### movement_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### offset_deviation

**Type:** [SimpleBoundingBox](../types/SimpleBoundingBox.md) · _optional_

### offsets

**Type:** array[[Vector](../types/Vector.md)] · _optional_

### only_when_visible

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Create the particle only when they are within a 200 tile range of any connected player.

### particle_name

**Type:** [ParticleID](../types/ParticleID.md)

### rotate_offsets

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### show_in_tooltip

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### speed_from_center

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### speed_from_center_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### tail_length

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Silently capped to a maximum of 100.

### tail_length_deviation

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Silently capped to a maximum of 100.

### tail_width

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### tile_collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

### tint

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{1, 1, 1, 1} (white)``

Only loaded if `apply_tile_tint` is not defined.

### type

**Type:** `"create-particle"`
