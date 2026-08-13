# TrainStopGoal

_concept_

**Definition:** table{priority, train_stop}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [priority](#priority) | [uint8](../concepts/uint8.md) | yes |
| [train_stop](#train-stop) | [LuaEntity](../classes/LuaEntity.md) |  |

### priority

**Type:** [uint8](../concepts/uint8.md) · _optional_

Goal priority. If not provided, defaults to [LuaEntity::train_stop_priority](../classes/LuaEntity.md#train-stop-priority) of provided train_stop.

### train_stop

**Type:** [LuaEntity](../classes/LuaEntity.md)

Train stop target. Must be connected to rail ([LuaEntity::connected_rail](../classes/LuaEntity.md#connected-rail) returns valid LuaEntity).
