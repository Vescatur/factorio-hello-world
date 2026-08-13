# on_player_display_scale_changed

_event_

Called when the display scale changes for a given player.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_scale](#old-scale) | [double](../concepts/double.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_scale

**Type:** [double](../concepts/double.md)

The old display scale

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
