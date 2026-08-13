# DontUseEntityInEnergyProductionAchievementPrototype

_prototype_

**Prototype type string:** `type = "dont-use-entity-in-energy-production-achievement"`

**Inherits from:** [AchievementPrototypeWithCondition](../prototypes/AchievementPrototypeWithCondition.md)

This prototype is used for receiving an achievement when the player finishes the game without receiving energy from a specific energy source.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [excluded](#excluded) | [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] |  |
| [included](#included) | [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] | yes |
| [last_hour_only](#last-hour-only) | [boolean](../types/boolean.md) | yes |
| [minimum_energy_produced](#minimum-energy-produced) | [Energy](../types/Energy.md) | yes |

### excluded

**Type:** [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)]

This will **not** disable the achievement, if this entity is placed, and you have received any amount of power from it.

**Example:**

```
excluded = {"steam-engine", "steam-turbine"}
```

### included

**Type:** [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] · _optional_

This will disable the achievement, if this entity is placed, and you have received any amount of power from it. If you finish the game without receiving power from this entity, you receive the achievement.

**Example:**

```
included = "solar-panel"
```

### last_hour_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, the achievements will only be checked for the last hour of the game, independently of finishing the game.

### minimum_energy_produced

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': '0J'}`

The minimum amount of energy that needs to be produced by the allowed entities to trigger the achievement.
