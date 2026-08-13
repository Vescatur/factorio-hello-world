# AdvancedVolumeControl

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [attenuation](#attenuation) | [Fade](../types/Fade.md) | yes |
| [darkness_threshold](#darkness-threshold) | [float](../types/float.md) | yes |
| [fades](#fades) | [Fades](../types/Fades.md) | yes |

### attenuation

**Type:** [Fade](../types/Fade.md) · _optional_

Volume reduction (fade-out) controlled by distance (fraction of audible distance).

### darkness_threshold

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Has to be in the range [-1.0, 1.0].

Positive values are used for night sounds, the volume of the sound is 1.0 when darkness = threshold, 0.0 when darkness = 0.0 and linearly interpolated in between.

Negative values are used for day sounds, the sound of the sound is 0.0  when darkness = -threshold, 1.0 when darkness = 1.0 and linearly interpolated in between.

### fades

**Type:** [Fades](../types/Fades.md) · _optional_

Volume reduction (fade-out) or increase (fade-in) controlled by zoom level.
