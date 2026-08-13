# NothingModifier

_type_

**Inherits from:** [BaseModifier](../types/BaseModifier.md)

Modifier that does nothing. Can be used to show custom scripted effects in the technology GUI.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [effect_description](#effect-description) | [LocalisedString](../types/LocalisedString.md) | yes |
| [type](#type) | `"nothing"` |  |
| [use_icon_overlay_constant](#use-icon-overlay-constant) | [boolean](../types/boolean.md) | yes |

### effect_description

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_

### type

**Type:** `"nothing"`

### use_icon_overlay_constant

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `false`, do not draw the small "constant" icon over the technology effect icon.
