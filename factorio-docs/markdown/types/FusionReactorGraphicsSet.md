# FusionReactorGraphicsSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [connections_graphics](#connections-graphics) | array[[FusionReactorConnectionGraphics](../types/FusionReactorConnectionGraphics.md)] | yes |
| [default_fuel_glow_color](#default-fuel-glow-color) | [Color](../types/Color.md) | yes |
| [direction_to_connections_graphics](#direction-to-connections-graphics) | dictionary[[DirectionString](../types/DirectionString.md) → array[[uint8](../types/uint8.md)]] | yes |
| [fusion_effect_uv_map](#fusion-effect-uv-map) | [Sprite](../types/Sprite.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [plasma_category](#plasma-category) | [NeighbourConnectableConnectionCategory](../types/NeighbourConnectableConnectionCategory.md) |  |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [structure](#structure) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [use_fuel_glow_color](#use-fuel-glow-color) | [boolean](../types/boolean.md) | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |
| [working_light_pictures](#working-light-pictures) | [Sprite4Way](../types/Sprite4Way.md) | yes |

### connections_graphics

**Type:** array[[FusionReactorConnectionGraphics](../types/FusionReactorConnectionGraphics.md)] · _optional_

### default_fuel_glow_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{1, 1, 1}``

### direction_to_connections_graphics

**Type:** dictionary[[DirectionString](../types/DirectionString.md) → array[[uint8](../types/uint8.md)]] · _optional_

### fusion_effect_uv_map

**Type:** [Sprite](../types/Sprite.md) · _optional_

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### plasma_category

**Type:** [NeighbourConnectableConnectionCategory](../types/NeighbourConnectableConnectionCategory.md)

Cannot be an empty string.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### structure

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### use_fuel_glow_color

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_

Refer to [EntityPrototype::water_reflection](../prototypes/EntityPrototype.md#water-reflection).

### working_light_pictures

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_
