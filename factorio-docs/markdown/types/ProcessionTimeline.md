# ProcessionTimeline

_type_

A wrapper for a collection of [ProcessionLayers](../types/ProcessionLayer.md).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [audio_events](#audio-events) | array[[ProcessionAudioEvent](../types/ProcessionAudioEvent.md)] | yes |
| [draw_switch_tick](#draw-switch-tick) | [MapTick](../types/MapTick.md) | yes |
| [duration](#duration) | [MapTick](../types/MapTick.md) |  |
| [intermezzo_max_duration](#intermezzo-max-duration) | [MapTick](../types/MapTick.md) | yes |
| [intermezzo_min_duration](#intermezzo-min-duration) | [MapTick](../types/MapTick.md) | yes |
| [layers](#layers) | array[[ProcessionLayer](../types/ProcessionLayer.md)] |  |
| [special_action_tick](#special-action-tick) | [MapTick](../types/MapTick.md) | yes |

### audio_events

**Type:** array[[ProcessionAudioEvent](../types/ProcessionAudioEvent.md)] · _optional_

### draw_switch_tick

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** `1/2 of duration`

During procession, the pod will at some point start being drawn above the rest of the game:

- When ascending this tick will go from world to above.

- When descending this tick will go from above to world.

Notably, LUT override won't be applied until the pod is drawn above the game.

### duration

**Type:** [MapTick](../types/MapTick.md)

The time to play this cutscene regardless of individual layer durations.

### intermezzo_max_duration

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The real duration of the intermezzo playing will be below this value.

### intermezzo_min_duration

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The real duration of the intermezzo playing will be above this value.

### layers

**Type:** array[[ProcessionLayer](../types/ProcessionLayer.md)]

### special_action_tick

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** `1/2 of duration`

Time to initiate usage specific actions:

- Ascending animation will detach from rocket on this tick.

- Descending animation will request hatch to be opened.
