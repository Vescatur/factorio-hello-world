# DecorativePrototype

_prototype_

**Prototype type string:** `type = "optimized-decorative"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

Simple decorative purpose objects on the map, they have no health and some of them are removed when the player builds over. Usually used for grass patches, roots, small plants etc.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [autoplace](#autoplace) | [AutoplaceSpecification](../types/AutoplaceSpecification.md) | yes |
| [collision_box](#collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [collision_mask](#collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [decal_overdraw_priority](#decal-overdraw-priority) | [uint16](../types/uint16.md) | yes |
| [grows_through_rail_path](#grows-through-rail-path) | [boolean](../types/boolean.md) | yes |
| [minimal_separation](#minimal-separation) | [double](../types/double.md) | yes |
| [opacity_over_water](#opacity-over-water) | [float](../types/float.md) | yes |
| [pictures](#pictures) | [SpriteVariations](../types/SpriteVariations.md) |  |
| [placed_effect](#placed-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [stateless_visualisation](#stateless-visualisation) | [StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)] | yes |
| [stateless_visualisation_variations](#stateless-visualisation-variations) | array[[StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)]] | yes |
| [target_count](#target-count) | [uint16](../types/uint16.md) | yes |
| [tile_layer](#tile-layer) | [int16](../types/int16.md) | yes |
| [trigger_effect](#trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [walking_sound](#walking-sound) | [Sound](../types/Sound.md) | yes |

### autoplace

**Type:** [AutoplaceSpecification](../types/AutoplaceSpecification.md) · _optional_

### collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_

Must contain the [0,0] point. Max radius of the collision box is 8.

### collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

Defaults to the mask from [UtilityConstants::default_collision_masks](../prototypes/UtilityConstants.md#default-collision-masks) when indexed by `"decorative"`.

### decal_overdraw_priority

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Loaded only if `render_layer` = "decals". When decoratives are being spawned by [EnemySpawnerPrototype::spawn_decoration](../prototypes/EnemySpawnerPrototype.md#spawn-decoration) or [TurretPrototype::spawn_decoration](../prototypes/TurretPrototype.md#spawn-decoration), decals with `decal_overdraw_priority` greater than 0 will be filtered such that they don't overlap too much. If two or more decals would overlap, only the one with the largest value of `decal_overdraw_priority` is placed.

### grows_through_rail_path

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### minimal_separation

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### opacity_over_water

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Loaded only if `render_layer` = "decals". Value lower than 1 enables masking by water for decals with `tile_layer` greater or equal to [UtilityConstants::capture_water_mask_at_layer](../prototypes/UtilityConstants.md#capture-water-mask-at-layer). Water tiles must use water `tile-effect` with [WaterTileEffectParameters::lightmap_alpha](../types/WaterTileEffectParameters.md#lightmap-alpha) set to 0 or value less than 1. Graphics option `Occlude light sprites` must be enabled, as water mask is captured into terrain lightmap alpha channel. Tiles rendered in layer between [UtilityConstants::capture_water_mask_at_layer](../prototypes/UtilityConstants.md#capture-water-mask-at-layer) and decal's `tile_layer` will likely also mask decals in some way, as water mask will likely be 0 at their position, but this is considered undefined behavior.

### pictures

**Type:** [SpriteVariations](../types/SpriteVariations.md)

Must contain at least 1 picture.

### placed_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'decorative'}`

When "decals" render layer is used, the decorative is treated as decal. That means it will be rendered within tile layers instead of normal sprite layers.

### stateless_visualisation

**Type:** [StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)] · _optional_

Can be defined only when decorative is not "decal" (see `render_layer`).

### stateless_visualisation_variations

**Type:** array[[StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)]] · _optional_

Only loaded if `stateless_visualisation` is not defined. Can be defined only when decorative is not "decal" (see `render_layer`).

### target_count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### tile_layer

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Mandatory if `render_layer` = "decals". This int16 is converted to a [TileRenderLayer](../types/TileRenderLayer.md) internally. It is offset from `ground-natural`.

### trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

Called by [DestroyDecorativesTriggerEffectItem](../types/DestroyDecorativesTriggerEffectItem.md).

### walking_sound

**Type:** [Sound](../types/Sound.md) · _optional_
