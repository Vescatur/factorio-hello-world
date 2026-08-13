# on_console_command

_event_

Called when someone enters a command-like message regardless of it being a valid command.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [command](#command) | [string](../concepts/string.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [parameters](#parameters) | [string](../concepts/string.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### command

**Type:** [string](../concepts/string.md)

The command as typed without the preceding forward slash ('/').

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### parameters

**Type:** [string](../concepts/string.md)

The parameters provided if any.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player if any.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
