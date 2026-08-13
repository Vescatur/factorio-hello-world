# script_raised_revive

_event_

A static event mods can use to tell other mods they revived something by script. This event is only raised if a mod does so with [LuaBootstrap::raise_event](../classes/LuaBootstrap.md#raise-event) or [LuaBootstrap::raise_script_revive](../classes/LuaBootstrap.md#raise-script-revive), or when `raise_revive` is passed to [LuaEntity::revive](../classes/LuaEntity.md#revive).

**Filter:** [LuaScriptRaisedReviveEventFilter](../concepts/LuaScriptRaisedReviveEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tags](#tags) | [Tags](../concepts/Tags.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that was revived.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### tags

**Type:** [Tags](../concepts/Tags.md) · _optional_

The tags associated with this entity, if any.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
