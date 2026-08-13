# RailSignalStaticSpriteLayer

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [align_to_frame_index](#align-to-frame-index) | array[[uint8](../types/uint8.md)] | yes |
| [hide_if_not_connected_to_rails](#hide-if-not-connected-to-rails) | [boolean](../types/boolean.md) | yes |
| [hide_if_simulation](#hide-if-simulation) | [boolean](../types/boolean.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [shifts](#shifts) | array[[MapPosition](../types/MapPosition.md)] | yes |
| [sprites](#sprites) | [Animation](../types/Animation.md) |  |

### align_to_frame_index

**Type:** array[[uint8](../types/uint8.md)] · _optional_

### hide_if_not_connected_to_rails

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### hide_if_simulation

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'rail-chain-signal-metal'}`

### shifts

**Type:** array[[MapPosition](../types/MapPosition.md)] · _optional_

Must be an empty array or contain exactly 16 values.

### sprites

**Type:** [Animation](../types/Animation.md)
