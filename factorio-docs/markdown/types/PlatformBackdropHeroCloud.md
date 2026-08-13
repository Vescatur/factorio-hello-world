# PlatformBackdropHeroCloud

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [position_deviation](#position-deviation) | [Vector](../types/Vector.md) | yes |
| [positions](#positions) | array[[Vector](../types/Vector.md)] | yes |
| [projection_style](#projection-style) | `"none"` ∣ `"front-only"` ∣ `"front-and-back"` ∣ `"front-and-back-inverted"` | yes |
| [rotate_with_planet](#rotate-with-planet) | [boolean](../types/boolean.md) | yes |
| [rotation_deviation](#rotation-deviation) | [float](../types/float.md) | yes |
| [rotation_speed](#rotation-speed) | [float](../types/float.md) | yes |
| [size](#size) | [Vector](../types/Vector.md) | yes |
| [sprite_index](#sprite-index) | [uint8](../types/uint8.md) | yes |
| [starting_frame_offset](#starting-frame-offset) | [uint16](../types/uint16.md) | yes |

### position_deviation

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``

Random position offset of the cloud animation. Refreshed every loop.

### positions

**Type:** array[[Vector](../types/Vector.md)] · _optional_

With each planet revolution, the cloud smoothly travels along this path by approximating the provided points. If only single position is provided, it remains stationary at that point.

### projection_style

**Type:** `"none"` ∣ `"front-only"` ∣ `"front-and-back"` ∣ `"front-and-back-inverted"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'front-only'}`

### rotate_with_planet

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### rotation_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### rotation_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### size

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0.5, 0.5}``

Cloud size as a proportion of the total planet size, meaning `1` spans whole planet.

### sprite_index

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

1, 2, 3 use cloud sprites 1, 2, 3 respectively. 0 will disable this cloud. Anything else is invalid.

### starting_frame_offset

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Random frame offset of the cloud animation if the graphic is an animation.
