# on_territory_destroyed

_event_

Called when a territory is destroyed from a surface.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [territory](#territory) | [LuaTerritory](../classes/LuaTerritory.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### territory

**Type:** [LuaTerritory](../classes/LuaTerritory.md)

The territory that will be destroyed. This object will be valid so that you can still read and modify its properties before it is finally destroyed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
