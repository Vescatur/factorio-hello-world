# PumpWagonConnectionGraphics

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [base](#base) | [BasePumpWagonConnectionAnimations](../types/BasePumpWagonConnectionAnimations.md) | yes |
| [base_animation_finished_at_progress](#base-animation-finished-at-progress) | [double](../types/double.md) | yes |
| [clamp_animation_starts_at_progress](#clamp-animation-starts-at-progress) | [double](../types/double.md) | yes |
| [clamp_y_shift](#clamp-y-shift) | [float](../types/float.md) | yes |
| [height_diff_to_wagon](#height-diff-to-wagon) | [float](../types/float.md) | yes |
| [part1_to_2_shift](#part1-to-2-shift) | [Vector](../types/Vector.md) | yes |
| [part2_crop_adjustment](#part2-crop-adjustment) | [float](../types/float.md) | yes |
| [part2_shadow_crop_adjustment](#part2-shadow-crop-adjustment) | [float](../types/float.md) | yes |
| [part_1](#part-1) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [part_1_shadow](#part-1-shadow) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [part_2](#part-2) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [part_2_shadow](#part-2-shadow) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [resting_position_shift](#resting-position-shift) | [PumpWagonConnectionShift4Way](../types/PumpWagonConnectionShift4Way.md) | yes |
| [shadow_shift](#shadow-shift) | [Vector](../types/Vector.md) | yes |
| [suction_clamp](#suction-clamp) | [Animation](../types/Animation.md) | yes |
| [suction_clamp_shadow](#suction-clamp-shadow) | [Animation](../types/Animation.md) | yes |
| [top_pivot_shift](#top-pivot-shift) | [PumpWagonConnectionShift4Way](../types/PumpWagonConnectionShift4Way.md) | yes |

### base

**Type:** [BasePumpWagonConnectionAnimations](../types/BasePumpWagonConnectionAnimations.md) · _optional_

### base_animation_finished_at_progress

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

Value between 0 and 1 (both exclusive). The base animation will play up until the connecting progress reaches the value. Needs to be less than `clamp_animation_starts_at_progress`. The arm (`part_1` and `part_2`) will rotate and extend in the time in between.

### clamp_animation_starts_at_progress

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.75}`

Value between 0 and 1 (both exclusive). The clamp animation will play up starting when the connecting progress reaches the value. Needs to be larger than `base_animation_finished_at_progress`. The arm (`part_1` and `part_2`) will rotate and extend in the time in between.

### clamp_y_shift

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -0.375}`

### height_diff_to_wagon

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.15}`

### part1_to_2_shift

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``

### part2_crop_adjustment

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -0.05}`

Adjusts where the sprites will be cropped

### part2_shadow_crop_adjustment

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -0.05}`

Adjusts where the sprites will be cropped

### part_1

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

Rotating top part.

### part_1_shadow

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

### part_2

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

Rotating arm.

### part_2_shadow

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

### resting_position_shift

**Type:** [PumpWagonConnectionShift4Way](../types/PumpWagonConnectionShift4Way.md) · _optional_

Projected render rest position of `suction_clamp` relative to the parent pump position.

### shadow_shift

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0.8, 1.55}``

### suction_clamp

**Type:** [Animation](../types/Animation.md) · _optional_

### suction_clamp_shadow

**Type:** [Animation](../types/Animation.md) · _optional_

### top_pivot_shift

**Type:** [PumpWagonConnectionShift4Way](../types/PumpWagonConnectionShift4Way.md) · _optional_

Relative projected render position of `part_1` to the parent pump position.
