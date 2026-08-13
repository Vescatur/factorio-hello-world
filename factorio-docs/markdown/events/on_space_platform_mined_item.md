# on_space_platform_mined_item

_event_

Called when a platform mines an entity.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [item_stack](#item-stack) | [ItemWithQualityCount](../concepts/ItemWithQualityCount.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [platform](#platform) | [LuaSpacePlatform](../classes/LuaSpacePlatform.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### item_stack

**Type:** [ItemWithQualityCount](../concepts/ItemWithQualityCount.md)

The entity the platform just picked up.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### platform

**Type:** [LuaSpacePlatform](../classes/LuaSpacePlatform.md)

The platform that did the mining.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
