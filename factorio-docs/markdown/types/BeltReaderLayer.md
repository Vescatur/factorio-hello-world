# BeltReaderLayer

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [sprites](#sprites) | [RotatedAnimation](../types/RotatedAnimation.md) |  |

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'transport-belt-reader'}`

### sprites

**Type:** [RotatedAnimation](../types/RotatedAnimation.md)

Must have a `frame_count` of `4`, one for each direction.
