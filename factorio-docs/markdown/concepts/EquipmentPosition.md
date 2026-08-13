# EquipmentPosition

_concept_

Position inside an equipment grid. This uses the same format as [MapPosition](../concepts/MapPosition.md), meaning it can be specified either with or without explicit keys.

**Examples:**

```
-- Explicit definition
{x = 5, y = 2}
{y = 2, x = 5}
```

```
-- Shorthand
{1, 2}
```

**Definition:** table{x, y} ∣ tuple[[int32](../concepts/int32.md), [int32](../concepts/int32.md)]
