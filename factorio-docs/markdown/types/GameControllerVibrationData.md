# GameControllerVibrationData

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [duration](#duration) | [uint32](../types/uint32.md) | yes |
| [high_frequency_vibration_intensity](#high-frequency-vibration-intensity) | [float](../types/float.md) | yes |
| [low_frequency_vibration_intensity](#low-frequency-vibration-intensity) | [float](../types/float.md) | yes |
| [play_for](#play-for) | [PlayFor](../types/PlayFor.md) | yes |

### duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Duration in milliseconds.

### high_frequency_vibration_intensity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Vibration intensity must be between 0 and 1.

### low_frequency_vibration_intensity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Vibration intensity must be between 0 and 1.

### play_for

**Type:** [PlayFor](../types/PlayFor.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'character_actions'}`
