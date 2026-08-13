# SetRecipeTipTrigger

_type_

**Inherits from:** [CountBasedTipTrigger](../types/CountBasedTipTrigger.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [any_quality](#any-quality) | [boolean](../types/boolean.md) | yes |
| [consecutive](#consecutive) | [boolean](../types/boolean.md) | yes |
| [machine](#machine) | [EntityID](../types/EntityID.md) | yes |
| [recipe](#recipe) | [RecipeID](../types/RecipeID.md) | yes |
| [type](#type) | `"set-recipe"` |  |
| [uses_fluid](#uses-fluid) | [boolean](../types/boolean.md) | yes |

### any_quality

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### consecutive

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### machine

**Type:** [EntityID](../types/EntityID.md) · _optional_

### recipe

**Type:** [RecipeID](../types/RecipeID.md) · _optional_

### type

**Type:** `"set-recipe"`

### uses_fluid

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `any`
