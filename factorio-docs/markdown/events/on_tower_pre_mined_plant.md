# on_tower_pre_mined_plant

_event_

Called before an agricultural tower mines a plant.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [plant](#plant) | [LuaEntity](../classes/LuaEntity.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [tower](#tower) | [LuaEntity](../classes/LuaEntity.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### plant

**Type:** [LuaEntity](../classes/LuaEntity.md)

The plant that is about to be mined.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### tower

**Type:** [LuaEntity](../classes/LuaEntity.md)

The tower that is about to do the mining.
