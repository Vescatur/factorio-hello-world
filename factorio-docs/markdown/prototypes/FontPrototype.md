# FontPrototype

_prototype_

**Prototype type string:** `type = "font"`

Fonts are used in all GUIs in the game.

**Example:**

```
{
  type = "font",
  name = "default-button",
  from = "default-bold",
  size = 18
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [border](#border) | [boolean](../types/boolean.md) | yes |
| [border_color](#border-color) | [Color](../types/Color.md) | yes |
| [filtered](#filtered) | [boolean](../types/boolean.md) | yes |
| [from](#from) | [string](../types/string.md) |  |
| [name](#name) | [string](../types/string.md) |  |
| [size](#size) | [int32](../types/int32.md) |  |
| [spacing](#spacing) | [float](../types/float.md) | yes |
| [type](#type) | `"font"` |  |

### border

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the font has a border.

### border_color

**Type:** [Color](../types/Color.md) · _optional_

The color of the border, if enabled.

### filtered

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### from

**Type:** [string](../types/string.md)

The name of the fonts .ttf descriptor. This descriptor must be defined in the locale info.json. Refer to `data/core/locale/_language_/info.json` for examples.

### name

**Type:** [string](../types/string.md)

Name of the font.

### size

**Type:** [int32](../types/int32.md)

Size of the font.

### spacing

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### type

**Type:** `"font"`
