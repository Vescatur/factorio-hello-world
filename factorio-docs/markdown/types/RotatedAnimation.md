# RotatedAnimation

_type_

**Inherits from:** [AnimationParameters](../types/AnimationParameters.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [apply_projection](#apply-projection) | [boolean](../types/boolean.md) | yes |
| [counterclockwise](#counterclockwise) | [boolean](../types/boolean.md) | yes |
| [direction_count](#direction-count) | [uint32](../types/uint32.md) | yes |
| [filename](#filename) | [FileName](../types/FileName.md) | yes |
| [filenames](#filenames) | array[[FileName](../types/FileName.md)] | yes |
| [layers](#layers) | array[[RotatedAnimation](../types/RotatedAnimation.md)] | yes |
| [lines_per_file](#lines-per-file) | [uint32](../types/uint32.md) | yes |
| [middle_orientation](#middle-orientation) | [RealOrientation](../types/RealOrientation.md) | yes |
| [orientation_range](#orientation-range) | [float](../types/float.md) | yes |
| [slice](#slice) | [uint32](../types/uint32.md) | yes |
| [still_frame](#still-frame) | [uint32](../types/uint32.md) | yes |
| [stripes](#stripes) | array[[Stripe](../types/Stripe.md)] | yes |

### apply_projection

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Used to fix the inconsistency of direction of the entity in 3d when rendered and direction on the screen (where the 45 degree angle for projection is used).

Only loaded if `layers` is not defined.

### counterclockwise

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

### direction_count

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `layers` is not defined.

The sequential animation instance is loaded equal to the entities direction within the `direction_count` setting.

Direction count to [defines.direction](../defines/defines.md) (animation sequence number):

- `1`: North (1)

- `2`: North (1), South (2)

- `4`: North (1), East (2), South (3), West (4)

- `8`: North (1), Northeast (2), East (3), Southeast (4), South (5), Southwest (6), West (7), Northwest (8)

### filename

**Type:** [FileName](../types/FileName.md) · _optional_ · _overrides parent_

Only loaded, and mandatory if `layers`, `stripes`, and `filenames` are not defined.

The path to the sprite file to use.

### filenames

**Type:** array[[FileName](../types/FileName.md)] · _optional_

Only loaded if both `layers` and `stripes` are not defined.

### layers

**Type:** array[[RotatedAnimation](../types/RotatedAnimation.md)] · _optional_

If this property is present, all RotatedAnimation definitions have to be placed as entries in the array, and they will all be loaded from there. `layers` may not be an empty table. Each definition in the array may also have the `layers` property.

If this property is present, all other properties, including those inherited from AnimationParameters, are ignored.

### lines_per_file

**Type:** [uint32](../types/uint32.md) · _optional_

Only loaded if `layers` is not defined. Mandatory if `filenames` is defined.

### middle_orientation

**Type:** [RealOrientation](../types/RealOrientation.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

Only loaded if `layers` is not defined.

### orientation_range

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `layers` is not defined.

Automatically clamped to be between `0` and `1`.

### slice

**Type:** [uint32](../types/uint32.md) · _optional_

Only loaded if `layers` is not defined. Mandatory if `filenames` is defined.

### still_frame

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `layers` is not defined.

### stripes

**Type:** array[[Stripe](../types/Stripe.md)] · _optional_

Only loaded if `layers` is not defined.
