# RailFenceGraphicsSet

_type_

Used for graphics by [RailPrototype](../prototypes/RailPrototype.md).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [back_fence_render_layer](#back-fence-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [back_fence_render_layer_secondary](#back-fence-render-layer-secondary) | [RenderLayer](../types/RenderLayer.md) | yes |
| [front_fence_render_layer](#front-fence-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [front_fence_render_layer_secondary](#front-fence-render-layer-secondary) | [RenderLayer](../types/RenderLayer.md) | yes |
| [segment_count](#segment-count) | [uint8](../types/uint8.md) |  |
| [side_A](#side-a) | [RailFencePictureSet](../types/RailFencePictureSet.md) |  |
| [side_B](#side-b) | [RailFencePictureSet](../types/RailFencePictureSet.md) |  |

### back_fence_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'elevated-lower-object'}`

### back_fence_render_layer_secondary

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'elevated-lower-object'}`

### front_fence_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'elevated-higher-object'}`

### front_fence_render_layer_secondary

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'elevated-higher-object'}`

### segment_count

**Type:** [uint8](../types/uint8.md)

Must be 2 or 4.

### side_A

**Type:** [RailFencePictureSet](../types/RailFencePictureSet.md)

### side_B

**Type:** [RailFencePictureSet](../types/RailFencePictureSet.md)
