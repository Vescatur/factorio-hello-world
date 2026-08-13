# SoundDefinition

_type_

**Definition:** struct (see properties below) ∣ [FileName](../types/FileName.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [filename](#filename) | [FileName](../types/FileName.md) |  |
| [max_speed](#max-speed) | [float](../types/float.md) | yes |
| [max_volume](#max-volume) | [float](../types/float.md) | yes |
| [min_speed](#min-speed) | [float](../types/float.md) | yes |
| [min_volume](#min-volume) | [float](../types/float.md) | yes |
| [modifiers](#modifiers) | [SoundModifier](../types/SoundModifier.md) ∣ array[[SoundModifier](../types/SoundModifier.md)] | yes |
| [preload](#preload) | [boolean](../types/boolean.md) | yes |
| [speed](#speed) | [float](../types/float.md) | yes |
| [volume](#volume) | [float](../types/float.md) | yes |

### filename

**Type:** [FileName](../types/FileName.md)

Supported sound file formats are `.ogg` (Vorbis and Opus) and `.wav`.

### max_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Only loaded, and mandatory, if `min_speed` is defined.

Must be `>= min_speed`.

### max_volume

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Only loaded if `min_volume` is defined.

Must be `>= min_volume`.

### min_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Only loaded if `speed` is not defined.

Must be `>= 1 / 64`.

### min_volume

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Only loaded if `volume` is not defined.

Must be `>= 0`.

### modifiers

**Type:** [SoundModifier](../types/SoundModifier.md) ∣ array[[SoundModifier](../types/SoundModifier.md)] · _optional_

### preload

**Type:** [boolean](../types/boolean.md) · _optional_

### speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Speed must be `>= 1 / 64`. This sets both min and max speeds.

### volume

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

This sets both min and max volumes.

Must be `>= 0`.
