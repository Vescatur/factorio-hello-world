# on_player_respawned

_event_

Called after a player respawns.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [player_port](#player-port) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### player_port

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The player port used to respawn if one was used.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
