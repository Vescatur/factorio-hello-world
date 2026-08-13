# OnRecipeCraftedData

_concept_

**Definition:** table{bonus, entity, name, product_quality, quality_effect, quality_seed, recipe, recipe_quality, shared_roll, tick}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [bonus](#bonus) | [boolean](../concepts/boolean.md) |  |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [product_quality](#product-quality) | [string](../concepts/string.md) |  |
| [quality_effect](#quality-effect) | [EffectValue](../concepts/EffectValue.md) | yes |
| [quality_seed](#quality-seed) | [double](../concepts/double.md) | yes |
| [recipe](#recipe) | [string](../concepts/string.md) |  |
| [recipe_quality](#recipe-quality) | [string](../concepts/string.md) |  |
| [shared_roll](#shared-roll) | [double](../concepts/double.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### bonus

**Type:** [boolean](../concepts/boolean.md)

If crafted as part of bonus products.

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

Entity that crafted recipe.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### product_quality

**Type:** [string](../concepts/string.md)

Quality of products given. May be different than recipe quality if quality modules are present. Always provided even if quality_effect is zero because [LuaEntity::result_quality](../classes/LuaEntity.md#result-quality) may have been used. Only used by products without quality control.

### quality_effect

**Type:** [EffectValue](../concepts/EffectValue.md) · _optional_

Quality effect used when giving products. Not provided if value is 0. May be different than value obtained from [LuaEntity::effects](../classes/LuaEntity.md#effects) when quality modules were changed between craft starting and products being given.

### quality_seed

**Type:** [double](../concepts/double.md) · _optional_

Random value in range [0, 1) that was used when selecting product quality. Only provided when quality_effect is provided.

### recipe

**Type:** [string](../concepts/string.md)

Name of recipe that was crafted.

### recipe_quality

**Type:** [string](../concepts/string.md)

Quality of the recipe crafted.

### shared_roll

**Type:** [double](../concepts/double.md)

Random value in range [0, 1) used as part of shared roll when giving products. Related to [ProductPrototypeBase::shared_probability](../types/ProductPrototypeBase.md#shared-probability).

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
