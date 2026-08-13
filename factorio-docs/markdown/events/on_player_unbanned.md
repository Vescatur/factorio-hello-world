# on_player_unbanned

_event_

Called when a player is un-banned.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [by_player](#by-player) | [uint32](../concepts/uint32.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [player_name](#player-name) | [string](../concepts/string.md) |  |
| [reason](#reason) | [string](../concepts/string.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### by_player

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player that did the un-banning if any.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player un-banned.

### player_name

**Type:** [string](../concepts/string.md)

The player name un-banned.

### reason

**Type:** [string](../concepts/string.md) · _optional_

The reason the player was banned if any.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
