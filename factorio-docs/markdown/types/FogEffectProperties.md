# FogEffectProperties

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [color1](#color1) | [Color](../types/Color.md) | yes |
| [color2](#color2) | [Color](../types/Color.md) | yes |
| [detail_noise_texture](#detail-noise-texture) | [EffectTexture](../types/EffectTexture.md) |  |
| [fog_type](#fog-type) | `"vulcanus"` ∣ `"gleba"` | yes |
| [shape_noise_texture](#shape-noise-texture) | [EffectTexture](../types/EffectTexture.md) |  |
| [tick_factor](#tick-factor) | [float](../types/float.md) | yes |

### color1

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `{1, 1, 1, 1}`

### color2

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `{1, 1, 1, 1}`

### detail_noise_texture

**Type:** [EffectTexture](../types/EffectTexture.md)

### fog_type

**Type:** `"vulcanus"` ∣ `"gleba"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'vulcanus'}`

`gleba` type is rendered per chunk and opacity of fog depends on count of tiles with [lowland_fog](../prototypes/TilePrototype.md#lowland-fog) set to `true` on the chunk.

### shape_noise_texture

**Type:** [EffectTexture](../types/EffectTexture.md)

### tick_factor

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5e-06}`
