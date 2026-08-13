# on_rocket_launched

_event_

Called when a rocket finishes ascending. (Triggers listening for finished rocket launch past 2.0 have been moved to 'on_cargo_pod_finished_ascending' as rocket and cargo pod are two separate entities)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [rocket](#rocket) | [LuaEntity](../classes/LuaEntity.md) |  |
| [rocket_silo](#rocket-silo) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### rocket

**Type:** [LuaEntity](../classes/LuaEntity.md)

### rocket_silo

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
