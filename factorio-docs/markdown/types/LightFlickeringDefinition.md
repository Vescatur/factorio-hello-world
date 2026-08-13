# LightFlickeringDefinition

_type_

Specifies the light flicker. Note that this defaults to "showing a white light" instead of the usually expected "showing nothing".

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [border_fix_speed](#border-fix-speed) | [float](../types/float.md) | yes |
| [color](#color) | [Color](../types/Color.md) | yes |
| [derivation_change_deviation](#derivation-change-deviation) | [float](../types/float.md) | yes |
| [derivation_change_frequency](#derivation-change-frequency) | [float](../types/float.md) | yes |
| [light_intensity_to_size_coefficient](#light-intensity-to-size-coefficient) | [float](../types/float.md) | yes |
| [maximum_intensity](#maximum-intensity) | [float](../types/float.md) | yes |
| [minimum_intensity](#minimum-intensity) | [float](../types/float.md) | yes |
| [minimum_light_size](#minimum-light-size) | [float](../types/float.md) | yes |

### border_fix_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.02}`

### color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `{r=1, g=1, b=1} (White)`

Color of the light.

### derivation_change_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.06}`

### derivation_change_frequency

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.3}`

### light_intensity_to_size_coefficient

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

### maximum_intensity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.8}`

Brightness of the light in the range `[0, 1]` where `0` is no light and `1` is the maximum light.

### minimum_intensity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.2}`

Brightness of the light in the range `[0, 1]` where `0` is no light and `1` is the maximum light.

### minimum_light_size

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

The radius of the light in tiles. Note, that the light gets darker near the edges, so the effective size of the light seems to be smaller.
