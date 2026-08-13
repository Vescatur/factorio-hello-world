# on_player_left_game

_event_

Called after a player leaves the game. This is not called when closing a save file in singleplayer, as the player doesn't actually leave the game, and the save is just on pause until they rejoin.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [reason](#reason) | [defines.disconnect_reason](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### reason

**Type:** [defines.disconnect_reason](../defines/defines.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
