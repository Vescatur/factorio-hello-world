# TurretAttackModifier

_type_

**Inherits from:** [BaseModifier](../types/BaseModifier.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [infer_icon](#infer-icon) | [boolean](../types/boolean.md) | yes |
| [modifier](#modifier) | [double](../types/double.md) |  |
| [turret_id](#turret-id) | [EntityID](../types/EntityID.md) |  |
| [type](#type) | `"turret-attack"` |  |
| [use_icon_overlay_constant](#use-icon-overlay-constant) | [boolean](../types/boolean.md) | yes |

### infer_icon

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If set to `false`, use the icon from [UtilitySprites](../prototypes/UtilitySprites.md) for this technology effect icon.

### modifier

**Type:** [double](../types/double.md)

Modification value, which will be added to the current turret attack modifier upon researching.

### turret_id

**Type:** [EntityID](../types/EntityID.md)

Name of the [EntityPrototype](../prototypes/EntityPrototype.md) that is affected. This also works for non-turrets such as tanks, however, the bonus does not appear in the entity's tooltips.

### type

**Type:** `"turret-attack"`

### use_icon_overlay_constant

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If `false`, do not draw the small "constant" icon over the technology effect icon.
