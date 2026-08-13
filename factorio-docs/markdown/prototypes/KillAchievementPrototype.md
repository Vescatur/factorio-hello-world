# KillAchievementPrototype

_prototype_

**Prototype type string:** `type = "kill-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player destroys a certain amount of an entity, with a specific damage type.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [uint32](../types/uint32.md) | yes |
| [damage_dealer](#damage-dealer) | [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] | yes |
| [damage_type](#damage-type) | [DamageTypeID](../types/DamageTypeID.md) | yes |
| [in_vehicle](#in-vehicle) | [boolean](../types/boolean.md) | yes |
| [personally](#personally) | [boolean](../types/boolean.md) | yes |
| [to_kill](#to-kill) | [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] | yes |
| [type_to_kill](#type-to-kill) | [string](../types/string.md) | yes |

### amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

This is the amount of entity of the specified type the player needs to destroy to receive the achievement.

**Example:**

```
amount = 100
```

### damage_dealer

**Type:** [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] · _optional_

The killer of the entity must be one of these entities.

**Examples:**

```
damage_dealer = "artillery-turret"
```

```
damage_dealer = {"artillery-turret", "artillery-wagon"}
```

### damage_type

**Type:** [DamageTypeID](../types/DamageTypeID.md) · _optional_

This defines how the player needs to destroy the specific entity.

**Example:**

```
damage_type = "impact"
```

### in_vehicle

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

This defines if the player needs to be in a vehicle.

**Example:**

```
in_vehicle = true
```

### personally

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

This defines to make sure you are the one driving, for instance, in a tank rather than an automated train.

**Example:**

```
personally = true
```

### to_kill

**Type:** [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] · _optional_

This defines which entity needs to be destroyed in order to receive the achievement.

### type_to_kill

**Type:** [string](../types/string.md) · _optional_

This defines what entity type needs to be destroyed in order to receive the achievement.

**Example:**

```
type_to_kill = "inserter"
```
