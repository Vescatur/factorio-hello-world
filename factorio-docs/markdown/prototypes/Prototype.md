# Prototype

_prototype_ · **abstract**

**Inherits from:** [PrototypeBase](../prototypes/PrototypeBase.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [custom_tooltip_fields](#custom-tooltip-fields) | array[[CustomTooltipField](../types/CustomTooltipField.md)] | yes |
| [factoriopedia_alternative](#factoriopedia-alternative) | [string](../types/string.md) | yes |

### custom_tooltip_fields

**Type:** array[[CustomTooltipField](../types/CustomTooltipField.md)] · _optional_

Allows to add extra description items to the tooltip and Factoriopedia.

### factoriopedia_alternative

**Type:** [string](../types/string.md) · _optional_

The ID type corresponding to the prototype that inherits from this.

For example, if this is an [EntityPrototype](../prototypes/EntityPrototype.md), this property's type is [EntityID](../types/EntityID.md).
