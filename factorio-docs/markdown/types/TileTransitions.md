# TileTransitions

_type_

Used for [TilePrototype](../prototypes/TilePrototype.md) graphics.

Use `layout` with `spritesheet` to define all the tile layers inside the `layout` property. The `*_enabled`, `*_layout` and `*_spritesheet` properties can be used to override specific layers of a reused layout.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [apply_effect_color_to_overlay](#apply-effect-color-to-overlay) | [boolean](../types/boolean.md) | yes |
| [apply_waving_effect_on_background_mask](#apply-waving-effect-on-background-mask) | [boolean](../types/boolean.md) | yes |
| [apply_waving_effect_on_masks](#apply-waving-effect-on-masks) | [boolean](../types/boolean.md) | yes |
| [auxiliary_effect_mask_enabled](#auxiliary-effect-mask-enabled) | [boolean](../types/boolean.md) | yes |
| [auxiliary_effect_mask_layout](#auxiliary-effect-mask-layout) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [auxiliary_effect_mask_spritesheet](#auxiliary-effect-mask-spritesheet) | [FileName](../types/FileName.md) | yes |
| [background_enabled](#background-enabled) | [boolean](../types/boolean.md) | yes |
| [background_layer_group](#background-layer-group) | [TileRenderLayer](../types/TileRenderLayer.md) | yes |
| [background_layer_occludes_light](#background-layer-occludes-light) | [boolean](../types/boolean.md) | yes |
| [background_layer_offset](#background-layer-offset) | [int8](../types/int8.md) | yes |
| [background_layout](#background-layout) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [background_mask_enabled](#background-mask-enabled) | [boolean](../types/boolean.md) | yes |
| [background_mask_layout](#background-mask-layout) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [background_mask_spritesheet](#background-mask-spritesheet) | [FileName](../types/FileName.md) | yes |
| [background_spritesheet](#background-spritesheet) | [FileName](../types/FileName.md) | yes |
| [double_side_variations_in_group](#double-side-variations-in-group) | [uint8](../types/uint8.md) | yes |
| [double_side_weights](#double-side-weights) | array[[float](../types/float.md)] | yes |
| [draw_background_layer_under_tiles](#draw-background-layer-under-tiles) | [boolean](../types/boolean.md) | yes |
| [draw_simple_outer_corner_over_diagonal](#draw-simple-outer-corner-over-diagonal) | [boolean](../types/boolean.md) | yes |
| [effect_map_enabled](#effect-map-enabled) | [boolean](../types/boolean.md) | yes |
| [effect_map_layout](#effect-map-layout) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [effect_map_spritesheet](#effect-map-spritesheet) | [FileName](../types/FileName.md) | yes |
| [inner_corner_weights](#inner-corner-weights) | array[[float](../types/float.md)] | yes |
| [layout](#layout) | [TileTransitionSpritesheetLayout](../types/TileTransitionSpritesheetLayout.md) | yes |
| [lightmap_enabled](#lightmap-enabled) | [boolean](../types/boolean.md) | yes |
| [lightmap_layout](#lightmap-layout) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [lightmap_spritesheet](#lightmap-spritesheet) | [FileName](../types/FileName.md) | yes |
| [mask_enabled](#mask-enabled) | [boolean](../types/boolean.md) | yes |
| [mask_layout](#mask-layout) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [mask_spritesheet](#mask-spritesheet) | [FileName](../types/FileName.md) | yes |
| [masked_background_layer_offset](#masked-background-layer-offset) | [int8](../types/int8.md) | yes |
| [masked_overlay_layer_offset](#masked-overlay-layer-offset) | [int8](../types/int8.md) | yes |
| [offset_background_layer_by_tile_layer](#offset-background-layer-by-tile-layer) | [boolean](../types/boolean.md) | yes |
| [outer_corner_weights](#outer-corner-weights) | array[[float](../types/float.md)] | yes |
| [overlay_enabled](#overlay-enabled) | [boolean](../types/boolean.md) | yes |
| [overlay_layer_group](#overlay-layer-group) | [TileRenderLayer](../types/TileRenderLayer.md) | yes |
| [overlay_layer_offset](#overlay-layer-offset) | [int8](../types/int8.md) | yes |
| [overlay_layout](#overlay-layout) | [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) | yes |
| [side_variations_in_group](#side-variations-in-group) | [uint8](../types/uint8.md) | yes |
| [side_weights](#side-weights) | array[[float](../types/float.md)] | yes |
| [spritesheet](#spritesheet) | [FileName](../types/FileName.md) | yes |
| [u_transition_weights](#u-transition-weights) | array[[float](../types/float.md)] | yes |
| [water_patch](#water-patch) | [Sprite](../types/Sprite.md) | yes |
| [waving_effect_time_scale](#waving-effect-time-scale) | [float](../types/float.md) | yes |

### apply_effect_color_to_overlay

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### apply_waving_effect_on_background_mask

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `Value of `apply_waving_effect_on_masks``

### apply_waving_effect_on_masks

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### auxiliary_effect_mask_enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### auxiliary_effect_mask_layout

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Overrides the `auxiliary_effect_mask` definition inside `layout`.

### auxiliary_effect_mask_spritesheet

**Type:** [FileName](../types/FileName.md) · _optional_ · **Default:** `Value of `spritesheet``

Only loaded if `layout` or `auxiliary_effect_mask_layout` is defined.

Default spritesheet for `auxiliary_effect_mask_layout` and `layout.auxiliary_effect_mask`.

### background_enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### background_layer_group

**Type:** [TileRenderLayer](../types/TileRenderLayer.md) · _optional_

### background_layer_occludes_light

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If drawing under water which is supposed to yield water mask, set this to `false` to not mess up the water mask.

### background_layer_offset

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### background_layout

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Overrides the `background` definition inside `layout`.

### background_mask_enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### background_mask_layout

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Overrides the `background_mask` definition inside `layout`.

### background_mask_spritesheet

**Type:** [FileName](../types/FileName.md) · _optional_ · **Default:** `Value of `spritesheet``

Only loaded if `layout` or `background_mask_layout` is defined.

Default spritesheet for `background_mask_layout` and `layout.background_mask`.

### background_spritesheet

**Type:** [FileName](../types/FileName.md) · _optional_ · **Default:** `Value of `spritesheet``

Only loaded if `layout` or `background_layout` is defined.

Default spritesheet for `background_layout` and `layout.background`.

### double_side_variations_in_group

**Type:** [uint8](../types/uint8.md) · _optional_

### double_side_weights

**Type:** array[[float](../types/float.md)] · _optional_

### draw_background_layer_under_tiles

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### draw_simple_outer_corner_over_diagonal

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### effect_map_enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### effect_map_layout

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Overrides the `effect_map` definition inside `layout`.

### effect_map_spritesheet

**Type:** [FileName](../types/FileName.md) · _optional_ · **Default:** `Value of `spritesheet``

Only loaded if `layout` or `effect_map_layout` is defined.

Default spritesheet for `effect_map_layout` and `layout.effect_map`.

### inner_corner_weights

**Type:** array[[float](../types/float.md)] · _optional_

### layout

**Type:** [TileTransitionSpritesheetLayout](../types/TileTransitionSpritesheetLayout.md) · _optional_

### lightmap_enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### lightmap_layout

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Overrides the `lightmap` definition inside `layout`.

### lightmap_spritesheet

**Type:** [FileName](../types/FileName.md) · _optional_ · **Default:** `Value of `spritesheet``

Only loaded if `layout` or `lightmap_layout` is defined.

Default spritesheet for `lightmap_layout` and `layout.lightmap`.

### mask_enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### mask_layout

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Overrides the `mask` definition inside `layout`.

### mask_spritesheet

**Type:** [FileName](../types/FileName.md) · _optional_ · **Default:** `Value of `spritesheet``

Only loaded if `layout` or `mask_layout` is defined.

Default spritesheet for `mask_layout` and `layout.mask`.

### masked_background_layer_offset

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `Value of `background_layer_offset``

### masked_overlay_layer_offset

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### offset_background_layer_by_tile_layer

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### outer_corner_weights

**Type:** array[[float](../types/float.md)] · _optional_

### overlay_enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### overlay_layer_group

**Type:** [TileRenderLayer](../types/TileRenderLayer.md) · _optional_

### overlay_layer_offset

**Type:** [int8](../types/int8.md) · _optional_

### overlay_layout

**Type:** [TileTransitionVariantLayout](../types/TileTransitionVariantLayout.md) · _optional_

Overrides the `overlay` definition inside `layout`.

### side_variations_in_group

**Type:** [uint8](../types/uint8.md) · _optional_

### side_weights

**Type:** array[[float](../types/float.md)] · _optional_

### spritesheet

**Type:** [FileName](../types/FileName.md) · _optional_

Default spritesheet for all TileSpriteLayouts.

### u_transition_weights

**Type:** array[[float](../types/float.md)] · _optional_

### water_patch

**Type:** [Sprite](../types/Sprite.md) · _optional_

### waving_effect_time_scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.15}`
