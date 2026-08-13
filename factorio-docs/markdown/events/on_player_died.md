# on_player_died

_event_

Called after a player dies.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cause](#cause) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cause

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
