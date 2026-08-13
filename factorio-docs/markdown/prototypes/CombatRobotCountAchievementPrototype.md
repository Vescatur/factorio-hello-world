# CombatRobotCountAchievementPrototype

_prototype_

**Prototype type string:** `type = "combat-robot-count-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player has a certain robot follower count.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [uint32](../types/uint32.md) | yes |

### count

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

This will trigger the achievement, if player's current robot count is over this amount.

**Example:**

```
count = 100
```
