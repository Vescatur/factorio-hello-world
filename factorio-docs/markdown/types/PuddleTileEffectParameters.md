# PuddleTileEffectParameters

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [puddle_noise_texture](#puddle-noise-texture) | [EffectTexture](../types/EffectTexture.md) |  |
| [water_effect](#water-effect) | [TileEffectDefinitionID](../types/TileEffectDefinitionID.md) | yes |
| [water_effect_parameters](#water-effect-parameters) | [WaterTileEffectParameters](../types/WaterTileEffectParameters.md) | yes |

### puddle_noise_texture

**Type:** [EffectTexture](../types/EffectTexture.md)

### water_effect

**Type:** [TileEffectDefinitionID](../types/TileEffectDefinitionID.md) · _optional_

Only loaded, and mandatory if `water_effect_parameters` is not defined. Must be name of a [TileEffectDefinition](../prototypes/TileEffectDefinition.md) which has `shader` set to `"water"`.

### water_effect_parameters

**Type:** [WaterTileEffectParameters](../types/WaterTileEffectParameters.md) · _optional_
