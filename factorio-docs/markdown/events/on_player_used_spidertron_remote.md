# on_player_used_spidertron_remote

_event_

Called when a player uses spidertron remote to send all selected units to a given position

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player that used the remote.

### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Goal position to which spidertron was sent to.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
