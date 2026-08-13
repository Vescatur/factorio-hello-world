# GroupAttackAchievementPrototype

_prototype_

**Prototype type string:** `type = "group-attack-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player gets attacked due to pollution.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [uint32](../types/uint32.md) | yes |
| [attack_type](#attack-type) | `"autonomous"` ∣ `"distraction"` ∣ `"scripted"` | yes |
| [entities](#entities) | array[[EntityID](../types/EntityID.md)] | yes |

### amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

This will trigger the achievement, if the player receives this amount of attacks. **Note**: The default achievement "it stinks and they don't like it" uses the amount of 1. (As in getting attacked once.)

**Example:**

```
amount = 10
```

### attack_type

**Type:** `"autonomous"` ∣ `"distraction"` ∣ `"scripted"` · _optional_

The type of attack that triggers this achievement. "autonomous" attacks are triggered in response to pollution or a territory disturbance. "distraction" attacks are in response to taking damage or seeing a nearby enemy. "scripted" attacks are triggered from mods.

### entities

**Type:** array[[EntityID](../types/EntityID.md)] · _optional_

The achievement is only triggered if the attacking group of enemies contains at least one of the entities listed here.
