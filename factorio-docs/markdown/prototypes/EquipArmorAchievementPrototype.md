# EquipArmorAchievementPrototype

_prototype_

**Prototype type string:** `type = "equip-armor-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player equips armor.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alternative_armor](#alternative-armor) | [ItemID](../types/ItemID.md) |  |
| [amount](#amount) | [uint32](../types/uint32.md) | yes |
| [armor](#armor) | [ItemID](../types/ItemID.md) |  |
| [limit_quality](#limit-quality) | [QualityID](../types/QualityID.md) |  |
| [limited_to_one_game](#limited-to-one-game) | [boolean](../types/boolean.md) | yes |

### alternative_armor

**Type:** [ItemID](../types/ItemID.md)

The achievement will trigger if this armor or the other armor is equipped.

**Example:**

```
alternative_armor = "mech-armor"
```

### amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

How many armors need to be equipped.

### armor

**Type:** [ItemID](../types/ItemID.md)

The achievement will trigger if this armor or the alternative armor is equipped.

**Example:**

```
armor = "power-armor-mk2"
```

### limit_quality

**Type:** [QualityID](../types/QualityID.md)

### limited_to_one_game

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is false, the player carries over their statistics from this achievement through all their saves.
