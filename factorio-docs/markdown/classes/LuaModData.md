# LuaModData

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Arbitrary data provided by mods.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [data](#data) | dictionary[[string](../concepts/string.md) → [AnyBasic](../concepts/AnyBasic.md)] |  |
| [data_type](#data-type) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### data

**Read:** dictionary[[string](../concepts/string.md) → [AnyBasic](../concepts/AnyBasic.md)] · _read-only_

Provides full data of this prototype.

### data_type

**Read:** [string](../concepts/string.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [get](#get) | Provides partial access to the data. |

### get

`get(key)`

Provides partial access to the data.

#### Parameters

##### key

**Type:** [string](../concepts/string.md)

#### Return values

- [AnyBasic](../concepts/AnyBasic.md) _(optional)_
