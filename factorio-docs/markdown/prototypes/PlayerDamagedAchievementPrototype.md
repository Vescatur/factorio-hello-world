# PlayerDamagedAchievementPrototype

_prototype_

**Prototype type string:** `type = "player-damaged-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player receives damage.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [minimum_damage](#minimum-damage) | [float](../types/float.md) |  |
| [should_survive](#should-survive) | [boolean](../types/boolean.md) |  |
| [type_of_dealer](#type-of-dealer) | [string](../types/string.md) | yes |

### minimum_damage

**Type:** [float](../types/float.md)

This will trigger the achievement, if the amount of damage taken by the dealer, is more than this.

**Example:**

```
minimum_damage = 500
```

### should_survive

**Type:** [boolean](../types/boolean.md)

This sets the achievement to only trigger, if you survive the minimum amount of damage. If you don't need to survive, false.

**Example:**

```
should_survive = true
```

### type_of_dealer

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

This will trigger the achievement, if the player takes damage from this specific entity type.

**Example:**

```
type_of_dealer = "locomotive"
```
