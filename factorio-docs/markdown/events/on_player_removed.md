# on_player_removed

_event_

Called when a player is removed (deleted) from the game. This is markedly different from a player temporarily [leaving](../events/on_player_left_game.md) the game, and instead behaves like the player never existed in the save file.

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

The index of the removed player.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
