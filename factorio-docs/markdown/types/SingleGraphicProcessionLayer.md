# SingleGraphicProcessionLayer

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation_driven_by_curve](#animation-driven-by-curve) | [boolean](../types/boolean.md) | yes |
| [clip_with_hatches](#clip-with-hatches) | [boolean](../types/boolean.md) | yes |
| [compensated_pivot](#compensated-pivot) | [boolean](../types/boolean.md) | yes |
| [frames](#frames) | array[[SingleGraphicLayerProcessionBezierControlPoint](../types/SingleGraphicLayerProcessionBezierControlPoint.md)] |  |
| [graphic](#graphic) | [ProcessionGraphic](../types/ProcessionGraphic.md) |  |
| [is_passenger_only](#is-passenger-only) | [boolean](../types/boolean.md) | yes |
| [relative_to](#relative-to) | [EffectRelativeTo](../types/EffectRelativeTo.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [rotates_with_pod](#rotates-with-pod) | [boolean](../types/boolean.md) | yes |
| [secondary_draw_order](#secondary-draw-order) | [int8](../types/int8.md) | yes |
| [shift_rotates_with_pod](#shift-rotates-with-pod) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"single-graphic"` |  |

### animation_driven_by_curve

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### clip_with_hatches

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### compensated_pivot

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Swaps the order of sprite shift and rotation.

### frames

**Type:** array[[SingleGraphicLayerProcessionBezierControlPoint](../types/SingleGraphicLayerProcessionBezierControlPoint.md)]

### graphic

**Type:** [ProcessionGraphic](../types/ProcessionGraphic.md)

### is_passenger_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### relative_to

**Type:** [EffectRelativeTo](../types/EffectRelativeTo.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'pod'}`

Where the sprite is centered.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### rotates_with_pod

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### shift_rotates_with_pod

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Only applied when the `relative_to` is `pod`.

### type

**Type:** `"single-graphic"`
