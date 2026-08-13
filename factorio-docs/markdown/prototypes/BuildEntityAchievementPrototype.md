# BuildEntityAchievementPrototype

_prototype_

**Prototype type string:** `type = "build-entity-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

This prototype is used for receiving an achievement when the player builds an entity.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [uint32](../types/uint32.md) | yes |
| [limited_to_one_game](#limited-to-one-game) | [boolean](../types/boolean.md) | yes |
| [to_build](#to-build) | [EntityID](../types/EntityID.md) |  |
| [within](#within) | [MapTick](../types/MapTick.md) | yes |

### amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

How many entities need to be built.

### limited_to_one_game

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is false, the player carries over their statistics from this achievement through all their saves.

### to_build

**Type:** [EntityID](../types/EntityID.md)

This will trigger the achievement, if this entity is placed.

**Example:**

```
to_build = "locomotive"
```

### within

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** ``math.huge``

The achievement must be completed within this time limit.

**Example:**

```
within = 60 * 60 * 60 * 8 -- 8 hours
```
