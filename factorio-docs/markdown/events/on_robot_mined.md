# on_robot_mined

_event_

Called when a robot mines an entity.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [item_stack](#item-stack) | [ItemWithQualityCount](../concepts/ItemWithQualityCount.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [robot](#robot) | [LuaEntity](../classes/LuaEntity.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### item_stack

**Type:** [ItemWithQualityCount](../concepts/ItemWithQualityCount.md)

The entity the robot just picked up.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### robot

**Type:** [LuaEntity](../classes/LuaEntity.md)

The robot that did the mining.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
