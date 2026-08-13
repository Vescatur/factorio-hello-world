# LuaTrain

_class_

A train. Trains are a sequence of connected rolling stocks -- locomotives and wagons.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [back_end](#back-end) | [LuaRailEnd](../classes/LuaRailEnd.md) |  |
| [back_stock](#back-stock) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [cargo_wagons](#cargo-wagons) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [carriages](#carriages) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [fluid_wagons](#fluid-wagons) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [front_end](#front-end) | [LuaRailEnd](../classes/LuaRailEnd.md) |  |
| [front_stock](#front-stock) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [group](#group) | [string](../concepts/string.md) |  |
| [has_path](#has-path) | [boolean](../concepts/boolean.md) |  |
| [id](#id) | [uint32](../concepts/uint32.md) |  |
| [kill_count](#kill-count) | [uint32](../concepts/uint32.md) |  |
| [killed_players](#killed-players) | dictionary[[uint32](../concepts/uint32.md) → [uint32](../concepts/uint32.md)] |  |
| [locomotives](#locomotives) | table{back_movers, front_movers} |  |
| [manual_mode](#manual-mode) | [boolean](../concepts/boolean.md) |  |
| [max_backward_speed](#max-backward-speed) | [double](../concepts/double.md) |  |
| [max_forward_speed](#max-forward-speed) | [double](../concepts/double.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [passengers](#passengers) | array[[LuaPlayer](../classes/LuaPlayer.md)] |  |
| [path](#path) | [LuaRailPath](../classes/LuaRailPath.md) | yes |
| [path_end_rail](#path-end-rail) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [path_end_stop](#path-end-stop) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [riding_state](#riding-state) | [RidingState](../concepts/RidingState.md) |  |
| [schedule](#schedule) | [TrainSchedule](../concepts/TrainSchedule.md) | yes |
| [signal](#signal) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [speed](#speed) | [double](../concepts/double.md) |  |
| [state](#state) | [defines.train_state](../defines/defines.md) |  |
| [station](#station) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [weight](#weight) | [double](../concepts/double.md) |  |

### back_end

**Read:** [LuaRailEnd](../classes/LuaRailEnd.md) · _read-only_

Back end of the train: Rail and direction on that rail where the train will go when moving backward

### back_stock

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The back stock of this train, if any. The back of the train is at the opposite end of the [front](../classes/LuaTrain.md#front-stock).

### cargo_wagons

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

The cargo carriages the train contains.

### carriages

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

The rolling stocks this train is composed of, with the numbering starting at the [front](../classes/LuaTrain.md#front-stock) of the train.

### fluid_wagons

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

The fluid carriages the train contains.

### front_end

**Read:** [LuaRailEnd](../classes/LuaRailEnd.md) · _read-only_

Front end of the train: Rail and direction on that rail where the train will go when moving forward

### front_stock

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The front stock of this train, if any. The front of the train is in the direction that a majority of locomotives are pointing in. If it's a tie, the North and West directions take precedence.

### group

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The group this train belongs to.

Setting the group will apply the schedule of the group to this train.

### has_path

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this train has a path.

### id

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The unique train ID.

### kill_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The total number of kills by this train.

### killed_players

**Read:** dictionary[[uint32](../concepts/uint32.md) → [uint32](../concepts/uint32.md)] · _read-only_

The players killed by this train.

The keys are the player indices, the values are how often this train killed that player.

### locomotives

**Read:** table{back_movers, front_movers} · _read-only_

Locomotives of the train.

**Example:**

```
-- called on a LuaTrain with 3 locomotives, it returns 3 LuaEntities:
train.locomotives -- => {front_movers = {loco1, loco2}, back_movers = {loco3}}
```

### manual_mode

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When `true`, the train is explicitly controlled by the player or script. When `false`, the train moves autonomously according to its schedule.

### max_backward_speed

**Read:** [double](../concepts/double.md) · _read-only_

Current max speed when moving backwards, depends on locomotive prototype and fuel.

### max_forward_speed

**Read:** [double](../concepts/double.md) · _read-only_

Current max speed when moving forward, depends on locomotive prototype and fuel.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### passengers

**Read:** array[[LuaPlayer](../classes/LuaPlayer.md)] · _read-only_

The player passengers on the train

This does *not* index using player index. See [LuaPlayer::index](../classes/LuaPlayer.md#index) on each player instance for the player index.

### path

**Read:** [LuaRailPath](../classes/LuaRailPath.md) · _read-only_ · _optional_

The path this train is using, if any.

### path_end_rail

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The destination rail this train is currently pathing to, if any.

### path_end_stop

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The destination train stop this train is currently pathing to, if any.

### riding_state

**Read:** [RidingState](../concepts/RidingState.md) · _read-only_

The riding state of this train.

### schedule

**Read:** [TrainSchedule](../concepts/TrainSchedule.md) · **Write:** [TrainSchedule](../concepts/TrainSchedule.md) · _optional_

This train's current schedule, if any. Set to `nil` to clear.

The schedule can't be changed by modifying the returned table. Instead, changes must be made by assigning a new table to this attribute.

This is a simplified schedule that does **not** include train groups and interrupts. See [LuaTrain::get_schedule](../classes/LuaTrain.md#get-schedule) for full access to the train schedule, including interrupts and train groups.

### signal

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The signal this train is arriving or waiting at, if any.

### speed

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Current speed.

Changing the speed of the train is potentially an unsafe operation because train uses the speed for its internal calculations of break distances, etc.

### state

**Read:** [defines.train_state](../defines/defines.md) · _read-only_

This train's current state.

### station

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The train stop this train is stopped at, if any.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### weight

**Read:** [double](../concepts/double.md) · _read-only_

The weight of this train.

## Methods

| Method | Summary |
| --- | --- |
| [clear_fluids_inside](#clear-fluids-inside) | Clears all fluids in this train. |
| [clear_items_inside](#clear-items-inside) | Clear all items in this train. |
| [get_contents](#get-contents) | Get a mapping of the train's inventory. |
| [get_fluid_contents](#get-fluid-contents) | Gets a mapping of the train's fluid inventory. |
| [get_fluid_count](#get-fluid-count) | Get the amount of a particular fluid stored in the train. |
| [get_item_count](#get-item-count) | Get the amount of a particular item stored in the train. |
| [get_rail_end](#get-rail-end) | Gets a LuaRailEnd object pointing away from the train at specified end of the train |
| [get_rails](#get-rails) | Gets all rails under the train. |
| [get_schedule](#get-schedule) | This allows full access to the train schedule, including modifying the schedule records, the train group and the interrupts. |
| [go_to_station](#go-to-station) | Go to the station specified by the index in the train's schedule. |
| [insert](#insert) | Insert a stack into the train. |
| [insert_fluid](#insert-fluid) | Inserts the given fluid into the first available location in this train. |
| [recalculate_path](#recalculate-path) | Checks if the path is invalid and tries to re-path if it isn't. |
| [remove_fluid](#remove-fluid) | Remove some fluid from the train. |
| [remove_item](#remove-item) | Remove some items from the train. |

### clear_fluids_inside

`clear_fluids_inside()`

Clears all fluids in this train.

### clear_items_inside

`clear_items_inside()`

Clear all items in this train.

### get_contents

`get_contents()`

Get a mapping of the train's inventory.

#### Return values

- array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] — List of all items in the train.

### get_fluid_contents

`get_fluid_contents()`

Gets a mapping of the train's fluid inventory.

#### Return values

- dictionary[[string](../concepts/string.md) → [FluidAmount](../concepts/FluidAmount.md)] — The counts, indexed by fluid names.

### get_fluid_count

`get_fluid_count(fluid)`

Get the amount of a particular fluid stored in the train.

#### Parameters

##### fluid

**Type:** [string](../concepts/string.md) · _optional_

Fluid name to count. If not given, counts all fluids.

#### Return values

- [double](../concepts/double.md)

### get_item_count

`get_item_count(item)`

Get the amount of a particular item stored in the train.

#### Parameters

##### item

**Type:** [ItemFilter](../concepts/ItemFilter.md) · _optional_

If not given, counts all items.

#### Return values

- [uint32](../concepts/uint32.md)

### get_rail_end

`get_rail_end(direction)`

Gets a LuaRailEnd object pointing away from the train at specified end of the train

#### Parameters

##### direction

**Type:** [defines.rail_direction](../defines/defines.md)

#### Return values

- [LuaRailEnd](../classes/LuaRailEnd.md)

### get_rails

`get_rails()`

Gets all rails under the train.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)]

### get_schedule

`get_schedule()`

This allows full access to the train schedule, including modifying the schedule records, the train group and the interrupts.

#### Return values

- [LuaSchedule](../classes/LuaSchedule.md)

### go_to_station

`go_to_station(index)`

Go to the station specified by the index in the train's schedule.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

### insert

`insert(stack)`

Insert a stack into the train.

#### Parameters

##### stack

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

### insert_fluid

`insert_fluid(fluid)`

Inserts the given fluid into the first available location in this train.

#### Parameters

##### fluid

**Type:** [Fluid](../concepts/Fluid.md)

#### Return values

- [double](../concepts/double.md) — The amount inserted.

### recalculate_path

`recalculate_path(force)`

Checks if the path is invalid and tries to re-path if it isn't.

#### Parameters

##### force

**Type:** [boolean](../concepts/boolean.md) · _optional_

Forces the train to re-path regardless of the current path being valid or not.

#### Return values

- [boolean](../concepts/boolean.md) — If the train has a path after the repath attempt.

### remove_fluid

`remove_fluid(fluid)`

Remove some fluid from the train.

#### Parameters

##### fluid

**Type:** [Fluid](../concepts/Fluid.md)

#### Return values

- [double](../concepts/double.md) — The amount of fluid actually removed.

### remove_item

`remove_item(stack)`

Remove some items from the train.

#### Parameters

##### stack

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

The amount and type of items to remove

#### Return values

- [uint32](../concepts/uint32.md) — Number of items actually removed.
