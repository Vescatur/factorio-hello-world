# on_spider_command_completed

_event_

Called when a spider finishes moving to its autopilot position.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [vehicle](#vehicle) | [LuaEntity](../classes/LuaEntity.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### vehicle

**Type:** [LuaEntity](../classes/LuaEntity.md)

Spider vehicle which was requested to move.
