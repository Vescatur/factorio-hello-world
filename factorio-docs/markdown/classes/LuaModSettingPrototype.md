# LuaModSettingPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a mod setting.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [allow_blank](#allow-blank) | [boolean](../concepts/boolean.md) | yes |
| [allowed_values](#allowed-values) | array[[string](../concepts/string.md)] ∣ array[[int32](../concepts/int32.md)] ∣ array[[double](../concepts/double.md)] | yes |
| [auto_trim](#auto-trim) | [boolean](../concepts/boolean.md) | yes |
| [default_value](#default-value) | [boolean](../concepts/boolean.md) ∣ [double](../concepts/double.md) ∣ [int32](../concepts/int32.md) ∣ [string](../concepts/string.md) ∣ [Color](../concepts/Color.md) |  |
| [maximum_value](#maximum-value) | [double](../concepts/double.md) ∣ [int32](../concepts/int32.md) | yes |
| [minimum_value](#minimum-value) | [double](../concepts/double.md) ∣ [int32](../concepts/int32.md) | yes |
| [mod](#mod) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [setting_type](#setting-type) | `"startup"` ∣ `"runtime-global"` ∣ `"runtime-per-user"` |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### allow_blank

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this string setting allows blank values. `nil` if not a string setting.

### allowed_values

**Read:** array[[string](../concepts/string.md)] ∣ array[[int32](../concepts/int32.md)] ∣ array[[double](../concepts/double.md)] · _read-only_ · _optional_

The allowed values for this setting. `nil` if this setting doesn't use the a fixed set of values.

### auto_trim

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

Whether this string setting auto-trims values. `nil` if not a string setting

### default_value

**Read:** [boolean](../concepts/boolean.md) ∣ [double](../concepts/double.md) ∣ [int32](../concepts/int32.md) ∣ [string](../concepts/string.md) ∣ [Color](../concepts/Color.md) · _read-only_

The default value of this setting.

### maximum_value

**Read:** [double](../concepts/double.md) ∣ [int32](../concepts/int32.md) · _read-only_ · _optional_

The maximum value for this setting. `nil` if this setting type doesn't support a maximum.

### minimum_value

**Read:** [double](../concepts/double.md) ∣ [int32](../concepts/int32.md) · _read-only_ · _optional_

The minimum value for this setting. `nil` if this setting type doesn't support a minimum.

### mod

**Read:** [string](../concepts/string.md) · _read-only_

The mod that owns this setting.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### setting_type

**Read:** `"startup"` ∣ `"runtime-global"` ∣ `"runtime-per-user"` · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
