# SurfacePrototype

_prototype_

**Prototype type string:** `type = "surface"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [surface_properties](#surface-properties) | dictionary[[SurfacePropertyID](../types/SurfacePropertyID.md) → [double](../types/double.md)] | yes |

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded, and mandatory if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

### surface_properties

**Type:** dictionary[[SurfacePropertyID](../types/SurfacePropertyID.md) → [double](../types/double.md)] · _optional_
