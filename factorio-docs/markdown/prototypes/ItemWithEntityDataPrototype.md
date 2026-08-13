# ItemWithEntityDataPrototype

_prototype_

**Prototype type string:** `type = "item-with-entity-data"`

**Inherits from:** [ItemPrototype](../prototypes/ItemPrototype.md)

ItemWithEntityData saves data associated with the entity that it represents, for example the content of the equipment grid of a car.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [icon_tintable](#icon-tintable) | [FileName](../types/FileName.md) | yes |
| [icon_tintable_mask](#icon-tintable-mask) | [FileName](../types/FileName.md) | yes |
| [icon_tintable_mask_size](#icon-tintable-mask-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icon_tintable_masks](#icon-tintable-masks) | array[[IconData](../types/IconData.md)] | yes |
| [icon_tintable_size](#icon-tintable-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icon_tintables](#icon-tintables) | array[[IconData](../types/IconData.md)] | yes |

### icon_tintable

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded if `icon_tintables` is not defined.

### icon_tintable_mask

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded if `icon_tintable_masks` is not defined and `icon_tintable` is defined.

### icon_tintable_mask_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icon_tintable_masks` is not defined and `icon_tintable` is defined.

### icon_tintable_masks

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

Only loaded if `icon_tintable` is defined.

### icon_tintable_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icon_tintables` is not defined and `icon_tintable` is defined.

### icon_tintables

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

Only loaded if `icon_tintable` is defined (`icon_tintables` takes precedence over `icon_tintable`).
