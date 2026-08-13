# AmmoDamageModifier

_type_

**Inherits from:** [BaseModifier](../types/BaseModifier.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [ammo_category](#ammo-category) | [AmmoCategoryID](../types/AmmoCategoryID.md) |  |
| [infer_icon](#infer-icon) | [boolean](../types/boolean.md) | yes |
| [modifier](#modifier) | [double](../types/double.md) |  |
| [type](#type) | `"ammo-damage"` |  |
| [use_icon_overlay_constant](#use-icon-overlay-constant) | [boolean](../types/boolean.md) | yes |

### ammo_category

**Type:** [AmmoCategoryID](../types/AmmoCategoryID.md)

Name of the [AmmoCategory](../prototypes/AmmoCategory.md) that is affected.

### infer_icon

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If set to `false`, use the icon from [UtilitySprites](../prototypes/UtilitySprites.md) for this technology effect icon.

### modifier

**Type:** [double](../types/double.md)

Modification value, which will be added to the current ammo damage modifier upon researching.

### type

**Type:** `"ammo-damage"`

### use_icon_overlay_constant

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If `false`, do not draw the small "constant" icon over the technology effect icon.
