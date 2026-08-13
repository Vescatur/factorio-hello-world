# SpaceTileEffectParameters

_type_

Nebulae are rendered only behind tiles with the effect, but stars are rendered behind entire terrain. For that reason using two or more tile types with different space effect on one surface is not supported. The game will allow this to happen, but rendering will chose one star configuration for entire screen.

Zoom is recalculated using formula `max(1/1024, pow(max(0, zoom * base_factor + base_offset), exponent) * factor + offset)`.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [nebula_brightness](#nebula-brightness) | [float](../types/float.md) | yes |
| [nebula_saturation](#nebula-saturation) | [float](../types/float.md) | yes |
| [nebula_scale](#nebula-scale) | [float](../types/float.md) | yes |
| [scroll_factor](#scroll-factor) | [float](../types/float.md) | yes |
| [star_brightness](#star-brightness) | [float](../types/float.md) | yes |
| [star_density](#star-density) | [float](../types/float.md) | yes |
| [star_parallax](#star-parallax) | [float](../types/float.md) | yes |
| [star_saturations](#star-saturations) | [float](../types/float.md) | yes |
| [star_scale](#star-scale) | [float](../types/float.md) | yes |
| [star_shape](#star-shape) | [float](../types/float.md) | yes |
| [zoom_base_factor](#zoom-base-factor) | [float](../types/float.md) | yes |
| [zoom_base_offset](#zoom-base-offset) | [float](../types/float.md) | yes |
| [zoom_exponent](#zoom-exponent) | [float](../types/float.md) | yes |
| [zoom_factor](#zoom-factor) | [float](../types/float.md) | yes |
| [zoom_offset](#zoom-offset) | [float](../types/float.md) | yes |

### nebula_brightness

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

### nebula_saturation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.9}`

### nebula_scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.9}`

### scroll_factor

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.25}`

### star_brightness

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### star_density

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.01}`

### star_parallax

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.06}`

### star_saturations

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

### star_scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 100}`

### star_shape

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.666}`

### zoom_base_factor

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.25}`

### zoom_base_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.75}`

### zoom_exponent

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### zoom_factor

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### zoom_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
