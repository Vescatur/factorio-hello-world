# UseEntityInEnergyProductionAchievementPrototype

_prototype_

**Prototype type string:** `type = "use-entity-in-energy-production-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player produces energy by entity.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [consumed_condition](#consumed-condition) | [ItemIDFilter](../types/ItemIDFilter.md) | yes |
| [entity](#entity) | [EntityID](../types/EntityID.md) |  |
| [produced_condition](#produced-condition) | [ItemIDFilter](../types/ItemIDFilter.md) | yes |
| [required_to_build](#required-to-build) | [EntityID](../types/EntityID.md) | yes |

### consumed_condition

**Type:** [ItemIDFilter](../types/ItemIDFilter.md) · _optional_

This item need to be consumed before gaining the achievement.

**Example:**

```
consumed_condition = "uranium-fuel-cell"
```

### entity

**Type:** [EntityID](../types/EntityID.md)

This entity is needed to produce energy, for the player to complete the achievement.

**Example:**

```
entity = "steam-engine"
```

### produced_condition

**Type:** [ItemIDFilter](../types/ItemIDFilter.md) · _optional_

This item needs to be produced before gaining the achievement.

### required_to_build

**Type:** [EntityID](../types/EntityID.md) · _optional_

This item need to be built before gaining the achievement.

**Example:**

```
required_to_build = "nuclear-reactor"
```
