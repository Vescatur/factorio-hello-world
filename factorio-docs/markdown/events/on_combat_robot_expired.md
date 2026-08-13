# on_combat_robot_expired

_event_

Called when a combat robot expires through a lack of energy, or timeout.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [owner](#owner) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [robot](#robot) | [LuaEntity](../classes/LuaEntity.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### owner

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity that owns the robot if any.

### robot

**Type:** [LuaEntity](../classes/LuaEntity.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
