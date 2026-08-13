# TintProcessionLayer

_type_

Fullscreen overlay which blends gradient from top to bottom edge of the screen using [pre-multiplied alpha blending](../types/BlendMode.md#normal).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [frames](#frames) | array[[TintProcessionBezierControlPoint](../types/TintProcessionBezierControlPoint.md)] |  |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [type](#type) | `"tint"` |  |

### frames

**Type:** array[[TintProcessionBezierControlPoint](../types/TintProcessionBezierControlPoint.md)]

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### type

**Type:** `"tint"`
