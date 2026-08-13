# on_cutscene_waypoint_reached

_event_

Called when a cutscene is playing, each time it reaches a waypoint in that cutscene.

This refers to an index in the table previously passed to set_controller which started the cutscene.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [waypoint_index](#waypoint-index) | [uint32](../concepts/uint32.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player index of the player viewing the cutscene.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### waypoint_index

**Type:** [uint32](../concepts/uint32.md)

The index of the waypoint we just completed.
