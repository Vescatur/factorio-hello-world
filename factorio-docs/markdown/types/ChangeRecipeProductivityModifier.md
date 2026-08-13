# ChangeRecipeProductivityModifier

_type_

**Inherits from:** [BaseModifier](../types/BaseModifier.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [change](#change) | [EffectValue](../types/EffectValue.md) |  |
| [recipe](#recipe) | [RecipeID](../types/RecipeID.md) |  |
| [type](#type) | `"change-recipe-productivity"` |  |
| [use_icon_overlay_constant](#use-icon-overlay-constant) | [boolean](../types/boolean.md) | yes |

### change

**Type:** [EffectValue](../types/EffectValue.md)

### recipe

**Type:** [RecipeID](../types/RecipeID.md)

### type

**Type:** `"change-recipe-productivity"`

### use_icon_overlay_constant

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If `false`, do not draw the small "constant" icon over the technology effect icon.
