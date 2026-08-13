# DontResearchBeforeResearchingAchievementPrototype

_prototype_

**Prototype type string:** `type = "dont-research-before-researching-achievement"`

**Inherits from:** [AchievementPrototypeWithCondition](../prototypes/AchievementPrototypeWithCondition.md)

This prototype is used for receiving an achievement when the player researches with a specific science pack before unlocking another.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [dont_research](#dont-research) | [ItemID](../types/ItemID.md) ∣ array[[ItemID](../types/ItemID.md)] |  |
| [research_with](#research-with) | [ItemID](../types/ItemID.md) ∣ array[[ItemID](../types/ItemID.md)] |  |

### dont_research

**Type:** [ItemID](../types/ItemID.md) ∣ array[[ItemID](../types/ItemID.md)]

This will disable the achievement, if technology unlocking this item is researched before meeting requirements.

**Example:**

```
dont_research = {"production-science-pack", "utility-science-pack"}
```

### research_with

**Type:** [ItemID](../types/ItemID.md) ∣ array[[ItemID](../types/ItemID.md)]

If you research technology using one of specified items, you receive the achievement.

**Example:**

```
research_with = {"metallurgic-science-pack", "electromagnetic-science-pack", "agricultural-science-pack"}
```
