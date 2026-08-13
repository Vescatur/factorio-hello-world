# MouseCursor

_prototype_

**Prototype type string:** `type = "mouse-cursor"`

Used by [SelectionToolPrototype::mouse_cursor](../prototypes/SelectionToolPrototype.md#mouse-cursor).

**Examples:**

```
{
  type = "mouse-cursor",
  name = "selection-tool-cursor",
  filename = "__core__/graphics/cross-select-x32.png",
  hot_pixel_x = 16,
  hot_pixel_y = 16
}
```

```
{
  type = "mouse-cursor",
  name = "system-crosshair",
  system_cursor = "crosshair"
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [filename](#filename) | [FileName](../types/FileName.md) | yes |
| [hot_pixel_x](#hot-pixel-x) | [int16](../types/int16.md) | yes |
| [hot_pixel_y](#hot-pixel-y) | [int16](../types/int16.md) | yes |
| [name](#name) | [string](../types/string.md) |  |
| [system_cursor](#system-cursor) | `"arrow"` ∣ `"i-beam"` ∣ `"crosshair"` ∣ `"wait-arrow"` ∣ `"size-all"` ∣ `"no"` ∣ `"hand"` | yes |
| [type](#type) | `"mouse-cursor"` |  |

### filename

**Type:** [FileName](../types/FileName.md) · _optional_

Mandatory if `system_cursor` is not defined.

### hot_pixel_x

**Type:** [int16](../types/int16.md) · _optional_

Mandatory if `system_cursor` is not defined.

### hot_pixel_y

**Type:** [int16](../types/int16.md) · _optional_

Mandatory if `system_cursor` is not defined.

### name

**Type:** [string](../types/string.md)

Name of the prototype.

### system_cursor

**Type:** `"arrow"` ∣ `"i-beam"` ∣ `"crosshair"` ∣ `"wait-arrow"` ∣ `"size-all"` ∣ `"no"` ∣ `"hand"` · _optional_

Either this or the other three properties have to be present.

### type

**Type:** `"mouse-cursor"`
