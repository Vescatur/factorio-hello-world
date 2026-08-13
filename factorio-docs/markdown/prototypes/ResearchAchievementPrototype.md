# ResearchAchievementPrototype

_prototype_

**Prototype type string:** `type = "research-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player completes a specific research.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [research_all](#research-all) | [boolean](../types/boolean.md) | yes |
| [technology](#technology) | [TechnologyID](../types/TechnologyID.md) | yes |

### research_all

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Mandatory if `technology` is not defined.

This will only trigger if the player has learned every research in the game.

**Example:**

```
research_all = true
```

### technology

**Type:** [TechnologyID](../types/TechnologyID.md) · _optional_

Mandatory if `research_all` is not defined.

Researching this technology will trigger the achievement.

**Example:**

```
technology = "oil-processing"
```
