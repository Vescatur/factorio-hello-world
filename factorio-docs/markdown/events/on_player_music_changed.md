# on_player_music_changed

_event_

Called when a player's current music track (ambient sound) changes. This includes when the music track finishes playing.

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

The player whose current music has changed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
