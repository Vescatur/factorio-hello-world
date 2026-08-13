# on_worker_robot_expired

_event_

Called when a worker (construction or logistic) robot expires through a lack of energy.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [robot](#robot) | [LuaEntity](../classes/LuaEntity.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### robot

**Type:** [LuaEntity](../classes/LuaEntity.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
