# PlaceEquipmentAchievementPrototype

_prototype_

**Prototype type string:** `type = "place-equipment-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [uint32](../types/uint32.md) | yes |
| [armor](#armor) | [ItemID](../types/ItemID.md) |  |
| [limit_equip_quality](#limit-equip-quality) | [QualityID](../types/QualityID.md) |  |
| [limit_quality](#limit-quality) | [QualityID](../types/QualityID.md) |  |
| [limited_to_one_game](#limited-to-one-game) | [boolean](../types/boolean.md) | yes |

### amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### armor

**Type:** [ItemID](../types/ItemID.md)

### limit_equip_quality

**Type:** [QualityID](../types/QualityID.md)

### limit_quality

**Type:** [QualityID](../types/QualityID.md)

### limited_to_one_game

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is false, the player carries over their statistics from this achievement through all their saves.
