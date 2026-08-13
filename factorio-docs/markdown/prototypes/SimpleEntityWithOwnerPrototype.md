# SimpleEntityWithOwnerPrototype

_prototype_

**Prototype type string:** `type = "simple-entity-with-owner"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Has a force, but unlike [SimpleEntityWithForcePrototype](../prototypes/SimpleEntityWithForcePrototype.md) it is only attacked if the biters get stuck on it (or if [EntityWithOwnerPrototype::is_military_target](../prototypes/EntityWithOwnerPrototype.md#is-military-target) set to true to make the two entity types equivalent).

Can be rotated in 4 directions. `picture` can be used to specify different graphics per direction.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animations](#animations) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [force_visibility](#force-visibility) | [ForceCondition](../types/ForceCondition.md) | yes |
| [lower_pictures](#lower-pictures) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [lower_render_layer](#lower-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [picture](#picture) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [pictures](#pictures) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [random_animation_offset](#random-animation-offset) | [boolean](../types/boolean.md) | yes |
| [random_variation_on_create](#random-variation-on-create) | [boolean](../types/boolean.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [secondary_draw_order](#secondary-draw-order) | [int8](../types/int8.md) | yes |
| [stateless_visualisation_variations](#stateless-visualisation-variations) | array[[StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)]] | yes |

### animations

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### force_visibility

**Type:** [ForceCondition](../types/ForceCondition.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'all'}`

If the entity is not visible to a player, the player cannot select it.

### lower_pictures

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

Loaded and drawn with all `pictures`, `picture` and `animations`. If graphics variation is larger than number of `lower_pictures` variations this layer is not drawn.

### lower_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'lower-object'}`

### picture

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

Takes priority over `animations`.

### pictures

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

Takes priority over `picture` and `animations`.

### random_animation_offset

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### random_variation_on_create

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether a random graphics variation is chosen when placing the entity/creating it via script/creating it via map generation. If this is false, the entity will use the first variation instead of a random one.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Used to determine render order for entities with the same `render_layer` in the same position. Entities with a higher `secondary_draw_order` are drawn on top.

### stateless_visualisation_variations

**Type:** array[[StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)]] · _optional_
