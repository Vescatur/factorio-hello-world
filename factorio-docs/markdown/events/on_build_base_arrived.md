# on_build_base_arrived

_event_

Called when a [defines.command.build_base](../defines/defines.md) command reaches its destination, and before building starts.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [group](#group) | [LuaCommandable](../classes/LuaCommandable.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [unit](#unit) | [LuaEntity](../classes/LuaEntity.md) | yes |

### group

**Type:** [LuaCommandable](../classes/LuaCommandable.md) · _optional_

The unit group the command was assigned to.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### unit

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The unit the command was assigned to.
