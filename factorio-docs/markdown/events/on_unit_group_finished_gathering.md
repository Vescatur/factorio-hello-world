# on_unit_group_finished_gathering

_event_

Called when a unit group finishes gathering and starts executing its command.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [group](#group) | [LuaCommandable](../classes/LuaCommandable.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### group

**Type:** [LuaCommandable](../classes/LuaCommandable.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
