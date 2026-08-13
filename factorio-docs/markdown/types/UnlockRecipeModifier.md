# UnlockRecipeModifier

_type_

**Inherits from:** [BaseModifier](../types/BaseModifier.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [recipe](#recipe) | [RecipeID](../types/RecipeID.md) |  |
| [type](#type) | `"unlock-recipe"` |  |
| [use_icon_overlay_constant](#use-icon-overlay-constant) | [boolean](../types/boolean.md) | yes |

### recipe

**Type:** [RecipeID](../types/RecipeID.md)

Prototype name of the [RecipePrototype](../prototypes/RecipePrototype.md) that is unlocked upon researching.

### type

**Type:** `"unlock-recipe"`

### use_icon_overlay_constant

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `false`, do not draw the small "constant" icon over the technology effect icon.
