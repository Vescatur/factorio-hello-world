# LuaLogisticPoint

_class_

Logistic point of a particular [LuaEntity](../classes/LuaEntity.md). A "Logistic point" is the name given for settings and properties used by requester, provider, and storage points in a given logistic network. These "points" don't have to be a logistic container but often are. One other entity that can own several points is the "character" character type entity.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [enabled](#enabled) | [boolean](../concepts/boolean.md) |  |
| [exact](#exact) | [boolean](../concepts/boolean.md) |  |
| [filters](#filters) | array[[CompiledLogisticFilter](../concepts/CompiledLogisticFilter.md)] | yes |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [logistic_member_index](#logistic-member-index) | [defines.logistic_member_index](../defines/defines.md) |  |
| [logistic_network](#logistic-network) | [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) |  |
| [mode](#mode) | [defines.logistic_mode](../defines/defines.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [owner](#owner) | [LuaEntity](../classes/LuaEntity.md) |  |
| [sections](#sections) | array[[LuaLogisticSection](../classes/LuaLogisticSection.md)] |  |
| [sections_count](#sections-count) | [uint32](../concepts/uint32.md) |  |
| [targeted_items_deliver](#targeted-items-deliver) | array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] |  |
| [targeted_items_pickup](#targeted-items-pickup) | array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] |  |
| [trash_not_requested](#trash-not-requested) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### enabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this logistic point is active, related to disabling logistics on player/spidertron.

When the logistic point is disabled it won't request and auto trash will do nothing.

### exact

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this logistic point is using the exact mode. In exact mode robots never over-deliver requests.

### filters

**Read:** array[[CompiledLogisticFilter](../concepts/CompiledLogisticFilter.md)] · _read-only_ · _optional_

The logistic filters for this logistic point, if this uses any.

The returned array will always have an entry for each filter and will be indexed in sequence when not `nil`.

### force

**Read:** [LuaForce](../classes/LuaForce.md) · _read-only_

The force of this logistic point.

This will always be the same as the [LuaLogisticPoint::owner](../classes/LuaLogisticPoint.md#owner) force.

### logistic_member_index

**Read:** [defines.logistic_member_index](../defines/defines.md) · _read-only_

The Logistic member index of this logistic point.

### logistic_network

**Read:** [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) · _read-only_

### mode

**Read:** [defines.logistic_mode](../defines/defines.md) · _read-only_

The logistic mode.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### owner

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_

The [LuaEntity](../classes/LuaEntity.md) owner of this LuaLogisticPoint.

### sections

**Read:** array[[LuaLogisticSection](../classes/LuaLogisticSection.md)] · _read-only_

All logistic sections of this logistic point.

### sections_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Amount of logistic sections this logistic point has.

### targeted_items_deliver

**Read:** array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] · _read-only_

Items targeted to be dropped off into this logistic point by robots or cargo pods.

### targeted_items_pickup

**Read:** array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] · _read-only_

Items targeted to be picked up from this logistic point by robots.

### trash_not_requested

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this logistic point is set to trash unrequested items.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [add_section](#add-section) | Adds a new logistic section to this logistic point if possible. |
| [get_section](#get-section) | Gets section on the selected index, if it exists |
| [remove_section](#remove-section) | Removes the given logistic section if possible. Removal may fail if the section index is out of range or the section is not manual. |

### add_section

`add_section(group)`

Adds a new logistic section to this logistic point if possible.

#### Parameters

##### group

**Type:** [string](../concepts/string.md) · _optional_

The group to assign this section to.

#### Return values

- [LuaLogisticSection](../classes/LuaLogisticSection.md) _(optional)_ — The added logistic section.

### get_section

`get_section(section_index)`

Gets section on the selected index, if it exists

#### Parameters

##### section_index

**Type:** [uint32](../concepts/uint32.md)

Index of the section

#### Return values

- [LuaLogisticSection](../classes/LuaLogisticSection.md)

### remove_section

`remove_section(section_index)`

Removes the given logistic section if possible. Removal may fail if the section index is out of range or the section is not [manual](../classes/LuaLogisticSection.md#is-manual).

#### Parameters

##### section_index

**Type:** [uint32](../concepts/uint32.md)

Index of the section

#### Return values

- [boolean](../concepts/boolean.md) — Whether section was removed.
