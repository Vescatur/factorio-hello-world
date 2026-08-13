# on_unit_removed_from_group

_event_

Called when a unit is removed from a unit group.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [group](#group) | [LuaCommandable](../classes/LuaCommandable.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [unit](#unit) | [LuaEntity](../classes/LuaEntity.md) |  |

### group

**Type:** [LuaCommandable](../classes/LuaCommandable.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### unit

**Type:** [LuaEntity](../classes/LuaEntity.md)
