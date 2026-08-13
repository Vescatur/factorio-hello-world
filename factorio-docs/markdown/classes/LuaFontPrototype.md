# LuaFontPrototype

_class_

Prototype of a font.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [border](#border) | [boolean](../concepts/boolean.md) |  |
| [border_color](#border-color) | [Color](../concepts/Color.md) | yes |
| [filtered](#filtered) | [boolean](../concepts/boolean.md) |  |
| [from](#from) | [string](../concepts/string.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [size](#size) | [int32](../concepts/int32.md) |  |
| [spacing](#spacing) | [float](../concepts/float.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### border

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### border_color

**Read:** [Color](../concepts/Color.md) · _read-only_ · _optional_

The border color, if any.

### filtered

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### from

**Read:** [string](../concepts/string.md) · _read-only_

### name

**Read:** [string](../concepts/string.md) · _read-only_

Name of this prototype.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### size

**Read:** [int32](../concepts/int32.md) · _read-only_

### spacing

**Read:** [float](../concepts/float.md) · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
