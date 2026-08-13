# DontBuildEntityAchievementPrototype

_prototype_

**Prototype type string:** `type = "dont-build-entity-achievement"`

**Inherits from:** [AchievementPrototypeWithCondition](../prototypes/AchievementPrototypeWithCondition.md)

This prototype is used for receiving an achievement when the player finishes the game without building a specific entity.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [uint32](../types/uint32.md) | yes |
| [dont_build](#dont-build) | [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] |  |
| [research_with](#research-with) | [ItemID](../types/ItemID.md) ∣ array[[ItemID](../types/ItemID.md)] | yes |

### amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### dont_build

**Type:** [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)]

This will disable the achievement, if this entity is placed. If you finish the game without building this entity, you receive the achievement.

**Example:**

```
dont_build = {"bulk-inserter", "fluid-wagon"}
```

### research_with

**Type:** [ItemID](../types/ItemID.md) ∣ array[[ItemID](../types/ItemID.md)] · _optional_

If you research technology using one of specified items before building entity, you receive the achievement.
