# PlaySoundSpecification

_concept_

**Definition:** table{override_sound_type, path, position, volume_modifier}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [override_sound_type](#override-sound-type) | [SoundType](../concepts/SoundType.md) | yes |
| [path](#path) | [SoundPath](../concepts/SoundPath.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [volume_modifier](#volume-modifier) | [double](../concepts/double.md) | yes |

### override_sound_type

**Type:** [SoundType](../concepts/SoundType.md) · _optional_

The volume mixer to play the sound through. Defaults to the default mixer for the given sound type.

### path

**Type:** [SoundPath](../concepts/SoundPath.md)

The sound to play.

### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

Where the sound should be played. If not given, it's played globally on the player's controller's surface.

### volume_modifier

**Type:** [double](../concepts/double.md) · _optional_

The volume of the sound to play. Must be between 0 and 1 inclusive.
