# LuaTrainManager

_class_

The train manager manages all the train in the game. LuaTrainManager allows to perform some direct queries to the train manager.

There is always exactly one train manager instance in a game, it can be obtained from [LuaGameScript::train_manager](../classes/LuaGameScript.md#train-manager). This object is always valid and is equal to any other instance of LuaTrainManager from this game.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [get_train_by_id](#get-train-by-id) | Searches for a train with given ID. |
| [get_train_stops](#get-train-stops) | Gets all train stops that pass given filter |
| [get_trains](#get-trains) | Gets all trains that pass given filter |
| [request_train_path](#request-train-path) | Direct access to train pathfinder. Allows to search rail paths or querying which stops are accessible |

### get_train_by_id

`get_train_by_id(train_id)`

Searches for a train with given ID.

#### Parameters

##### train_id

**Type:** [uint32](../concepts/uint32.md)

Train ID to search

#### Return values

- [LuaTrain](../classes/LuaTrain.md) _(optional)_ — Train if found

### get_train_stops

`get_train_stops(filter)`

Gets all train stops that pass given filter

#### Parameters

##### filter

**Type:** [TrainStopFilter](../concepts/TrainStopFilter.md)

Filters the train stop must pass in order to be returned here

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_trains

`get_trains(filter)`

Gets all trains that pass given filter

#### Parameters

##### filter

**Type:** [TrainFilter](../concepts/TrainFilter.md)

Filters the train must pass in order to be returned here

#### Return values

- array[[LuaTrain](../classes/LuaTrain.md)]

### request_train_path

`request_train_path({goals, in_chain_signal_section, return_path, search_direction, shortest_path, starts, steps_limit, train, type})`

Direct access to train pathfinder. Allows to search rail paths or querying which stops are accessible

#### Parameters

##### goals

**Type:** array[[TrainPathFinderGoal](../concepts/TrainPathFinderGoal.md)]

##### in_chain_signal_section

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`. If set to true, pathfinder will not return a path that cannot have its start immediately reserved. A path that cannot have its start immediately reserved could cause a train to stop inside of an intersection.

##### return_path

**Type:** [boolean](../concepts/boolean.md) · _optional_

Only relevant if request type is `"path"`. Returning a full path is expensive due to multiple LuaEntity created. In order for path to be returned, true must be provided here. Defaults to false in which case a path will not be provided.

##### search_direction

**Type:** `"respect-movement-direction"` ∣ `"any-direction-with-locomotives"` · _optional_

Only relevant if `starts` was not provided in which case 2 starts (front and back) are deduced from the train. Selects which train ends should be considered as starts. Defaults to `"any-direction-with-locomotives"`.

##### shortest_path

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`. If set to true, only length of rails is added to penalties causing search to look for shortest path (not smallest penalty)

##### starts

**Type:** array[[RailEndStart](../concepts/RailEndStart.md)] · _optional_

Manually provided starting positions.

##### steps_limit

**Type:** [uint32](../concepts/uint32.md) · _optional_

Maximum amount of steps pathfinder is allowed to perform.

##### train

**Type:** [LuaTrain](../classes/LuaTrain.md) · _optional_

Mandatory if `starts` is not provided, optional otherwise. Selects a context for the pathfinder to decide which train to exclude from penalties and which signals are considered possible to reacquire. If `starts` is not provided, then it is also used to collect front and back ends for the search

##### type

**Type:** [TrainPathRequestType](../concepts/TrainPathRequestType.md) · _optional_

Request type. Determines the return type of the method. Defaults to `"path"`.

#### Return values

- [TrainPathFinderOneGoalResult](../concepts/TrainPathFinderOneGoalResult.md) ∣ [TrainPathAllGoalsResult](../concepts/TrainPathAllGoalsResult.md) — The type of the returned value depends on `type`.
