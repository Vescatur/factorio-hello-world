# LuaLogisticSection

_class_

Logistic section of a particular [LuaLogisticPoint](../classes/LuaLogisticPoint.md) or [LuaConstantCombinatorControlBehavior](../classes/LuaConstantCombinatorControlBehavior.md).

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [active](#active) | [boolean](../concepts/boolean.md) |  |
| [filters](#filters) | array[[LogisticFilter](../concepts/LogisticFilter.md)] |  |
| [filters_count](#filters-count) | [uint32](../concepts/uint32.md) |  |
| [group](#group) | [string](../concepts/string.md) |  |
| [index](#index) | [uint32](../concepts/uint32.md) |  |
| [is_manual](#is-manual) | [boolean](../concepts/boolean.md) |  |
| [multiplier](#multiplier) | [float](../concepts/float.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [owner](#owner) | [LuaEntity](../classes/LuaEntity.md) |  |
| [type](#type) | [defines.logistic_section_type](../defines/defines.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### active

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this section is active. This can only be written to when the section [is manual](../classes/LuaLogisticSection.md#is-manual).

### filters

**Read:** array[[LogisticFilter](../concepts/LogisticFilter.md)] · **Write:** array[[LogisticFilter](../concepts/LogisticFilter.md)]

The logistic filters for this section.

This can only be written to when the section [is manual](../classes/LuaLogisticSection.md#is-manual).

### filters_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Amount of filters this section has

### group

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The group this section belongs to.

An empty string when in no group.

This can only be written to when the section [is manual](../classes/LuaLogisticSection.md#is-manual).

### index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The section index of this section.

### is_manual

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Shortcut to check whether [LuaLogisticSection::type](../classes/LuaLogisticSection.md#type) is equal to [manual](../defines/defines.md).

### multiplier

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

Multiplier applied to all filters before they are used by game. This can only be written to when the section [is manual](../classes/LuaLogisticSection.md#is-manual).

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### owner

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_

The [LuaEntity](../classes/LuaEntity.md) owner of this LuaLogisticSection.

### type

**Read:** [defines.logistic_section_type](../defines/defines.md) · _read-only_

The type of this logistic section. Sections that are not manual are controlled by game itself and may not be allowed to be changed by script.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [clear_slot](#clear-slot) | Clears the logistic request and auto-trash from the given slot. |
| [get_slot](#get-slot) | Gets current settings of logistic request and auto-trash from the given slot. |
| [set_slot](#set-slot) | Sets logistic request and auto-trash slot to the given value. |

### clear_slot

`clear_slot(slot_index)`

Clears the logistic request and auto-trash from the given slot.

This can only be called when the section [is manual](../classes/LuaLogisticSection.md#is-manual).

#### Parameters

##### slot_index

**Type:** [LogisticFilterIndex](../concepts/LogisticFilterIndex.md)

Index of a slot to clear.

### get_slot

`get_slot(slot_index)`

Gets current settings of logistic request and auto-trash from the given slot.

#### Parameters

##### slot_index

**Type:** [LogisticFilterIndex](../concepts/LogisticFilterIndex.md)

Index of a slot to read.

#### Return values

- [LogisticFilter](../concepts/LogisticFilter.md)

### set_slot

`set_slot(filter, slot_index)`

Sets logistic request and auto-trash slot to the given value.

This will silently fail if personal logistics are not researched yet.

This can only be called when the section [is manual](../classes/LuaLogisticSection.md#is-manual).

#### Parameters

##### filter

**Type:** [LogisticFilter](../concepts/LogisticFilter.md)

The details of the filter to set.

##### slot_index

**Type:** [LogisticFilterIndex](../concepts/LogisticFilterIndex.md)

Index of a slot to set.

#### Return values

- [LogisticFilterIndex](../concepts/LogisticFilterIndex.md) _(optional)_ — The existing index for the given filter or nil if the filter was successfully set.

#### Raises

- `on_entity_logistic_slot_changed` — Raised if setting of logistic slot was successful.
