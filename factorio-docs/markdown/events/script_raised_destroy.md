# script_raised_destroy

_event_

A static event mods can use to tell other mods they destroyed something by script. This event is only raised if a mod does so with [LuaBootstrap::raise_event](../classes/LuaBootstrap.md#raise-event) or [LuaBootstrap::raise_script_destroy](../classes/LuaBootstrap.md#raise-script-destroy), or when `raise_destroy` is passed to [LuaEntity::destroy](../classes/LuaEntity.md#destroy).

**Filter:** [LuaScriptRaisedDestroyEventFilter](../concepts/LuaScriptRaisedDestroyEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that was destroyed.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
