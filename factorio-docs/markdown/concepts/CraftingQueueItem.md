# CraftingQueueItem

_concept_

**Definition:** table{count, index, prerequisite, recipe}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [uint32](../concepts/uint32.md) |  |
| [index](#index) | [uint32](../concepts/uint32.md) |  |
| [prerequisite](#prerequisite) | [boolean](../concepts/boolean.md) |  |
| [recipe](#recipe) | [string](../concepts/string.md) |  |

### count

**Type:** [uint32](../concepts/uint32.md)

The amount of items being crafted.

### index

**Type:** [uint32](../concepts/uint32.md)

The index of the item in the crafting queue.

### prerequisite

**Type:** [boolean](../concepts/boolean.md)

The item is a prerequisite for another item in the queue.

### recipe

**Type:** [string](../concepts/string.md)

The recipe being crafted.
