# TrainPathFinderOneGoalResult

_concept_

**Definition:** table{found_path, goal_index, is_front, path, penalty, start_index, steps_count, total_length}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [found_path](#found-path) | [boolean](../concepts/boolean.md) |  |
| [goal_index](#goal-index) | [uint32](../concepts/uint32.md) | yes |
| [is_front](#is-front) | [boolean](../concepts/boolean.md) | yes |
| [path](#path) | array[[LuaEntity](../classes/LuaEntity.md)] | yes |
| [penalty](#penalty) | [double](../concepts/double.md) | yes |
| [start_index](#start-index) | [uint32](../concepts/uint32.md) | yes |
| [steps_count](#steps-count) | [uint32](../concepts/uint32.md) |  |
| [total_length](#total-length) | [double](../concepts/double.md) | yes |

### found_path

**Type:** [boolean](../concepts/boolean.md)

True if found path.

### goal_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

If path was found, provides index of the specific goal to which the path goes to.

### is_front

**Type:** [boolean](../concepts/boolean.md) · _optional_

If path was found, tells if the path was reached from the train's front end or from [RailEndStart](../concepts/RailEndStart.md) with [RailEndStart::is_front](../concepts/RailEndStart.md#is-front) set.

### path

**Type:** array[[LuaEntity](../classes/LuaEntity.md)] · _optional_

Only if search was of type `"path"`, `return_path` was set to true and path was found. Contains all rails in order that are part of the found path.

### penalty

**Type:** [double](../concepts/double.md) · _optional_

Penalty of the path to goal if path was found.

### start_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

If path was found, provides index of the specific start from which the path to target goes from

### steps_count

**Type:** [uint32](../concepts/uint32.md)

Amount of steps pathfinder performed. This is a measure of how expensive this search was.

### total_length

**Type:** [double](../concepts/double.md) · _optional_

If path was found and search was of type `"path"`, provides total length of all rails of the path.
