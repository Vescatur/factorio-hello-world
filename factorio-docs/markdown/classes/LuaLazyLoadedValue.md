# LuaLazyLoadedValue

_class_

A lazily loaded value. For performance reasons, we sometimes return a custom lazily-loaded value type instead of the native Lua value. This custom type lazily constructs the necessary value when [LuaLazyLoadedValue::get](../classes/LuaLazyLoadedValue.md#get) is called, therefore preventing its unnecessary construction in some cases.

An instance of LuaLazyLoadedValue is only valid during the event it was created from and cannot be saved.

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
| [get](#get) | Gets the value of this lazy loaded value. |

### get

`get()`

Gets the value of this lazy loaded value.

#### Return values

- [Any](../concepts/Any.md)
