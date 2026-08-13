# MainSound

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [activity_to_speed_modifiers](#activity-to-speed-modifiers) | [ActivityMatchingModifiers](../types/ActivityMatchingModifiers.md) | yes |
| [activity_to_volume_modifiers](#activity-to-volume-modifiers) | [ActivityMatchingModifiers](../types/ActivityMatchingModifiers.md) | yes |
| [fade_in_ticks](#fade-in-ticks) | [uint32](../types/uint32.md) | yes |
| [fade_out_ticks](#fade-out-ticks) | [uint32](../types/uint32.md) | yes |
| [match_progress_to_activity](#match-progress-to-activity) | [boolean](../types/boolean.md) | yes |
| [match_speed_to_activity](#match-speed-to-activity) | [boolean](../types/boolean.md) | yes |
| [match_volume_to_activity](#match-volume-to-activity) | [boolean](../types/boolean.md) | yes |
| [play_for_directions](#play-for-directions) | array[[defines.direction](../defines/defines.md)] | yes |
| [play_for_working_visualisations](#play-for-working-visualisations) | array[[string](../types/string.md)] | yes |
| [probability](#probability) | [double](../types/double.md) | yes |
| [sound](#sound) | [Sound](../types/Sound.md) | yes |
| [volume_smoothing_window_size](#volume-smoothing-window-size) | [uint32](../types/uint32.md) | yes |

### activity_to_speed_modifiers

**Type:** [ActivityMatchingModifiers](../types/ActivityMatchingModifiers.md) · _optional_

### activity_to_volume_modifiers

**Type:** [ActivityMatchingModifiers](../types/ActivityMatchingModifiers.md) · _optional_

### fade_in_ticks

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 8}`

Can't be used when `match_progress_to_activity` is `true`.

### fade_out_ticks

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

Can't be used when `match_progress_to_activity` is `true`.

### match_progress_to_activity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Unused when [WorkingSound::persistent](../types/WorkingSound.md#persistent) is `true`.

### match_speed_to_activity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### match_volume_to_activity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### play_for_directions

**Type:** array[[defines.direction](../defines/defines.md)] · _optional_

The `sound` is played when the entity has one the specified direction.

Unused when [WorkingSound::persistent](../types/WorkingSound.md#persistent) is `true`.

### play_for_working_visualisations

**Type:** array[[string](../types/string.md)] · _optional_

Array of [WorkingVisualisation::name](../types/WorkingVisualisation.md#name)s, individual names cannot be empty.

The `sound` is played when at least one of the specified working visualisations is drawn.

Unused when [WorkingSound::persistent](../types/WorkingSound.md#persistent) is `true`.

### probability

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Modifies how often the sound is played.

Silently clamped to the [0.0, 1.0] range.

Unused when [WorkingSound::persistent](../types/WorkingSound.md#persistent) is `true`.

**Example:**

```
probability = 1 / (3 * 60) -- average pause between the sound is 3 seconds
```

### sound

**Type:** [Sound](../types/Sound.md) · _optional_

Cannot be empty.

### volume_smoothing_window_size

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only used if [WorkingSound::persistent](../types/WorkingSound.md#persistent) is `true`.
