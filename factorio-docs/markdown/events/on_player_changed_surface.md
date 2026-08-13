# on_player_changed_surface

_event_

Called after a player changes surfaces.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who changed surfaces.

### surface_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The surface index the player was on - may be `nil` if the surface no longer exists.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
