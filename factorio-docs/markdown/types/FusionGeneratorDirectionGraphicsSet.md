# FusionGeneratorDirectionGraphicsSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation](#animation) | [Animation](../types/Animation.md) | yes |
| [fluid_input_graphics](#fluid-input-graphics) | array[[FusionGeneratorFluidInputGraphics](../types/FusionGeneratorFluidInputGraphics.md)] | yes |
| [fusion_effect_uv_map](#fusion-effect-uv-map) | [Sprite](../types/Sprite.md) | yes |
| [working_light](#working-light) | [Animation](../types/Animation.md) | yes |

### animation

**Type:** [Animation](../types/Animation.md) · _optional_

### fluid_input_graphics

**Type:** array[[FusionGeneratorFluidInputGraphics](../types/FusionGeneratorFluidInputGraphics.md)] · _optional_

The amount of items in this array has to match the amount of [input fluid connections](../prototypes/FusionGeneratorPrototype.md#input-fluid-box). Empty tables can be used as items to fulfill this requirement without defining graphics.

### fusion_effect_uv_map

**Type:** [Sprite](../types/Sprite.md) · _optional_

### working_light

**Type:** [Animation](../types/Animation.md) · _optional_
