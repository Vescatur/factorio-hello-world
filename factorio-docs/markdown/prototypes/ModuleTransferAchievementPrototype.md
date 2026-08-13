# ModuleTransferAchievementPrototype

_prototype_

**Prototype type string:** `type = "module-transfer-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player moves a module with the cursor.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [uint32](../types/uint32.md) | yes |
| [limited_to_one_game](#limited-to-one-game) | [boolean](../types/boolean.md) | yes |
| [module](#module) | [ItemID](../types/ItemID.md) ∣ array[[ItemID](../types/ItemID.md)] |  |

### amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

How many modules need to be transferred.

### limited_to_one_game

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is false, the player carries over their statistics from this achievement through all their saves.

### module

**Type:** [ItemID](../types/ItemID.md) ∣ array[[ItemID](../types/ItemID.md)]

This will trigger the achievement, if this module is transferred.

**Example:**

```
module = "quality-module"
```
