# CranePart

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_sprite_rotation](#allow-sprite-rotation) | [boolean](../types/boolean.md) | yes |
| [dying_effect](#dying-effect) | [CranePartDyingEffect](../types/CranePartDyingEffect.md) | yes |
| [extendable_length](#extendable-length) | [Vector3D](../types/Vector3D.md) | yes |
| [extendable_length_grappler](#extendable-length-grappler) | [Vector3D](../types/Vector3D.md) | yes |
| [is_contractible_by_cropping](#is-contractible-by-cropping) | [boolean](../types/boolean.md) | yes |
| [layer](#layer) | [int8](../types/int8.md) | yes |
| [name](#name) | [string](../types/string.md) | yes |
| [orientation_shift](#orientation-shift) | [float](../types/float.md) | yes |
| [relative_position](#relative-position) | [Vector3D](../types/Vector3D.md) | yes |
| [relative_position_grappler](#relative-position-grappler) | [Vector3D](../types/Vector3D.md) | yes |
| [rotated_sprite](#rotated-sprite) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [rotated_sprite_reflection](#rotated-sprite-reflection) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [rotated_sprite_shadow](#rotated-sprite-shadow) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [scale_to_fit_model](#scale-to-fit-model) | [boolean](../types/boolean.md) | yes |
| [should_scale_for_perspective](#should-scale-for-perspective) | [boolean](../types/boolean.md) | yes |
| [snap_end](#snap-end) | [float](../types/float.md) | yes |
| [snap_end_arm_extent_multiplier](#snap-end-arm-extent-multiplier) | [float](../types/float.md) | yes |
| [snap_start](#snap-start) | [float](../types/float.md) | yes |
| [sprite](#sprite) | [Sprite](../types/Sprite.md) | yes |
| [sprite_reflection](#sprite-reflection) | [Sprite](../types/Sprite.md) | yes |
| [sprite_shadow](#sprite-shadow) | [Sprite](../types/Sprite.md) | yes |
| [static_length](#static-length) | [Vector3D](../types/Vector3D.md) | yes |
| [static_length_grappler](#static-length-grappler) | [Vector3D](../types/Vector3D.md) | yes |

### allow_sprite_rotation

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### dying_effect

**Type:** [CranePartDyingEffect](../types/CranePartDyingEffect.md) · _optional_

### extendable_length

**Type:** [Vector3D](../types/Vector3D.md) · _optional_

### extendable_length_grappler

**Type:** [Vector3D](../types/Vector3D.md) · _optional_

### is_contractible_by_cropping

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### layer

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### name

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

### orientation_shift

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Angle in radian, which is internally converted to a [RealOrientation](../types/RealOrientation.md).

### relative_position

**Type:** [Vector3D](../types/Vector3D.md) · _optional_

### relative_position_grappler

**Type:** [Vector3D](../types/Vector3D.md) · _optional_

### rotated_sprite

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

Only loaded if `sprite` is not defined.

### rotated_sprite_reflection

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

Only loaded if `sprite_reflection` is not defined.

### rotated_sprite_shadow

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

Only loaded if `sprite_shadow` is not defined.

### scale_to_fit_model

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### should_scale_for_perspective

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### snap_end

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### snap_end_arm_extent_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### snap_start

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### sprite_reflection

**Type:** [Sprite](../types/Sprite.md) · _optional_

### sprite_shadow

**Type:** [Sprite](../types/Sprite.md) · _optional_

### static_length

**Type:** [Vector3D](../types/Vector3D.md) · _optional_

### static_length_grappler

**Type:** [Vector3D](../types/Vector3D.md) · _optional_
