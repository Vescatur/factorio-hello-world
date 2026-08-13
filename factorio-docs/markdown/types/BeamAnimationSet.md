# BeamAnimationSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [body](#body) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [ending](#ending) | [Animation](../types/Animation.md) | yes |
| [head](#head) | [Animation](../types/Animation.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [start](#start) | [Animation](../types/Animation.md) | yes |
| [tail](#tail) | [Animation](../types/Animation.md) | yes |

### body

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

Body segment of the beam.

### ending

**Type:** [Animation](../types/Animation.md) · _optional_

End point of the beam.

### head

**Type:** [Animation](../types/Animation.md) · _optional_

Head segment of the beam.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'projectile'}`

### start

**Type:** [Animation](../types/Animation.md) · _optional_

Start point of the beam.

### tail

**Type:** [Animation](../types/Animation.md) · _optional_

Tail segment of the beam.
