# on_territory_created

_event_

Called when a territory is created for any reason.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cause](#cause) | [defines.territory_created_cause](../defines/defines.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [territory](#territory) | [LuaTerritory](../classes/LuaTerritory.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cause

**Type:** [defines.territory_created_cause](../defines/defines.md)

The reason the territory was created.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### territory

**Type:** [LuaTerritory](../classes/LuaTerritory.md)

The territory that was created.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
