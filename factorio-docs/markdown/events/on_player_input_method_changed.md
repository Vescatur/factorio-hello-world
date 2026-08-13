# on_player_input_method_changed

_event_

Called when a player's input method changes. See [LuaPlayer::input_method](../classes/LuaPlayer.md#input-method).

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

The player whose input method changed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
