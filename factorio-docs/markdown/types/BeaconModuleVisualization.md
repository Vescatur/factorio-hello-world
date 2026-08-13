# BeaconModuleVisualization

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [apply_module_tint](#apply-module-tint) | [ModuleTint](../types/ModuleTint.md) | yes |
| [has_empty_slot](#has-empty-slot) | [boolean](../types/boolean.md) | yes |
| [pictures](#pictures) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [secondary_draw_order](#secondary-draw-order) | [int8](../types/int8.md) | yes |

### apply_module_tint

**Type:** [ModuleTint](../types/ModuleTint.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'none'}`

Which tint set in [ModulePrototype::beacon_tint](../prototypes/ModulePrototype.md#beacon-tint) should be applied to this, if any.

### has_empty_slot

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### pictures

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Used to determine render order for sprites with the same `render_layer` in the same position. Sprites with a higher `secondary_draw_order` are drawn on top.
