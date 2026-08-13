# on_entity_cloned

_event_

Called when an entity is cloned. The filter applies to the source entity.

**Filter:** [LuaEntityClonedEventFilter](../concepts/LuaEntityClonedEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [destination](#destination) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [source](#source) | [LuaEntity](../classes/LuaEntity.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### destination

**Type:** [LuaEntity](../classes/LuaEntity.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### source

**Type:** [LuaEntity](../classes/LuaEntity.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
