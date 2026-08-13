# WaterTileEffectParameters

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation_scale](#animation-scale) | [float](../types/float.md) ∣ tuple[[float](../types/float.md), [float](../types/float.md)] |  |
| [animation_speed](#animation-speed) | [float](../types/float.md) |  |
| [dark_threshold](#dark-threshold) | [float](../types/float.md) ∣ tuple[[float](../types/float.md), [float](../types/float.md)] |  |
| [far_zoom](#far-zoom) | [float](../types/float.md) | yes |
| [foam_color](#foam-color) | [Color](../types/Color.md) |  |
| [foam_color_multiplier](#foam-color-multiplier) | [float](../types/float.md) |  |
| [lightmap_alpha](#lightmap-alpha) | [float](../types/float.md) | yes |
| [near_zoom](#near-zoom) | [float](../types/float.md) | yes |
| [reflection_threshold](#reflection-threshold) | [float](../types/float.md) ∣ tuple[[float](../types/float.md), [float](../types/float.md)] |  |
| [secondary_texture_variations_columns](#secondary-texture-variations-columns) | [uint8](../types/uint8.md) | yes |
| [secondary_texture_variations_rows](#secondary-texture-variations-rows) | [uint8](../types/uint8.md) | yes |
| [shader_variation](#shader-variation) | [EffectVariation](../types/EffectVariation.md) | yes |
| [specular_lightness](#specular-lightness) | [Color](../types/Color.md) |  |
| [specular_threshold](#specular-threshold) | [float](../types/float.md) ∣ tuple[[float](../types/float.md), [float](../types/float.md)] |  |
| [texture_variations_columns](#texture-variations-columns) | [uint8](../types/uint8.md) | yes |
| [texture_variations_rows](#texture-variations-rows) | [uint8](../types/uint8.md) | yes |
| [textures](#textures) | array[[EffectTexture](../types/EffectTexture.md)] |  |
| [tick_scale](#tick-scale) | [float](../types/float.md) |  |

### animation_scale

**Type:** [float](../types/float.md) ∣ tuple[[float](../types/float.md), [float](../types/float.md)]

### animation_speed

**Type:** [float](../types/float.md)

### dark_threshold

**Type:** [float](../types/float.md) ∣ tuple[[float](../types/float.md), [float](../types/float.md)]

### far_zoom

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

### foam_color

**Type:** [Color](../types/Color.md)

### foam_color_multiplier

**Type:** [float](../types/float.md)

### lightmap_alpha

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Value 0 makes water appear as water in water mask, but does not occlude lights, and doesn't overwrite lightmap alpha drawn to pixel previously (by background layer of tile transition, or underwater sprite). Light emitted by water-like-tile (for example lava) will blend additively with previously rendered light. Value 1 makes water occlude lights, but won't be recognized as water in water mask used for masking decals by water.

### near_zoom

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 2.0}`

### reflection_threshold

**Type:** [float](../types/float.md) ∣ tuple[[float](../types/float.md), [float](../types/float.md)]

### secondary_texture_variations_columns

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### secondary_texture_variations_rows

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### shader_variation

**Type:** [EffectVariation](../types/EffectVariation.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'water'}`

### specular_lightness

**Type:** [Color](../types/Color.md)

### specular_threshold

**Type:** [float](../types/float.md) ∣ tuple[[float](../types/float.md), [float](../types/float.md)]

### texture_variations_columns

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### texture_variations_rows

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### textures

**Type:** array[[EffectTexture](../types/EffectTexture.md)]

Texture size must be 512x512. Shader variant `"water"` must have 1 texture, `"lava"` and `"wetland-water"` must have 2 textures and `"oil"` must have 4 textures.

### tick_scale

**Type:** [float](../types/float.md)
