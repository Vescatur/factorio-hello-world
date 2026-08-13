# ResearchIngredient

_type_

Defines the amount of an item required to research one unit of a [technology](../prototypes/TechnologyPrototype.md). The first member of the tuple is the name of a [ItemPrototype](../prototypes/ItemPrototype.md) and the second is the amount. Amount must not be 0.

**Example:**

```
{"automation-science-pack", 1}
```

**Definition:** tuple[[ItemID](../types/ItemID.md), [uint16](../types/uint16.md)]
