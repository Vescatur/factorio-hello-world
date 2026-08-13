# on_cutscene_finished

_event_

Called when a cutscene finishes naturally (was not cancelled).

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player the cutscene was shown to.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
