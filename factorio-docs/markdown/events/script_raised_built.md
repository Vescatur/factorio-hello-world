# script_raised_built

_event_

A static event mods can use to tell other mods they built something by script. This event is only raised if a mod does so with [LuaBootstrap::raise_event](../classes/LuaBootstrap.md#raise-event) or [LuaBootstrap::raise_script_built](../classes/LuaBootstrap.md#raise-script-built), or when `raise_built` is passed to [LuaSurface::create_entity](../classes/LuaSurface.md#create-entity).

**Filter:** [LuaScriptRaisedBuiltEventFilter](../concepts/LuaScriptRaisedBuiltEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that has been built.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
