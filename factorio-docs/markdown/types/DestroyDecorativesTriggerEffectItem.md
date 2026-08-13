# DestroyDecorativesTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [decoratives_with_trigger_only](#decoratives-with-trigger-only) | [boolean](../types/boolean.md) | yes |
| [from_render_layer](#from-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [include_decals](#include-decals) | [boolean](../types/boolean.md) | yes |
| [include_soft_decoratives](#include-soft-decoratives) | [boolean](../types/boolean.md) | yes |
| [invoke_decorative_trigger](#invoke-decorative-trigger) | [boolean](../types/boolean.md) | yes |
| [radius](#radius) | [float](../types/float.md) |  |
| [to_render_layer](#to-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [type](#type) | `"destroy-decoratives"` |  |

### decoratives_with_trigger_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, only decoratives with a [DecorativePrototype::trigger_effect](../prototypes/DecorativePrototype.md#trigger-effect) will be destroyed.

### from_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `first layer`

### include_decals

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### include_soft_decoratives

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Soft decoratives are those where [DecorativePrototype::grows_through_rail_path](../prototypes/DecorativePrototype.md#grows-through-rail-path) is `true`.

### invoke_decorative_trigger

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### radius

**Type:** [float](../types/float.md)

### to_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `last layer`

### type

**Type:** `"destroy-decoratives"`
