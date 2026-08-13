# AmmoCategory

_prototype_

**Prototype type string:** `type = "ammo-category"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

An ammo category. Each weapon has an ammo category, and can use any ammo with the same ammo category. Ammo categories can also be upgraded by technologies.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [bonus_gui_order](#bonus-gui-order) | [Order](../types/Order.md) | yes |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |

### bonus_gui_order

**Type:** [Order](../types/Order.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.
