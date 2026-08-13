# LuaLogisticSections

_class_

Logistic sections of an entity.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [sections](#sections) | array[[LuaLogisticSection](../classes/LuaLogisticSection.md)] |  |
| [sections_count](#sections-count) | [uint32](../concepts/uint32.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### sections

**Read:** array[[LuaLogisticSection](../classes/LuaLogisticSection.md)] · _read-only_

All logistic sections of this entity.

### sections_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Amount of logistic sections this entity has.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [add_section](#add-section) | Adds a new logistic section if possible. |
| [get_section](#get-section) | Gets section on the selected index, if it exists. |
| [remove_section](#remove-section) | Removes the given logistic section if possible. Removal may fail if the section index is out of range or the section is not manual. |

### add_section

`add_section(group)`

Adds a new logistic section if possible.

#### Parameters

##### group

**Type:** [string](../concepts/string.md) · _optional_

The group to assign this section to.

#### Return values

- [LuaLogisticSection](../classes/LuaLogisticSection.md) _(optional)_ — Logistic section if added.

### get_section

`get_section(section_index)`

Gets section on the selected index, if it exists.

#### Parameters

##### section_index

**Type:** [uint32](../concepts/uint32.md)

Index of the section.

#### Return values

- [LuaLogisticSection](../classes/LuaLogisticSection.md) _(optional)_

### remove_section

`remove_section(section_index)`

Removes the given logistic section if possible. Removal may fail if the section index is out of range or the section is not [manual](../classes/LuaLogisticSection.md#is-manual).

#### Parameters

##### section_index

**Type:** [uint32](../concepts/uint32.md)

Index of the section.

#### Return values

- [boolean](../concepts/boolean.md) — Whether section was removed.
