# on_tower_planted_seed

_event_

Called before an agricultural tower plants a seed.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [plant](#plant) | [LuaEntity](../classes/LuaEntity.md) |  |
| [seed](#seed) | [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [tower](#tower) | [LuaEntity](../classes/LuaEntity.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### plant

**Type:** [LuaEntity](../classes/LuaEntity.md)

The plant that was planted.

### seed

**Type:** [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md)

The seed that was used.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### tower

**Type:** [LuaEntity](../classes/LuaEntity.md)

The tower that did the planting.
