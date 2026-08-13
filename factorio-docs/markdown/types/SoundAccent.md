# SoundAccent

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [frame](#frame) | [uint16](../types/uint16.md) | yes |
| [play_for_directions](#play-for-directions) | array[[defines.direction](../defines/defines.md)] | yes |
| [play_for_working_visualisation](#play-for-working-visualisation) | [string](../types/string.md) | yes |
| [sound](#sound) | [Sound](../types/Sound.md) | yes |

### frame

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### play_for_directions

**Type:** array[[defines.direction](../defines/defines.md)] · _optional_

The `sound` is played when the entity has one the specified direction.

### play_for_working_visualisation

**Type:** [string](../types/string.md) · _optional_

Play the `sound` for a working visualisation of a given [WorkingVisualisation::name](../types/WorkingVisualisation.md#name).

The name cannot be empty.

### sound

**Type:** [Sound](../types/Sound.md) · _optional_
