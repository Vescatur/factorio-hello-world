# CloudsEffectProperties

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [additional_density_sample](#additional-density-sample) | [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md) |  |
| [density](#density) | [float](../types/float.md) | yes |
| [density_at_night](#density-at-night) | [float](../types/float.md) | yes |
| [detail_exponent](#detail-exponent) | [float](../types/float.md) | yes |
| [detail_factor](#detail-factor) | [float](../types/float.md) | yes |
| [detail_factor_at_night](#detail-factor-at-night) | [float](../types/float.md) | yes |
| [detail_noise_texture](#detail-noise-texture) | [EffectTexture](../types/EffectTexture.md) |  |
| [detail_sample_1](#detail-sample-1) | [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md) |  |
| [detail_sample_2](#detail-sample-2) | [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md) |  |
| [detail_sample_morph_duration](#detail-sample-morph-duration) | [uint32](../types/uint32.md) | yes |
| [movement_speed_multiplier](#movement-speed-multiplier) | [float](../types/float.md) | yes |
| [opacity](#opacity) | [float](../types/float.md) | yes |
| [opacity_at_night](#opacity-at-night) | [float](../types/float.md) | yes |
| [scale](#scale) | [float](../types/float.md) | yes |
| [shape_factor](#shape-factor) | [float](../types/float.md) | yes |
| [shape_noise_texture](#shape-noise-texture) | [EffectTexture](../types/EffectTexture.md) |  |
| [shape_warp_strength](#shape-warp-strength) | [float](../types/float.md) | yes |
| [shape_warp_weight](#shape-warp-weight) | [float](../types/float.md) | yes |
| [warp_sample_1](#warp-sample-1) | [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md) |  |
| [warp_sample_2](#warp-sample-2) | [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md) |  |
| [warped_shape_sample](#warped-shape-sample) | [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md) |  |

### additional_density_sample

**Type:** [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md)

### density

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### density_at_night

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `density``

### detail_exponent

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

### detail_factor

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.5}`

### detail_factor_at_night

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `detail_factor``

### detail_noise_texture

**Type:** [EffectTexture](../types/EffectTexture.md)

### detail_sample_1

**Type:** [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md)

### detail_sample_2

**Type:** [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md)

### detail_sample_morph_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 256}`

When set to 0, detail textures are not being "morphed" to each other, but lerped with ratio 0.5 instead.

### movement_speed_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.75}`

### opacity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.25}`

### opacity_at_night

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### shape_factor

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -1}`

### shape_noise_texture

**Type:** [EffectTexture](../types/EffectTexture.md)

### shape_warp_strength

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.06}`

### shape_warp_weight

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.4}`

### warp_sample_1

**Type:** [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md)

### warp_sample_2

**Type:** [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md)

### warped_shape_sample

**Type:** [CloudsTextureCoordinateTransformation](../types/CloudsTextureCoordinateTransformation.md)
