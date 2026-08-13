# RailSignalPictureSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_connector_render_layer](#circuit-connector-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [lights](#lights) | [RailSignalLights](../types/RailSignalLights.md) |  |
| [rail_piece](#rail-piece) | [RailSignalStaticSpriteLayer](../types/RailSignalStaticSpriteLayer.md) | yes |
| [selection_box_shift](#selection-box-shift) | array[[Vector](../types/Vector.md)] | yes |
| [signal_color_to_structure_frame_index](#signal-color-to-structure-frame-index) | [RailSignalColorToFrameIndex](../types/RailSignalColorToFrameIndex.md) |  |
| [structure](#structure) | [RotatedAnimation](../types/RotatedAnimation.md) |  |
| [structure_align_to_animation_index](#structure-align-to-animation-index) | array[[uint8](../types/uint8.md)] | yes |
| [structure_render_layer](#structure-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [upper_rail_piece](#upper-rail-piece) | [RailSignalStaticSpriteLayer](../types/RailSignalStaticSpriteLayer.md) | yes |

### circuit_connector

**Type:** array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_connector_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### lights

**Type:** [RailSignalLights](../types/RailSignalLights.md)

### rail_piece

**Type:** [RailSignalStaticSpriteLayer](../types/RailSignalStaticSpriteLayer.md) · _optional_

### selection_box_shift

**Type:** array[[Vector](../types/Vector.md)] · _optional_

### signal_color_to_structure_frame_index

**Type:** [RailSignalColorToFrameIndex](../types/RailSignalColorToFrameIndex.md)

### structure

**Type:** [RotatedAnimation](../types/RotatedAnimation.md)

### structure_align_to_animation_index

**Type:** array[[uint8](../types/uint8.md)] · _optional_

### structure_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'floor-mechanics'}`

### upper_rail_piece

**Type:** [RailSignalStaticSpriteLayer](../types/RailSignalStaticSpriteLayer.md) · _optional_
