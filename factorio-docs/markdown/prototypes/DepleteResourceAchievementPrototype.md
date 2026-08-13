# DepleteResourceAchievementPrototype

_prototype_

**Prototype type string:** `type = "deplete-resource-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when a resource entity is depleted.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [uint32](../types/uint32.md) | yes |
| [limited_to_one_game](#limited-to-one-game) | [boolean](../types/boolean.md) | yes |

### amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

How many resource entities need to be depleted.

### limited_to_one_game

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is false, the player carries over their statistics from this achievement through all their saves.
