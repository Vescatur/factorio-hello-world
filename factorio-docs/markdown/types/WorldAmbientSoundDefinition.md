# WorldAmbientSoundDefinition

_type_

**Definition:** struct (see properties below) ∣ [Sound](../types/Sound.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [average_pause_seconds](#average-pause-seconds) | [double](../types/double.md) | yes |
| [entity_to_sound_ratio](#entity-to-sound-ratio) | [float](../types/float.md) | yes |
| [max_entity_count](#max-entity-count) | [uint32](../types/uint32.md) | yes |
| [min_entity_count](#min-entity-count) | [uint32](../types/uint32.md) | yes |
| [radius](#radius) | [double](../types/double.md) | yes |
| [sound](#sound) | [Sound](../types/Sound.md) | yes |

### average_pause_seconds

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### entity_to_sound_ratio

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.2}`

### max_entity_count

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 15}`

### min_entity_count

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5}`

Has to be less than or equal to `max_entity_count`.

### radius

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 10}`

### sound

**Type:** [Sound](../types/Sound.md) · _optional_
