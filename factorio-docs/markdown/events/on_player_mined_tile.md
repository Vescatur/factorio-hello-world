# on_player_mined_tile

_event_

Called after a player mines tiles.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [tiles](#tiles) | array[[OldTileAndPosition](../concepts/OldTileAndPosition.md)] |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### surface_index

**Type:** [uint32](../concepts/uint32.md)

The surface the tile(s) were mined from.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### tiles

**Type:** array[[OldTileAndPosition](../concepts/OldTileAndPosition.md)]

The position data.
