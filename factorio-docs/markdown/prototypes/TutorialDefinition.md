# TutorialDefinition

_prototype_

**Prototype type string:** `type = "tutorial"`

**Inherits from:** [PrototypeBase](../prototypes/PrototypeBase.md)

The definition of the tutorial to be used in the tips and tricks, see [TipsAndTricksItem](../prototypes/TipsAndTricksItem.md). The actual tutorial scripting code is defined in the tutorial scenario. The scenario must be placed in the `tutorials` folder in the mod.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [order](#order) | [Order](../types/Order.md) | yes |
| [scenario](#scenario) | [string](../types/string.md) |  |

### order

**Type:** [Order](../types/Order.md) · _optional_ · _overrides parent_ · **Default:** `Value of `name``

Used to order prototypes in inventory, recipes and GUIs. May not exceed a length of 200 characters.

### scenario

**Type:** [string](../types/string.md)

Name of the folder for this tutorial scenario in the [`tutorials` folder](../auxiliary/mod-structure.md).
