# SpiderLegPart

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [bottom_end](#bottom-end) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [bottom_end_length](#bottom-end-length) | [float](../types/float.md) | yes |
| [bottom_end_offset](#bottom-end-offset) | [float](../types/float.md) | yes |
| [middle](#middle) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [middle_offset_from_bottom](#middle-offset-from-bottom) | [float](../types/float.md) | yes |
| [middle_offset_from_top](#middle-offset-from-top) | [float](../types/float.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [top_end](#top-end) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [top_end_length](#top-end-length) | [float](../types/float.md) | yes |
| [top_end_offset](#top-end-offset) | [float](../types/float.md) | yes |

### bottom_end

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

### bottom_end_length

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### bottom_end_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The number of tiles in screen space to shift the bottom end of the leg part AWAY from the bottom joint.

### middle

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

### middle_offset_from_bottom

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### middle_offset_from_top

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'higher-object-above'}`

The sprite layer in which to draw this leg part.

### top_end

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

### top_end_length

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### top_end_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The number of tiles in screen space to shift the top end of the leg part AWAY from the top joint.
