# on_space_platform_built_entity

_event_

Called when a space platform builds an entity.

**Filter:** [LuaPlatformBuiltEntityEventFilter](../concepts/LuaPlatformBuiltEntityEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [platform](#platform) | [LuaSpacePlatform](../classes/LuaSpacePlatform.md) |  |
| [stack](#stack) | [LuaItemStack](../classes/LuaItemStack.md) |  |
| [tags](#tags) | [Tags](../concepts/Tags.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity built.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### platform

**Type:** [LuaSpacePlatform](../classes/LuaSpacePlatform.md)

The platform that did the building.

### stack

**Type:** [LuaItemStack](../classes/LuaItemStack.md)

The item used to do the building.

### tags

**Type:** [Tags](../concepts/Tags.md) · _optional_

The tags associated with this entity if any.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
