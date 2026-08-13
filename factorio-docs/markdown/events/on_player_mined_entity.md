# on_player_mined_entity

_event_

Called after the results of an entity being mined are collected just before the entity is destroyed.

After this event any items in the buffer will be transferred into the player as if they came from mining the entity.

The buffer inventory is special in that it's only valid during this event and has a dynamic size expanding as more items are transferred into it.

**Filter:** [LuaPlayerMinedEntityEventFilter](../concepts/LuaPlayerMinedEntityEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [buffer](#buffer) | [LuaInventory](../classes/LuaInventory.md) |  |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### buffer

**Type:** [LuaInventory](../classes/LuaInventory.md)

The temporary inventory that holds the result of mining the entity.

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that has been mined.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The index of the player doing the mining.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
