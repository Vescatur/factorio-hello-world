# SpiderLegTriggerEffect

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [effect](#effect) | [TriggerEffect](../types/TriggerEffect.md) |  |
| [position](#position) | [float](../types/float.md) |  |

### effect

**Type:** [TriggerEffect](../types/TriggerEffect.md)

### position

**Type:** [float](../types/float.md)

A number between 0 and 1 (inclusive) representing the distance from the upper end of the leg (0) to the lower end of the leg (1) where the effects will be triggered. For the upper leg, position 0 represents the point that the leg connects to the entity's hip and position 1 represents the knee. For the lower leg, position 0 represents the knee and position 1 represents the foot.
