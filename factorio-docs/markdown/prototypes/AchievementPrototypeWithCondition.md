# AchievementPrototypeWithCondition

_prototype_ · **abstract**

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [objective_condition](#objective-condition) | `"game-finished"` ∣ `"rocket-launched"` ∣ `"late-research"` | yes |

### objective_condition

**Type:** `"game-finished"` ∣ `"rocket-launched"` ∣ `"late-research"` · _optional_

The condition that needs to be met to receive the achievement. Required for `"complete-objective-achievement"`, `"dont-build-entity-achievement"`, and `"dont-craft-manually-achievement"`. Not allowed for `"dont-kill-manually-achievement"` and `"dont-research-before-researching-achievement"`. Only allowed for `"dont-use-entity-in-energy-production-achievement"` if `"last_hour_only"` is `false`.
