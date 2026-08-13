# RailPictureSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [back_rail_endings](#back-rail-endings) | [Sprite16Way](../types/Sprite16Way.md) | yes |
| [east](#east) | [RailPieceLayers](../types/RailPieceLayers.md) |  |
| [fog_mask](#fog-mask) | [RailsFogMaskDefinitions](../types/RailsFogMaskDefinitions.md) | yes |
| [front_rail_endings](#front-rail-endings) | [Sprite16Way](../types/Sprite16Way.md) | yes |
| [north](#north) | [RailPieceLayers](../types/RailPieceLayers.md) |  |
| [northeast](#northeast) | [RailPieceLayers](../types/RailPieceLayers.md) |  |
| [northwest](#northwest) | [RailPieceLayers](../types/RailPieceLayers.md) |  |
| [rail_endings](#rail-endings) | [Sprite16Way](../types/Sprite16Way.md) | yes |
| [render_layers](#render-layers) | [RailRenderLayers](../types/RailRenderLayers.md) |  |
| [secondary_render_layers](#secondary-render-layers) | [RailRenderLayers](../types/RailRenderLayers.md) | yes |
| [segment_visualisation_endings](#segment-visualisation-endings) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [slice_origin](#slice-origin) | [RailsSliceOffsets](../types/RailsSliceOffsets.md) | yes |
| [south](#south) | [RailPieceLayers](../types/RailPieceLayers.md) |  |
| [southeast](#southeast) | [RailPieceLayers](../types/RailPieceLayers.md) |  |
| [southwest](#southwest) | [RailPieceLayers](../types/RailPieceLayers.md) |  |
| [west](#west) | [RailPieceLayers](../types/RailPieceLayers.md) |  |

### back_rail_endings

**Type:** [Sprite16Way](../types/Sprite16Way.md) · _optional_ · **Default:** `Value of `rail_endings``

### east

**Type:** [RailPieceLayers](../types/RailPieceLayers.md)

### fog_mask

**Type:** [RailsFogMaskDefinitions](../types/RailsFogMaskDefinitions.md) · _optional_

### front_rail_endings

**Type:** [Sprite16Way](../types/Sprite16Way.md) · _optional_ · **Default:** `Value of `rail_endings``

### north

**Type:** [RailPieceLayers](../types/RailPieceLayers.md)

### northeast

**Type:** [RailPieceLayers](../types/RailPieceLayers.md)

### northwest

**Type:** [RailPieceLayers](../types/RailPieceLayers.md)

### rail_endings

**Type:** [Sprite16Way](../types/Sprite16Way.md) · _optional_

Can be used to load rail endings instead of the front and back variants.

Only loaded if `front_rail_endings` or `back_rail_endings` are not defined.

### render_layers

**Type:** [RailRenderLayers](../types/RailRenderLayers.md)

### secondary_render_layers

**Type:** [RailRenderLayers](../types/RailRenderLayers.md) · _optional_ · **Default:** `Value of `render_layers``

### segment_visualisation_endings

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Must contain exactly 16 directions and 6 frames.

### slice_origin

**Type:** [RailsSliceOffsets](../types/RailsSliceOffsets.md) · _optional_

### south

**Type:** [RailPieceLayers](../types/RailPieceLayers.md)

### southeast

**Type:** [RailPieceLayers](../types/RailPieceLayers.md)

### southwest

**Type:** [RailPieceLayers](../types/RailPieceLayers.md)

### west

**Type:** [RailPieceLayers](../types/RailPieceLayers.md)
