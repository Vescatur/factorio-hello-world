# ProducePerHourAchievementPrototype

_prototype_

**Prototype type string:** `type = "produce-per-hour-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player crafts a specified item a certain amount, in an hour.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [MaterialAmountType](../types/MaterialAmountType.md) |  |
| [fluid_product](#fluid-product) | [FluidID](../types/FluidID.md) | yes |
| [item_product](#item-product) | [ItemIDFilter](../types/ItemIDFilter.md) | yes |

### amount

**Type:** [MaterialAmountType](../types/MaterialAmountType.md)

This is how much the player has to craft in an hour, to receive the achievement.

**Example:**

```
amount = 1000
```

### fluid_product

**Type:** [FluidID](../types/FluidID.md) · _optional_

Mandatory if `item_product` is not defined.

This will tell the achievement what fluid the player needs to craft, to get the achievement.

**Example:**

```
fluid_product = "light-oil"
```

### item_product

**Type:** [ItemIDFilter](../types/ItemIDFilter.md) · _optional_

Mandatory if `fluid_product` is not defined.

This will tell the achievement what item the player needs to craft, to get the achievement.

**Example:**

```
item_product = "landfill"
```
