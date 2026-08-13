# GigaCargoHatchDefinition

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [closing_sound](#closing-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [covered_hatches](#covered-hatches) | array[[uint32](../types/uint32.md)] |  |
| [hatch_graphics_back](#hatch-graphics-back) | [Animation](../types/Animation.md) | yes |
| [hatch_graphics_front](#hatch-graphics-front) | [Animation](../types/Animation.md) | yes |
| [hatch_render_layer_back](#hatch-render-layer-back) | [RenderLayer](../types/RenderLayer.md) | yes |
| [hatch_render_layer_front](#hatch-render-layer-front) | [RenderLayer](../types/RenderLayer.md) | yes |
| [opening_sound](#opening-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |

### closing_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

Cannot use `fade_ticks`.

### covered_hatches

**Type:** array[[uint32](../types/uint32.md)]

### hatch_graphics_back

**Type:** [Animation](../types/Animation.md) · _optional_

### hatch_graphics_front

**Type:** [Animation](../types/Animation.md) · _optional_

### hatch_render_layer_back

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'higher-object-under'}`

### hatch_render_layer_front

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'higher-object-above'}`

### opening_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

Cannot use `fade_ticks`.
