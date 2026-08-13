# on_rocket_launch_ordered

_event_

Called when a rocket silo is ordered to be launched.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [rocket](#rocket) | [LuaEntity](../classes/LuaEntity.md) |  |
| [rocket_silo](#rocket-silo) | [LuaEntity](../classes/LuaEntity.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player that is riding the rocket, if any.

### rocket

**Type:** [LuaEntity](../classes/LuaEntity.md)

### rocket_silo

**Type:** [LuaEntity](../classes/LuaEntity.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
