# on_player_controller_changed

_event_

Called after a player changes controller types.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_type](#old-type) | [defines.controllers](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_type

**Type:** [defines.controllers](../defines/defines.md)

The old controller type.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who changed controllers.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
