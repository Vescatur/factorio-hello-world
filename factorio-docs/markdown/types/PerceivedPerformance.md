# PerceivedPerformance

_type_

Not all prototypes that use this type are affected by all properties.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [maximum](#maximum) | [double](../types/double.md) | yes |
| [minimum](#minimum) | [double](../types/double.md) | yes |
| [performance_to_activity_rate](#performance-to-activity-rate) | [double](../types/double.md) | yes |

### maximum

**Type:** [double](../types/double.md) · _optional_ · **Default:** `Max double`

Affects animation speed.

### minimum

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Affects animation speed.

Must be less than or equal to `maximum`.

### performance_to_activity_rate

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Affects [MainSound](../types/MainSound.md) if [MainSound::match_progress_to_activity](../types/MainSound.md#match-progress-to-activity), [MainSound::match_volume_to_activity](../types/MainSound.md#match-volume-to-activity) or [MainSound::match_speed_to_activity](../types/MainSound.md#match-speed-to-activity) is `true`.
