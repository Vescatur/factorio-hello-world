# on_trigger_created_entity

_event_

Called when an entity with a trigger prototype (such as capsules) create an entity AND that trigger prototype defined `trigger_created_entity=true`.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [source](#source) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### source

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
