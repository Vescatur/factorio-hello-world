# on_player_color_changed

_event_

Called after a player's color changes.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [by_script](#by-script) | [boolean](../concepts/boolean.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_chat_color](#old-chat-color) | [Color](../concepts/Color.md) |  |
| [old_color](#old-color) | [Color](../concepts/Color.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### by_script

**Type:** [boolean](../concepts/boolean.md)

If the change was done by script or the player.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_chat_color

**Type:** [Color](../concepts/Color.md)

The old chat color.

### old_color

**Type:** [Color](../concepts/Color.md)

The old color.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player whose color changed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
