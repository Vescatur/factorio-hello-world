# ImageStyleSpecification

_type_

**Inherits from:** [BaseStyleSpecification](../types/BaseStyleSpecification.md)

Root style: `"image"`

**Example:**

```
data.raw["gui-style"]["default"]["stretchy-sprite"] =
{
  type = "image_style",
  vertically_stretchable = "on",
  horizontally_stretchable = "on",
  stretch_image_to_widget_size = true,
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [graphical_set](#graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [invert_colors_of_picture_when_hovered_or_toggled](#invert-colors-of-picture-when-hovered-or-toggled) | [boolean](../types/boolean.md) | yes |
| [stretch_image_to_widget_size](#stretch-image-to-widget-size) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"image_style"` |  |

### graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_

Required on the root style.

### invert_colors_of_picture_when_hovered_or_toggled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### stretch_image_to_widget_size

**Type:** [boolean](../types/boolean.md) · _optional_

Required on the root style.

### type

**Type:** `"image_style"`
