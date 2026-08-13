# SimpleEntityPrototype

_prototype_

**Prototype type string:** `type = "simple-entity"`

**Inherits from:** [EntityWithHealthPrototype](../prototypes/EntityWithHealthPrototype.md)

An extremely basic entity with no special functionality. Used for minable rocks. Cannot be rotated.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animations](#animations) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [count_as_rock_for_filtered_deconstruction](#count-as-rock-for-filtered-deconstruction) | [boolean](../types/boolean.md) | yes |
| [lower_pictures](#lower-pictures) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [lower_render_layer](#lower-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [picture](#picture) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [pictures](#pictures) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [random_animation_offset](#random-animation-offset) | [boolean](../types/boolean.md) | yes |
| [random_variation_on_create](#random-variation-on-create) | [boolean](../types/boolean.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [secondary_draw_order](#secondary-draw-order) | [int8](../types/int8.md) | yes |
| [shuffled_variation_on_chunk_generated](#shuffled-variation-on-chunk-generated) | [boolean](../types/boolean.md) | yes |
| [stateless_visualisation_variations](#stateless-visualisation-variations) | array[[StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)]] | yes |

### animations

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### count_as_rock_for_filtered_deconstruction

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this entity should be treated as a rock for the purpose of deconstruction and for [CarPrototype::immune_to_rock_impacts](../prototypes/CarPrototype.md#immune-to-rock-impacts).

### lower_pictures

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

### lower_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'lower-object'}`

### picture

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

Takes priority over `animations`. Only the `north` sprite is used because this entity cannot be rotated.

### pictures

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

Takes priority over `picture` and `animations`.

### random_animation_offset

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### random_variation_on_create

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether a random graphics variation is chosen when placing the entity/creating it via script/creating it via map generation. If this is `false`, the entity will use the first variation instead of a random one.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Used to determine render order for entities with the same `render_layer` in the same position. Entities with a higher `secondary_draw_order` are drawn on top.

### shuffled_variation_on_chunk_generated

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If true, map generator will shuffle graphics variations for each chunk and pick the next one in sequence instead of making it purely position-based. This prevents identical entity variations from being too close to each other. This property overrides random_variation_on_create.

### stateless_visualisation_variations

**Type:** array[[StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)]] · _optional_

Loaded and drawn with all `pictures`, `picture` and `animations`. If graphics variation is larger than number of `lower_pictures` variations this layer is not drawn.
