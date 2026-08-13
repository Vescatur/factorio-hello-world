# BlueprintBookPrototype

_prototype_

**Prototype type string:** `type = "blueprint-book"`

**Inherits from:** [ItemWithInventoryPrototype](../prototypes/ItemWithInventoryPrototype.md)

A [blueprint book](https://wiki.factorio.com/Blueprint_book).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [draw_label_for_cursor_render](#draw-label-for-cursor-render) | [boolean](../types/boolean.md) | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) ∣ `"dynamic"` |  |
| [stack_size](#stack-size) | `1` |  |

### draw_label_for_cursor_render

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If the item will draw its label when held in the cursor in place of the item count.

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) ∣ `"dynamic"` · _overrides parent_

The inventory size of the item.

### stack_size

**Type:** `1` · _overrides parent_

Count of items of the same name that can be stored in one inventory slot. Must be 1 when the `"not-stackable"` flag is set.

**Example:**

```
stack_size = 1
```
