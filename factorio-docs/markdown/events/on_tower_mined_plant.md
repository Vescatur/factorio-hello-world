# on_tower_mined_plant

_event_

Called after the results of an entity being mined are collected just before the entity is destroyed.

After this event any items in the buffer will be transferred into the tower as if they came from mining the entity.

The buffer inventory is special in that it's only valid during this event and has a dynamic size expanding as more items are transferred into it.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [buffer](#buffer) | [LuaInventory](../classes/LuaInventory.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [plant](#plant) | [LuaEntity](../classes/LuaEntity.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [tower](#tower) | [LuaEntity](../classes/LuaEntity.md) |  |

### buffer

**Type:** [LuaInventory](../classes/LuaInventory.md)

The temporary inventory that holds the result of mining the entity.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### plant

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that has been mined.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### tower

**Type:** [LuaEntity](../classes/LuaEntity.md)

The tower doing the mining.
