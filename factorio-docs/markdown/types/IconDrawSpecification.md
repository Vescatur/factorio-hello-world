# IconDrawSpecification

_type_

Specification of where and how the alt-mode icons of entities should be drawn.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [render_layer](#render-layer) | `"entity-info-icon"` ∣ `"entity-info-icon-above"` ∣ `"air-entity-info-icon"` | yes |
| [scale](#scale) | [float](../types/float.md) | yes |
| [scale_for_many](#scale-for-many) | [float](../types/float.md) | yes |
| [shift](#shift) | [Vector](../types/Vector.md) | yes |

### render_layer

**Type:** `"entity-info-icon"` ∣ `"entity-info-icon-above"` ∣ `"air-entity-info-icon"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'entity-info-icon'}`

Render layer of the icon.

### scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### scale_for_many

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Scale of the icon when there are many items.

### shift

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``
