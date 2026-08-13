# CompleteObjectiveAchievementPrototype

_prototype_

**Prototype type string:** `type = "complete-objective-achievement"`

**Inherits from:** [AchievementPrototypeWithCondition](../prototypes/AchievementPrototypeWithCondition.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [within](#within) | [MapTick](../types/MapTick.md) | yes |

### within

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** ``math.huge``

The achievement must be completed within this time limit.

**Example:**

```
within = 60 * 60 * 60 * 8 -- 8 hours
```
