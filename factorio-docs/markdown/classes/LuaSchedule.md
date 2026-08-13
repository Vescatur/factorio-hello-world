# LuaSchedule

_class_

The schedule of a particular [LuaTrain](../classes/LuaTrain.md) or [LuaSpacePlatform](../classes/LuaSpacePlatform.md).

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [current](#current) | [uint32](../concepts/uint32.md) |  |
| [group](#group) | [string](../concepts/string.md) | yes |
| [interrupt_count](#interrupt-count) | [uint32](../concepts/uint32.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [owner](#owner) | [LuaTrain](../classes/LuaTrain.md) ∣ [LuaSpacePlatform](../classes/LuaSpacePlatform.md) | yes |
| [tick_of_last_activity](#tick-of-last-activity) | [MapTick](../concepts/MapTick.md) |  |
| [tick_of_last_schedule_change](#tick-of-last-schedule-change) | [MapTick](../concepts/MapTick.md) |  |
| [ticks_in_station](#ticks-in-station) | [MapTick](../concepts/MapTick.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### current

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The schedule index of the current destination.

### group

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md) · _optional_

The group this schedule is part of, if any.

### interrupt_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### owner

**Read:** [LuaTrain](../classes/LuaTrain.md) ∣ [LuaSpacePlatform](../classes/LuaSpacePlatform.md) · _read-only_ · _optional_

The owner of this schedule.

### tick_of_last_activity

**Read:** [MapTick](../concepts/MapTick.md) · **Write:** [MapTick](../concepts/MapTick.md)

The time when the train or space platform was last considered active for the inactivity condition.

Note: when writing, value must not be larger than LuaGameScript::tick

### tick_of_last_schedule_change

**Read:** [MapTick](../concepts/MapTick.md) · _read-only_

### ticks_in_station

**Read:** [MapTick](../concepts/MapTick.md) · _read-only_

How long this train or space platform has been in the current station.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [activate_interrupt](#activate-interrupt) | Activates the interrupt at the given index, if the index is valid. |
| [add_interrupt](#add-interrupt) | Adds the given interrupt to the schedule if an interrupt with the given name does not already exist. |
| [add_record](#add-record) | Adds the given record to the end of the current schedule or at the given index using the provided data. |
| [add_wait_condition](#add-wait-condition) | Adds the given wait condition to the given record. |
| [change_interrupt](#change-interrupt) | Changes the interrupt at the given index to the provided values. Note, the names must match. |
| [change_wait_condition](#change-wait-condition) | Changes the wait condition on the given record to the new values. |
| [clear_interrupts](#clear-interrupts) | Removes all interrupts. |
| [clear_records](#clear-records) |  |
| [copy_record](#copy-record) | Copies the record from the given schedule at the given index into this schedule at the given index. |
| [drag_interrupt](#drag-interrupt) |  |
| [drag_record](#drag-record) |  |
| [drag_wait_condition](#drag-wait-condition) |  |
| [get_inside_interrupt](#get-inside-interrupt) | Gets if the given interrupt can be triggered inside other interrupts. |
| [get_interrupt](#get-interrupt) |  |
| [get_interrupts](#get-interrupts) |  |
| [get_record](#get-record) |  |
| [get_record_count](#get-record-count) | If the given index is invalid, `nil` is returned. |
| [get_records](#get-records) |  |
| [get_wait_condition](#get-wait-condition) | Gets the wait condition at the given record position if one exists. |
| [get_wait_condition_count](#get-wait-condition-count) | The number of wait conditions in the given schedule record. |
| [get_wait_conditions](#get-wait-conditions) | Gets the wait conditions at the given record position if they exist. |
| [go_to_station](#go-to-station) | Sets the train or space platform to go to a destination, including changing the train/space platform to automatic mode. |
| [remove_interrupt](#remove-interrupt) | Removes the interrupt at the given index, if the index is valid. |
| [remove_record](#remove-record) | Removes the record at the given record position, if the record position is valid. |
| [remove_wait_condition](#remove-wait-condition) | Removes the given wait condition from the given record. |
| [rename_interrupt](#rename-interrupt) |  |
| [set_allow_unloading](#set-allow-unloading) | Sets if unloading is allowed at the given schedule record position. Only relevant for space platforms. |
| [set_inside_interrupt](#set-inside-interrupt) | Sets if the given interrupt can be triggered inside other interrupts. |
| [set_interrupts](#set-interrupts) |  |
| [set_records](#set-records) |  |
| [set_stopped](#set-stopped) | Sets whether this train is in manual mode or this space platform is paused. |
| [set_wait_condition_mode](#set-wait-condition-mode) | Sets the comparison on the given wait condition. |

### activate_interrupt

`activate_interrupt(index)`

Activates the interrupt at the given index, if the index is valid.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

### add_interrupt

`add_interrupt(interrupt)`

Adds the given interrupt to the schedule if an interrupt with the given name does not already exist.

#### Parameters

##### interrupt

**Type:** [ScheduleInterrupt](../concepts/ScheduleInterrupt.md)

### add_record

`add_record(data)`

Adds the given record to the end of the current schedule or at the given index using the provided data.

#### Parameters

##### data

**Type:** [AddRecordData](../concepts/AddRecordData.md)

#### Return values

- [uint32](../concepts/uint32.md) _(optional)_ — The index the record was added at.

### add_wait_condition

`add_wait_condition(condition_index, record_position, type)`

Adds the given wait condition to the given record.

#### Parameters

##### condition_index

**Type:** [uint32](../concepts/uint32.md)

##### record_position

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md)

##### type

**Type:** [WaitConditionType](../concepts/WaitConditionType.md)

### change_interrupt

`change_interrupt(index, interrupt)`

Changes the interrupt at the given index to the provided values. Note, the names must match.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

##### interrupt

**Type:** [ScheduleInterrupt](../concepts/ScheduleInterrupt.md)

### change_wait_condition

`change_wait_condition(condition_index, record_position, wait_condition)`

Changes the wait condition on the given record to the new values.

#### Parameters

##### condition_index

**Type:** [uint32](../concepts/uint32.md)

##### record_position

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md)

##### wait_condition

**Type:** [WaitCondition](../concepts/WaitCondition.md)

### clear_interrupts

`clear_interrupts()`

Removes all interrupts.

### clear_records

`clear_records(interrupt_index)`

#### Parameters

##### interrupt_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

If provided, clears the records for this interrupt.

### copy_record

`copy_record(destination_index, source_index, source_schedule)`

Copies the record from the given schedule at the given index into this schedule at the given index.

#### Parameters

##### destination_index

**Type:** [uint32](../concepts/uint32.md)

##### source_index

**Type:** [uint32](../concepts/uint32.md)

##### source_schedule

**Type:** [LuaSchedule](../classes/LuaSchedule.md)

### drag_interrupt

`drag_interrupt(from, to)`

#### Parameters

##### from

**Type:** [uint32](../concepts/uint32.md)

##### to

**Type:** [uint32](../concepts/uint32.md)

### drag_record

`drag_record(from, interrupt_index, to)`

#### Parameters

##### from

**Type:** [uint32](../concepts/uint32.md)

##### interrupt_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The interrupt to operate on, if any.

##### to

**Type:** [uint32](../concepts/uint32.md)

### drag_wait_condition

`drag_wait_condition(from, record_position, to)`

#### Parameters

##### from

**Type:** [uint32](../concepts/uint32.md)

##### record_position

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md)

The record to change.

##### to

**Type:** [uint32](../concepts/uint32.md)

### get_inside_interrupt

`get_inside_interrupt(interrupt_index)`

Gets if the given interrupt can be triggered inside other interrupts.

#### Parameters

##### interrupt_index

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [boolean](../concepts/boolean.md)

### get_interrupt

`get_interrupt(index)`

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

#### Return values

- [ScheduleInterrupt](../concepts/ScheduleInterrupt.md) _(optional)_

### get_interrupts

`get_interrupts()`

#### Return values

- array[[ScheduleInterrupt](../concepts/ScheduleInterrupt.md)]

### get_record

`get_record(record_position)`

#### Parameters

##### record_position

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md)

#### Return values

- [ScheduleRecord](../concepts/ScheduleRecord.md) _(optional)_

### get_record_count

`get_record_count(interrupt_index)`

If the given index is invalid, `nil` is returned.

#### Parameters

##### interrupt_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

If provided, the record count in this interrupt is read.

#### Return values

- [uint32](../concepts/uint32.md) _(optional)_

### get_records

`get_records(interrupt_index)`

#### Parameters

##### interrupt_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

If provided, gets the records for this interrupt.

#### Return values

- array[[ScheduleRecord](../concepts/ScheduleRecord.md)] _(optional)_

### get_wait_condition

`get_wait_condition(condition_index, record_position)`

Gets the wait condition at the given record position if one exists.

#### Parameters

##### condition_index

**Type:** [uint32](../concepts/uint32.md)

##### record_position

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md)

#### Return values

- [WaitCondition](../concepts/WaitCondition.md) _(optional)_

### get_wait_condition_count

`get_wait_condition_count(record_position)`

The number of wait conditions in the given schedule record.

#### Parameters

##### record_position

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md)

#### Return values

- [uint32](../concepts/uint32.md) _(optional)_

### get_wait_conditions

`get_wait_conditions(record_position)`

Gets the wait conditions at the given record position if they exist.

#### Parameters

##### record_position

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md)

#### Return values

- array[[WaitCondition](../concepts/WaitCondition.md)] _(optional)_

### go_to_station

`go_to_station(schedule_index)`

Sets the train or space platform to go to a destination, including changing the train/space platform to automatic mode.

#### Parameters

##### schedule_index

**Type:** [uint32](../concepts/uint32.md)

The schedule index

### remove_interrupt

`remove_interrupt(index)`

Removes the interrupt at the given index, if the index is valid.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

### remove_record

`remove_record(record_position)`

Removes the record at the given record position, if the record position is valid.

#### Parameters

##### record_position

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md)

### remove_wait_condition

`remove_wait_condition(condition_index, record_position)`

Removes the given wait condition from the given record.

#### Parameters

##### condition_index

**Type:** [uint32](../concepts/uint32.md)

##### record_position

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md)

### rename_interrupt

`rename_interrupt(new_name, old_name)`

#### Parameters

##### new_name

**Type:** [string](../concepts/string.md)

The new name - if it already exists, does nothing.

##### old_name

**Type:** [string](../concepts/string.md)

The interrupt to rename

### set_allow_unloading

`set_allow_unloading(allow, record_position)`

Sets if unloading is allowed at the given schedule record position. Only relevant for space platforms.

#### Parameters

##### allow

**Type:** [boolean](../concepts/boolean.md)

##### record_position

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md)

### set_inside_interrupt

`set_inside_interrupt(interrupt_index, value)`

Sets if the given interrupt can be triggered inside other interrupts.

#### Parameters

##### interrupt_index

**Type:** [uint32](../concepts/uint32.md)

##### value

**Type:** [boolean](../concepts/boolean.md)

### set_interrupts

`set_interrupts(interrupts)`

#### Parameters

##### interrupts

**Type:** array[[ScheduleInterrupt](../concepts/ScheduleInterrupt.md)]

### set_records

`set_records(interrupt_index, records)`

#### Parameters

##### interrupt_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

If provided, the records will be set on this interrupt.

##### records

**Type:** array[[ScheduleRecord](../concepts/ScheduleRecord.md)]

### set_stopped

`set_stopped(stopped)`

Sets whether this train is in [manual mode](../classes/LuaTrain.md#manual-mode) or this space platform is [paused](../classes/LuaSpacePlatform.md#paused).

#### Parameters

##### stopped

**Type:** [boolean](../concepts/boolean.md)

### set_wait_condition_mode

`set_wait_condition_mode(condition_index, mode, record_position)`

Sets the comparison on the given wait condition.

#### Parameters

##### condition_index

**Type:** [uint32](../concepts/uint32.md)

##### mode

**Type:** [string](../concepts/string.md)

`"and"`, or `"or"`

##### record_position

**Type:** [ScheduleRecordPosition](../concepts/ScheduleRecordPosition.md)
