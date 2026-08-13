# on_console_chat

_event_

Called when a message is sent to the in-game console, either by a player or through the server interface.

This event only fires for plain messages, not for any commands (including `/shout` or `/whisper`).

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [message](#message) | [string](../concepts/string.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### message

**Type:** [string](../concepts/string.md)

The chat message that was sent.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player doing the chatting, if any.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
