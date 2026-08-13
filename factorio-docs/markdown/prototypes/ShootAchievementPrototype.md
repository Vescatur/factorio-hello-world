# ShootAchievementPrototype

_prototype_

**Prototype type string:** `type = "shoot-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player shoots certain ammo.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [ammo_type](#ammo-type) | [ItemID](../types/ItemID.md) | yes |
| [amount](#amount) | [uint32](../types/uint32.md) | yes |

### ammo_type

**Type:** [ItemID](../types/ItemID.md) · _optional_

This will trigger the achievement, if this ammo is shot.

**Example:**

```
ammo_type = "atomic-bomb"
```

### amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

How much of the ammo needs to be shot.
