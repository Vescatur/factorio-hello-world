# TreePrototype

_prototype_

**Prototype type string:** `type = "tree"`

**Inherits from:** [EntityWithHealthPrototype](../prototypes/EntityWithHealthPrototype.md)

A [tree](https://wiki.factorio.com/Tree).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [colors](#colors) | array[[Color](../types/Color.md)] | yes |
| [darkness_of_burnt_tree](#darkness-of-burnt-tree) | [float](../types/float.md) | yes |
| [healing_per_tick](#healing-per-tick) | [float](../types/float.md) | yes |
| [pictures](#pictures) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [stateless_visualisation_variations](#stateless-visualisation-variations) | array[[StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)]] | yes |
| [variation_weights](#variation-weights) | array[[float](../types/float.md)] | yes |
| [variations](#variations) | array[[TreeVariation](../types/TreeVariation.md)] | yes |

### colors

**Type:** array[[Color](../types/Color.md)] · _optional_

Mandatory if `variations` is defined.

### darkness_of_burnt_tree

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

### healing_per_tick

**Type:** [float](../types/float.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 0.001666}`

The amount of health automatically regenerated.

**Example:**

```
healing_per_tick = 0.01
```

### pictures

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

Mandatory if `variations` is not defined.

### stateless_visualisation_variations

**Type:** array[[StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)]] · _optional_

### variation_weights

**Type:** array[[float](../types/float.md)] · _optional_

### variations

**Type:** array[[TreeVariation](../types/TreeVariation.md)] · _optional_

If defined, it can't be empty.
