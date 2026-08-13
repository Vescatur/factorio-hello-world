# PrintSettings

_concept_

**Definition:** table{color, game_state, skip, sound, sound_path, volume_modifier}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [color](#color) | [Color](../concepts/Color.md) | yes |
| [game_state](#game-state) | [boolean](../concepts/boolean.md) | yes |
| [skip](#skip) | [defines.print_skip](../defines/defines.md) | yes |
| [sound](#sound) | [defines.print_sound](../defines/defines.md) | yes |
| [sound_path](#sound-path) | [SoundPath](../concepts/SoundPath.md) | yes |
| [volume_modifier](#volume-modifier) | [float](../concepts/float.md) | yes |

### color

**Type:** [Color](../concepts/Color.md) · _optional_

Color of the message to print. Defaults to white.

### game_state

**Type:** [boolean](../concepts/boolean.md) · _optional_

If set to false, message will not be part of game state and will disappear from output console after save-load. Defaults to `true`.

### skip

**Type:** [defines.print_skip](../defines/defines.md) · _optional_

Condition when to skip adding message. Defaults to `defines.print_skip.if_redundant`.

### sound

**Type:** [defines.print_sound](../defines/defines.md) · _optional_

If a sound should be emitted for this message. Defaults to `defines.print_sound.use_player_settings`.

### sound_path

**Type:** [SoundPath](../concepts/SoundPath.md) · _optional_

The sound to play. If not given, [UtilitySounds::console_message](../prototypes/UtilitySounds.md#console-message) will be used instead.

### volume_modifier

**Type:** [float](../concepts/float.md) · _optional_

The volume of the sound to play. Must be between 0 and 1 inclusive. Defaults to 1.
