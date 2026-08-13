# PushBackTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

The push back effect used by the [discharge defense](https://wiki.factorio.com/Discharge_defense).

Aims to push the target entity away from the source entity by the `distance` from the target entity's current position. Searches within double the `distance` from the pushed to position for the nearest non-colliding position for the target entity to be teleported too. If no valid non-colliding position is found or the target is not teleportable, then no push back occurs.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [distance](#distance) | [float](../types/float.md) |  |
| [type](#type) | `"push-back"` |  |

### distance

**Type:** [float](../types/float.md)

### type

**Type:** `"push-back"`
