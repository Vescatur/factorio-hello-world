# ItemToPlace

_type_

Item that when placed creates this entity/tile.

**Example:**

```
{item = "iron-chest", count = 1}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [ItemCountType](../types/ItemCountType.md) |  |
| [item](#item) | [ItemID](../types/ItemID.md) |  |

### count

**Type:** [ItemCountType](../types/ItemCountType.md)

How many items are used to place one of this entity/tile. Can't be larger than the stack size of the item.

### item

**Type:** [ItemID](../types/ItemID.md)

The item used to place this entity/tile.
