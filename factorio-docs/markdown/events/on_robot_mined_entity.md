# on_robot_mined_entity

_event_

Called after the results of an entity being mined are collected just before the entity is destroyed.

After this event any items in the buffer will be transferred into the robot as if they came from mining the entity.

The buffer inventory is special in that it's only valid during this event and has a dynamic size expanding as more items are transferred into it.

**Filter:** [LuaRobotMinedEntityEventFilter](../concepts/LuaRobotMinedEntityEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [buffer](#buffer) | [LuaInventory](../classes/LuaInventory.md) |  |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [robot](#robot) | [LuaEntity](../classes/LuaEntity.md) |  |
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

### robot

**Type:** [LuaEntity](../classes/LuaEntity.md)

The robot doing the mining.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
