# LuaFlowStatistics

_class_

Encapsulates statistic data for different parts of the game.

In the context of flow statistics, `input`, `output` and `storage` describe in which position of the associated GUI the values are shown. Input values are shown on the far left side, output values to the immediate right, and storage values (if present) to the far right.

- The item production GUI shows "consumption" on the right, thus `output` describes the item consumption numbers. The same goes for fluid consumption.

- The kills GUI shows "losses" on the right, so `output` describes how many of the force's entities were killed by enemies.

- The electric network GUI shows "power consumption" on the left side, so in this case `input` describes the power consumption numbers. In addition, electric networks are currently the only ones that utilize the `storage` part of their statistics, showing accumulator charges to the far right of the GUI.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [current_input_quality_samples](#current-input-quality-samples) | dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)]] |  |
| [current_output_quality_samples](#current-output-quality-samples) | dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)]] |  |
| [force](#force) | [LuaForce](../classes/LuaForce.md) | yes |
| [input_counts](#input-counts) | dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)] |  |
| [input_quality_counts](#input-quality-counts) | dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)]] |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [output_counts](#output-counts) | dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)] |  |
| [output_quality_counts](#output-quality-counts) | dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)]] |  |
| [storage_counts](#storage-counts) | dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)] |  |
| [storage_quality_counts](#storage-quality-counts) | dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)]] |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### current_input_quality_samples

**Read:** dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)]] · _read-only_

A mapping of quality name to a list of current tick input samples indexed by prototype name.

### current_output_quality_samples

**Read:** dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)]] · _read-only_

A mapping of quality name to a list of current tick output samples indexed by prototype name.

### force

**Read:** [LuaForce](../classes/LuaForce.md) · _read-only_ · _optional_

The force these statistics belong to. `nil` for pollution statistics.

### input_counts

**Read:** dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)] · _read-only_

List of input counts indexed by prototype name. Represents the data that is shown on the left side of the GUI for the given statistics.

### input_quality_counts

**Read:** dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)]] · _read-only_

A mapping of quality name to a list of input counts indexed by prototype name. Represents the data that is shown on the left side of the GUI for the given statistics.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### output_counts

**Read:** dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)] · _read-only_

List of output counts indexed by prototype name. Represents the data that is shown in the middle of the GUI for electric networks and on the right side for all other statistics types.

### output_quality_counts

**Read:** dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)]] · _read-only_

A mapping of quality name to a list of output counts indexed by prototype name. Represents the data that is shown in the middle of the GUI for electric networks and on the right side for all other statistics types.

### storage_counts

**Read:** dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)] · _read-only_

List of storage counts indexed by prototype name. Represents the data that is shown on the right side of the GUI for electric networks. For other statistics types these values are currently unused and hidden.

### storage_quality_counts

**Read:** dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)]] · _read-only_

A mapping of quality name to a list of storage counts indexed by prototype name. Represents the data that is shown on the right side of the GUI for electric networks. For other statistics types these values are currently unused and hidden.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [clear](#clear) | Reset all the statistics data to 0. |
| [get_current_input_sample](#get-current-input-sample) | Gets the current-tick input sample for a given prototype. |
| [get_current_output_sample](#get-current-output-sample) | Gets the current-tick output sample for a given prototype. |
| [get_flow_count](#get-flow-count) | Gets the flow count value for the given time frame. If `sample_index` is not provided, then the value returned is the average across the provided precision time period. These are the values shown in the bottom section of the statistics GUIs. |
| [get_input_count](#get-input-count) | Gets the total input count for a given prototype. |
| [get_output_count](#get-output-count) | Gets the total output count for a given prototype. |
| [get_storage_count](#get-storage-count) | Gets the total storage count for a given prototype. |
| [on_flow](#on-flow) | Adds a value to this flow statistics. |
| [set_current_input_sample](#set-current-input-sample) | Sets the current-tick input sample for a given prototype. |
| [set_current_output_sample](#set-current-output-sample) | Sets the current-tick output sample for a given prototype. |
| [set_input_count](#set-input-count) | Sets the total input count for a given prototype. |
| [set_output_count](#set-output-count) | Sets the total output count for a given prototype. |
| [set_storage_count](#set-storage-count) | Sets the total storage count for a given prototype. |

### clear

`clear()`

Reset all the statistics data to 0.

### get_current_input_sample

`get_current_input_sample(id)`

Gets the current-tick input sample for a given prototype.

These values get merged into the input counts at the end of the tick.

#### Parameters

##### id

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.

#### Return values

- [double](../concepts/double.md)

### get_current_output_sample

`get_current_output_sample(id)`

Gets the current-tick output sample for a given prototype.

These values get merged into the output counts at the end of the tick.

#### Parameters

##### id

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.

#### Return values

- [double](../concepts/double.md)

### get_flow_count

`get_flow_count({category, count, name, precision_index, sample_index})`

Gets the flow count value for the given time frame. If `sample_index` is not provided, then the value returned is the average across the provided precision time period. These are the values shown in the bottom section of the statistics GUIs.

Use `sample_index` to access the data used to generate the statistics graphs. Each precision level contains 300 samples of data so at a precision of 1 minute, each sample contains data averaged across 60s / 300 = 0.2s = 12 ticks.

All return values are normalized to be per-tick for electric networks and per-minute for all other types.

#### Parameters

##### category

**Type:** [string](../concepts/string.md)

The statistics category to read from. Valid choices are `"input"`, `"output"` and `"storage"`.

##### count

**Type:** [boolean](../concepts/boolean.md) · _optional_

If true, the count of items/fluids/entities is returned instead of the per-time-frame value.

##### name

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.

##### precision_index

**Type:** [defines.flow_precision_index](../defines/defines.md)

The precision to read.

##### sample_index

**Type:** [uint16](../concepts/uint16.md) · _optional_

The sample index to read from within the precision range. If not provided, the entire precision range is read. Must be between 1 and 300 where 1 is the most recent sample and 300 is the oldest.

#### Return values

- [double](../concepts/double.md)

### get_input_count

`get_input_count(id)`

Gets the total input count for a given prototype.

#### Parameters

##### id

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.

#### Return values

- [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)

### get_output_count

`get_output_count(id)`

Gets the total output count for a given prototype.

#### Parameters

##### id

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.

#### Return values

- [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)

### get_storage_count

`get_storage_count(id)`

Gets the total storage count for a given prototype.

#### Parameters

##### id

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.

#### Return values

- [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)

### on_flow

`on_flow(count, id)`

Adds a value to this flow statistics.

#### Parameters

##### count

**Type:** [float](../concepts/float.md)

The count: positive or negative determines if the value goes in the input or output statistics.

##### id

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.

### set_current_input_sample

`set_current_input_sample(count, id)`

Sets the current-tick input sample for a given prototype.

These values get merged into the input counts at the end of the tick.

#### Parameters

##### count

**Type:** [double](../concepts/double.md)

The new count.

##### id

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.

### set_current_output_sample

`set_current_output_sample(count, id)`

Sets the current-tick output sample for a given prototype.

These values get merged into the output counts at the end of the tick.

#### Parameters

##### count

**Type:** [double](../concepts/double.md)

The new count.

##### id

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.

### set_input_count

`set_input_count(count, id)`

Sets the total input count for a given prototype.

#### Parameters

##### count

**Type:** [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)

The new count. The type depends on the instance of the statistics.

##### id

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.

### set_output_count

`set_output_count(count, id)`

Sets the total output count for a given prototype.

#### Parameters

##### count

**Type:** [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)

The new count. The type depends on the instance of the statistics.

##### id

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.

### set_storage_count

`set_storage_count(count, id)`

Sets the total storage count for a given prototype.

#### Parameters

##### count

**Type:** [uint64](../concepts/uint64.md) ∣ [double](../concepts/double.md)

The new count. The type depends on the instance of the statistics.

##### id

**Type:** [FlowStatisticsID](../concepts/FlowStatisticsID.md)

The prototype ID.
