# SpaceConnectionDistanceTraveledAchievementPrototype

_prototype_

**Prototype type string:** `type = "space-connection-distance-traveled-achievement"`

**Inherits from:** [AchievementPrototype](../prototypes/AchievementPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [distance](#distance) | [uint32](../types/uint32.md) |  |
| [reversed](#reversed) | [boolean](../types/boolean.md) |  |
| [tracked_connection](#tracked-connection) | [SpaceConnectionID](../types/SpaceConnectionID.md) |  |

### distance

**Type:** [uint32](../types/uint32.md)

How far a platform must travel to gain this achievement. Repeated trips over a shorter distance do not count.

### reversed

**Type:** [boolean](../types/boolean.md)

The achievement is unidirectional, this property controls the direction (using space connection definition).

When false, a platform must go through [from](../prototypes/SpaceConnectionPrototype.md#from) location and travel in [to](../prototypes/SpaceConnectionPrototype.md#to) direction. When true, a platform must go through `to` location and travel in `from` direction.

### tracked_connection

**Type:** [SpaceConnectionID](../types/SpaceConnectionID.md)
