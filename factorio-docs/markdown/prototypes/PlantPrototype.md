# PlantPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "plant"`

**Inherits from:** [TreePrototype](../prototypes/TreePrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [agricultural_tower_tint](#agricultural-tower-tint) | [RecipeTints](../types/RecipeTints.md) | yes |
| [growth_mounds](#growth-mounds) | array[[Sprite](../types/Sprite.md)] | yes |
| [growth_ticks](#growth-ticks) | [MapTick](../types/MapTick.md) |  |
| [growth_variations](#growth-variations) | array[[TreeGrowth](../types/TreeGrowth.md)] | yes |
| [harvest_emissions](#harvest-emissions) | dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] | yes |

### agricultural_tower_tint

**Type:** [RecipeTints](../types/RecipeTints.md) · _optional_

### growth_mounds

**Type:** array[[Sprite](../types/Sprite.md)] · _optional_

Mound sprite drawn under growing trees which fades close to full growth. If defined, it can't be empty.

### growth_ticks

**Type:** [MapTick](../types/MapTick.md)

Must be positive.

### growth_variations

**Type:** array[[TreeGrowth](../types/TreeGrowth.md)] · _optional_

If defined, it can't be empty.

### harvest_emissions

**Type:** dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] · _optional_

The burst of pollution to emit when the plant is harvested.
