# ItemInventoryPositions

_concept_

**Definition:** table{grid_count, in_inventory}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [grid_count](#grid-count) | [ItemCountType](../concepts/ItemCountType.md) | yes |
| [in_inventory](#in-inventory) | array[[InventoryPosition](../concepts/InventoryPosition.md)] | yes |

### grid_count

**Type:** [ItemCountType](../concepts/ItemCountType.md) · _optional_

Defaults to `0`. Number of items to request for the equipment grid. When the items arrive they will be used to revive the first matching ghost equipment.

### in_inventory

**Type:** array[[InventoryPosition](../concepts/InventoryPosition.md)] · _optional_

A list of stacks into which items should be inserted.
