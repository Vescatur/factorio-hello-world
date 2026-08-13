# on_robot_pre_mined

_event_

Called before a robot mines an entity.

**Filter:** [LuaPreRobotMinedEntityEventFilter](../concepts/LuaPreRobotMinedEntityEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [robot](#robot) | [LuaEntity](../classes/LuaEntity.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity which is about to be mined.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### robot

**Type:** [LuaEntity](../classes/LuaEntity.md)

The robot that's about to do the mining.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
