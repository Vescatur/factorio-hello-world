# Stripe

_type_

Used as an alternative way to specify animations.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [filename](#filename) | [FileName](../types/FileName.md) |  |
| [height_in_frames](#height-in-frames) | [uint32](../types/uint32.md) |  |
| [width_in_frames](#width-in-frames) | [uint32](../types/uint32.md) |  |
| [x](#x) | [uint32](../types/uint32.md) | yes |
| [y](#y) | [uint32](../types/uint32.md) | yes |

### filename

**Type:** [FileName](../types/FileName.md)

### height_in_frames

**Type:** [uint32](../types/uint32.md)

Mandatory when Stripe is used in [Animation](../types/Animation.md).

Optional when it is used in [RotatedAnimation](../types/RotatedAnimation.md), where it defaults to [RotatedAnimation::direction_count](../types/RotatedAnimation.md#direction-count).

### width_in_frames

**Type:** [uint32](../types/uint32.md)

### x

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### y

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
