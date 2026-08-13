# on_player_display_resolution_changed

_event_

Called when the display resolution changes for a given player.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_resolution](#old-resolution) | [DisplayResolution](../concepts/DisplayResolution.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_resolution

**Type:** [DisplayResolution](../concepts/DisplayResolution.md)

The old display resolution

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
