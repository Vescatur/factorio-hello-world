# SoundPrototype

_prototype_

**Prototype type string:** `type = "sound"`

Specifies a sound that can be used with [SoundPath](../concepts/SoundPath.md) at runtime.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [advanced_volume_control](#advanced-volume-control) | [AdvancedVolumeControl](../types/AdvancedVolumeControl.md) | yes |
| [aggregation](#aggregation) | [AggregationSpecification](../types/AggregationSpecification.md) | yes |
| [allow_random_repeat](#allow-random-repeat) | [boolean](../types/boolean.md) | yes |
| [audible_distance_modifier](#audible-distance-modifier) | [double](../types/double.md) | yes |
| [category](#category) | [SoundType](../types/SoundType.md) | yes |
| [filename](#filename) | [FileName](../types/FileName.md) | yes |
| [game_controller_vibration_data](#game-controller-vibration-data) | [GameControllerVibrationData](../types/GameControllerVibrationData.md) | yes |
| [max_speed](#max-speed) | [float](../types/float.md) | yes |
| [max_volume](#max-volume) | [float](../types/float.md) | yes |
| [min_speed](#min-speed) | [float](../types/float.md) | yes |
| [min_volume](#min-volume) | [float](../types/float.md) | yes |
| [modifiers](#modifiers) | [SoundModifier](../types/SoundModifier.md) ∣ array[[SoundModifier](../types/SoundModifier.md)] | yes |
| [name](#name) | [string](../types/string.md) |  |
| [preload](#preload) | [boolean](../types/boolean.md) | yes |
| [priority](#priority) | [uint8](../types/uint8.md) | yes |
| [speed](#speed) | [float](../types/float.md) | yes |
| [speed_smoothing_window_size](#speed-smoothing-window-size) | [uint32](../types/uint32.md) | yes |
| [type](#type) | `"sound"` |  |
| [variations](#variations) | [SoundDefinition](../types/SoundDefinition.md) ∣ array[[SoundDefinition](../types/SoundDefinition.md)] | yes |
| [volume](#volume) | [float](../types/float.md) | yes |

### advanced_volume_control

**Type:** [AdvancedVolumeControl](../types/AdvancedVolumeControl.md) · _optional_

### aggregation

**Type:** [AggregationSpecification](../types/AggregationSpecification.md) · _optional_

### allow_random_repeat

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### audible_distance_modifier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Modifies how far a sound can be heard. Must be between `0` and `1` inclusive.

### category

**Type:** [SoundType](../types/SoundType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'game-effect'}`

### filename

**Type:** [FileName](../types/FileName.md) · _optional_

Supported sound file formats are `.ogg` (Vorbis and Opus) and `.wav`.

Only loaded, and mandatory if `variations` is not defined.

### game_controller_vibration_data

**Type:** [GameControllerVibrationData](../types/GameControllerVibrationData.md) · _optional_

### max_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Must be `>= min_speed`.

Only loaded if `variations` is not defined. Only loaded, and mandatory if `min_speed` is defined.

### max_volume

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Only loaded if `variations` is not defined.

Only loaded if `min_volume` is defined.

Must be `>= min_volume`.

### min_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Must be `>= 1 / 64`.

Only loaded if both `variations` and `speed` are not defined.

### min_volume

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Only loaded if `variations` and `volume` are not defined.

Must be `>= 0`.

### modifiers

**Type:** [SoundModifier](../types/SoundModifier.md) ∣ array[[SoundModifier](../types/SoundModifier.md)] · _optional_

Only loaded if `variations` is not defined.

### name

**Type:** [string](../types/string.md)

Name of the sound. Can be used as a [SoundPath](../concepts/SoundPath.md) at runtime.

### preload

**Type:** [boolean](../types/boolean.md) · _optional_

Only loaded if `variations` is not defined.

### priority

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 127}`

Sounds with higher priority will replace a sound with lower priority if the maximum sounds limit is reached.

0 is the highest priority, 255 is the lowest priority.

### speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Speed must be `>= 1 / 64`. This sets both min and max speeds.

Only loaded if `variations` is not defined.

### speed_smoothing_window_size

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### type

**Type:** `"sound"`

### variations

**Type:** [SoundDefinition](../types/SoundDefinition.md) ∣ array[[SoundDefinition](../types/SoundDefinition.md)] · _optional_

### volume

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Only loaded if `variations` is not defined.

This sets both min and max volumes.

Must be `>= 0`.
