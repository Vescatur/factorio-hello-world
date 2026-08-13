# UseItemAchievementPrototype

_prototype_

**Prototype type string:** `type = "use-item-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player uses a capsule.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [uint32](../types/uint32.md) | yes |
| [limit_quality](#limit-quality) | [QualityID](../types/QualityID.md) |  |
| [limited_to_one_game](#limited-to-one-game) | [boolean](../types/boolean.md) | yes |
| [to_use](#to-use) | [ItemID](../types/ItemID.md) |  |

### amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

How many capsules need to be used.

### limit_quality

**Type:** [QualityID](../types/QualityID.md)

### limited_to_one_game

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is false, the player carries over their statistics from this achievement through all their saves.

### to_use

**Type:** [ItemID](../types/ItemID.md)

This will trigger the achievement, if this capsule is used.

**Example:**

```
to_use = "raw-fish"
```
