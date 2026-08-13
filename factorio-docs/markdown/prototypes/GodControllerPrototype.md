# GodControllerPrototype

_prototype_

**Prototype type string:** `type = "god-controller"`

Properties of the god controller.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [crafting_categories](#crafting-categories) | array[[RecipeCategoryID](../types/RecipeCategoryID.md)] | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [item_pickup_distance](#item-pickup-distance) | [double](../types/double.md) |  |
| [loot_pickup_distance](#loot-pickup-distance) | [double](../types/double.md) |  |
| [mining_categories](#mining-categories) | array[[ResourceCategoryID](../types/ResourceCategoryID.md)] | yes |
| [mining_speed](#mining-speed) | [double](../types/double.md) |  |
| [movement_speed](#movement-speed) | [double](../types/double.md) |  |
| [name](#name) | [string](../types/string.md) |  |
| [type](#type) | `"god-controller"` |  |

### crafting_categories

**Type:** array[[RecipeCategoryID](../types/RecipeCategoryID.md)] · _optional_

Names of the crafting categories the player can craft recipes from.

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

### item_pickup_distance

**Type:** [double](../types/double.md)

### loot_pickup_distance

**Type:** [double](../types/double.md)

### mining_categories

**Type:** array[[ResourceCategoryID](../types/ResourceCategoryID.md)] · _optional_

Names of the resource categories the player can mine resources from.

### mining_speed

**Type:** [double](../types/double.md)

### movement_speed

**Type:** [double](../types/double.md)

Must be >= 0.34375.

### name

**Type:** [string](../types/string.md)

Name of the god-controller. Base game uses "default".

### type

**Type:** `"god-controller"`
