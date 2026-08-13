# ConstructWithRobotsAchievementPrototype

_prototype_

**Prototype type string:** `type = "construct-with-robots-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player constructs enough entities with construction robots.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [uint32](../types/uint32.md) | yes |
| [limited_to_one_game](#limited-to-one-game) | [boolean](../types/boolean.md) |  |
| [more_than_manually](#more-than-manually) | [boolean](../types/boolean.md) | yes |

### amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

This will trigger the achievement, if enough entities were placed using construction robots.

**Example:**

```
amount = 100
```

### limited_to_one_game

**Type:** [boolean](../types/boolean.md)

If this is false, the player carries over their statistics from this achievement through all their saves.

### more_than_manually

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`
