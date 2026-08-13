# DestroyCliffsTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [explosion_at_cliff](#explosion-at-cliff) | [EntityID](../types/EntityID.md) | yes |
| [explosion_at_trigger](#explosion-at-trigger) | [EntityID](../types/EntityID.md) | yes |
| [radius](#radius) | [float](../types/float.md) |  |
| [type](#type) | `"destroy-cliffs"` |  |

### explosion_at_cliff

**Type:** [EntityID](../types/EntityID.md) · _optional_

Entity created at cliff location when a cliff is destroyed.

### explosion_at_trigger

**Type:** [EntityID](../types/EntityID.md) · _optional_

Entity created at trigger location every time trigger executes.

### radius

**Type:** [float](../types/float.md)

### type

**Type:** `"destroy-cliffs"`
