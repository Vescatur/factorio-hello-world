# DontCraftManuallyAchievementPrototype

_prototype_

**Prototype type string:** `type = "dont-craft-manually-achievement"`

**Inherits from:** [AchievementPrototypeWithCondition](../prototypes/AchievementPrototypeWithCondition.md)

This prototype is used for receiving an achievement when the player finishes the game without crafting more than a set amount.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [uint32](../types/uint32.md) |  |

### amount

**Type:** [uint32](../types/uint32.md)

This will disable the achievement, if the player crafts more than this.

**Example:**

```
amount = 111
```
