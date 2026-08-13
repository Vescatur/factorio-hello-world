# AutoplaceSpecification

_concept_

Specifies how probability and richness are calculated when placing something on the map.

**Definition:** table{control, default_enabled, force, order, placement_density, probability_expression, richness_expression, tile_restriction}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [control](#control) | [string](../concepts/string.md) | yes |
| [default_enabled](#default-enabled) | [boolean](../concepts/boolean.md) |  |
| [force](#force) | [string](../concepts/string.md) |  |
| [order](#order) | [string](../concepts/string.md) |  |
| [placement_density](#placement-density) | [uint32](../concepts/uint32.md) |  |
| [probability_expression](#probability-expression) | [NoiseExpressionSourceString](../concepts/NoiseExpressionSourceString.md) |  |
| [richness_expression](#richness-expression) | [NoiseExpressionSourceString](../concepts/NoiseExpressionSourceString.md) | yes |
| [tile_restriction](#tile-restriction) | array[[AutoplaceSpecificationRestriction](../concepts/AutoplaceSpecificationRestriction.md)] | yes |

### control

**Type:** [string](../concepts/string.md) · _optional_

Control prototype name.

### default_enabled

**Type:** [boolean](../concepts/boolean.md)

### force

**Type:** [string](../concepts/string.md)

### order

**Type:** [string](../concepts/string.md)

### placement_density

**Type:** [uint32](../concepts/uint32.md)

### probability_expression

**Type:** [NoiseExpressionSourceString](../concepts/NoiseExpressionSourceString.md)

### richness_expression

**Type:** [NoiseExpressionSourceString](../concepts/NoiseExpressionSourceString.md) · _optional_

### tile_restriction

**Type:** array[[AutoplaceSpecificationRestriction](../concepts/AutoplaceSpecificationRestriction.md)] · _optional_
