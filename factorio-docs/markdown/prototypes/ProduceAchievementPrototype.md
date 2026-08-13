# ProduceAchievementPrototype

_prototype_

**Prototype type string:** `type = "produce-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player produces more than the specified amount of items.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [MaterialAmountType](../types/MaterialAmountType.md) |  |
| [fluid_product](#fluid-product) | [FluidID](../types/FluidID.md) | yes |
| [item_product](#item-product) | [ItemIDFilter](../types/ItemIDFilter.md) | yes |
| [limited_to_one_game](#limited-to-one-game) | [boolean](../types/boolean.md) |  |

### amount

**Type:** [MaterialAmountType](../types/MaterialAmountType.md)

This will set the amount of items or fluids needed to craft, for the player to complete the achievement.

**Example:**

```
amount = 100
```

### fluid_product

**Type:** [FluidID](../types/FluidID.md) · _optional_

Mandatory if `item_product` is not defined.

This will tell the achievement what fluid the player needs to craft, to get the achievement.

**Example:**

```
fluid_product = "heavy-oil"
```

### item_product

**Type:** [ItemIDFilter](../types/ItemIDFilter.md) · _optional_

Mandatory if `fluid_product` is not defined.

This will tell the achievement what item the player needs to craft, to get the achievement.

**Example:**

```
item_product = "pistol"
```

### limited_to_one_game

**Type:** [boolean](../types/boolean.md)

If this is false, the player carries over their statistics from this achievement through all their saves.
