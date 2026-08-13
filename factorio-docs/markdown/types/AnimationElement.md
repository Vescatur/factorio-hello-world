# AnimationElement

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [always_draw](#always-draw) | [boolean](../types/boolean.md) | yes |
| [animation](#animation) | [Animation](../types/Animation.md) | yes |
| [apply_tint](#apply-tint) | [boolean](../types/boolean.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [secondary_draw_order](#secondary-draw-order) | [int8](../types/int8.md) | yes |

### always_draw

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### animation

**Type:** [Animation](../types/Animation.md) · _optional_

### apply_tint

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_

Used to determine render order for sprites with the same `render_layer` in the same position. Sprites with a higher `secondary_draw_order` are drawn on top.
