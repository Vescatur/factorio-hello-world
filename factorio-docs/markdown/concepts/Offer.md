# Offer

_concept_

A single offer on a market entity.

**Definition:** table{offer, price}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [offer](#offer) | [TechnologyModifier](../concepts/TechnologyModifier.md) |  |
| [price](#price) | array[[MarketIngredient](../concepts/MarketIngredient.md)] | yes |

### offer

**Type:** [TechnologyModifier](../concepts/TechnologyModifier.md)

The action that will take place when a player accepts the offer. Usually a `"give-item"` modifier.

### price

**Type:** array[[MarketIngredient](../concepts/MarketIngredient.md)] · _optional_

List of prices.
