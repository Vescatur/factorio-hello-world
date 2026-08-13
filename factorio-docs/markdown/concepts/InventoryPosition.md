# InventoryPosition

_concept_

**Definition:** table{count, inventory, stack}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [ItemCountType](../concepts/ItemCountType.md) | yes |
| [inventory](#inventory) | [defines.inventory](../defines/defines.md) |  |
| [stack](#stack) | [ItemStackIndex](../concepts/ItemStackIndex.md) |  |

### count

**Type:** [ItemCountType](../concepts/ItemCountType.md) · _optional_

How many items to insert. Defaults to `1`.

### inventory

**Type:** [defines.inventory](../defines/defines.md)

The ID of the inventory to insert into.

### stack

**Type:** [ItemStackIndex](../concepts/ItemStackIndex.md)

The stack index of the inventory to insert into. Uses 0-based indexing, in contrast to the 1-based indexing of most other inventory-related functions.
