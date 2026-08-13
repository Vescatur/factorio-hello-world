# RailRenderLayers

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [back_end](#back-end) | [RenderLayer](../types/RenderLayer.md) | yes |
| [front_end](#front-end) | [RenderLayer](../types/RenderLayer.md) | yes |
| [metal](#metal) | [RenderLayer](../types/RenderLayer.md) | yes |
| [screw](#screw) | [RenderLayer](../types/RenderLayer.md) | yes |
| [stone_path](#stone-path) | [RenderLayer](../types/RenderLayer.md) | yes |
| [stone_path_lower](#stone-path-lower) | [RenderLayer](../types/RenderLayer.md) | yes |
| [tie](#tie) | [RenderLayer](../types/RenderLayer.md) | yes |
| [underwater_layer_offset](#underwater-layer-offset) | [int8](../types/int8.md) | yes |

### back_end

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `Value of `screw``

### front_end

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `Value of `screw``

### metal

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'rail-metal'}`

### screw

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'rail-screw'}`

### stone_path

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'rail-stone-path'}`

### stone_path_lower

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'rail-stone-path-lower'}`

### tie

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'rail-tie'}`

### underwater_layer_offset

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`
