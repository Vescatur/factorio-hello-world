# on_space_platform_changed_state

_event_

Called when a space platform changes state

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_state](#old-state) | [defines.space_platform_state](../defines/defines.md) |  |
| [platform](#platform) | [LuaSpacePlatform](../classes/LuaSpacePlatform.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_state

**Type:** [defines.space_platform_state](../defines/defines.md)

### platform

**Type:** [LuaSpacePlatform](../classes/LuaSpacePlatform.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
