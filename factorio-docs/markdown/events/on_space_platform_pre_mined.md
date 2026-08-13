# on_space_platform_pre_mined

_event_

Called before a platform mines an entity.

**Filter:** [LuaPrePlatformMinedEntityEventFilter](../concepts/LuaPrePlatformMinedEntityEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [platform](#platform) | [LuaSpacePlatform](../classes/LuaSpacePlatform.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity which is about to be mined.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### platform

**Type:** [LuaSpacePlatform](../classes/LuaSpacePlatform.md)

The platform that's about to do the mining.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
