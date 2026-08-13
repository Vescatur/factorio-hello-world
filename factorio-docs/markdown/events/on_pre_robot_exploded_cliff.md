# on_pre_robot_exploded_cliff

_event_

Called directly before a robot explodes cliffs.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cliff](#cliff) | [LuaEntity](../classes/LuaEntity.md) |  |
| [item](#item) | [LuaItemPrototype](../classes/LuaItemPrototype.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [robot](#robot) | [LuaEntity](../classes/LuaEntity.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cliff

**Type:** [LuaEntity](../classes/LuaEntity.md)

### item

**Type:** [LuaItemPrototype](../classes/LuaItemPrototype.md)

The cliff explosive used.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

The quality of the cliff explosive used.

### robot

**Type:** [LuaEntity](../classes/LuaEntity.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
