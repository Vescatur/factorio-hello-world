# on_player_locale_changed

_event_

Called when a player's active locale changes. See [LuaPlayer::locale](../classes/LuaPlayer.md#locale).

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_locale](#old-locale) | [string](../concepts/string.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_locale

**Type:** [string](../concepts/string.md)

The previously active locale.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player whose locale was changed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
