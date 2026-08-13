# on_player_clicked_gps_tag

_event_

Called when a player clicks a gps tag

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [surface](#surface) | [string](../concepts/string.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

Index of the player

### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Map position contained in gps tag

### surface

**Type:** [string](../concepts/string.md)

Surface name contained in gps tag, even when such surface does not exists

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
