# script_raised_teleported

_event_

A static event mods can use to tell other mods they teleported something by script. This event is only raised if a mod does so with [LuaBootstrap::raise_event](../classes/LuaBootstrap.md#raise-event) or [LuaBootstrap::raise_script_teleported](../classes/LuaBootstrap.md#raise-script-teleported), or when `raise_teleported` is passed to [LuaControl::teleport](../classes/LuaControl.md#teleport).

**Filter:** [LuaScriptRaisedTeleportedEventFilter](../concepts/LuaScriptRaisedTeleportedEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_position](#old-position) | [MapPosition](../concepts/MapPosition.md) |  |
| [old_surface_index](#old-surface-index) | [uint8](../concepts/uint8.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that was teleported.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_position

**Type:** [MapPosition](../concepts/MapPosition.md)

The entity's position before the teleportation.

### old_surface_index

**Type:** [uint8](../concepts/uint8.md)

The entity's surface before the teleportation.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
