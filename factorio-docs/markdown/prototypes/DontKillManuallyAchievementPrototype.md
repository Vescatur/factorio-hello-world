# DontKillManuallyAchievementPrototype

_prototype_

**Prototype type string:** `type = "dont-kill-manually-achievement"`

**Inherits from:** [AchievementPrototypeWithCondition](../prototypes/AchievementPrototypeWithCondition.md)

This prototype is used for receiving an achievement when the player kill first entity using artillery.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [to_kill](#to-kill) | [EntityID](../types/EntityID.md) | yes |
| [type_not_to_kill](#type-not-to-kill) | [string](../types/string.md) | yes |

### to_kill

**Type:** [EntityID](../types/EntityID.md) · _optional_

This will disable the achievement, if this entity is killed manually. If you kill this entity with artillery first, you receive the achievement.

### type_not_to_kill

**Type:** [string](../types/string.md) · _optional_

This will disable the achievement, if this entity type is killed manually. If you kill this entity type with artillery first, you receive the achievement.

**Example:**

```
type_not_to_kill = "unit-spawner"
```
