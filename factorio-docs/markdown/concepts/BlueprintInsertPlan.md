# BlueprintInsertPlan

_concept_

Defines an item type that a blueprint entity will request.

**Definition:** table{id, items}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [id](#id) | [BlueprintItemIDAndQualityIDPair](../concepts/BlueprintItemIDAndQualityIDPair.md) |  |
| [items](#items) | [ItemInventoryPositions](../concepts/ItemInventoryPositions.md) |  |

### id

**Type:** [BlueprintItemIDAndQualityIDPair](../concepts/BlueprintItemIDAndQualityIDPair.md)

The prototype name and quality of the item to request.

### items

**Type:** [ItemInventoryPositions](../concepts/ItemInventoryPositions.md)

Describes the inventories to insert these items into.
