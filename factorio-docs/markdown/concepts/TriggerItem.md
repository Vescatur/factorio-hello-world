# TriggerItem

_concept_

**Definition:** table{action_delivery, collision_mask, entity_flags, force, ignore_collision_condition, probability, repeat_count, trigger_target_mask, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [action_delivery](#action-delivery) | array[[TriggerDelivery](../concepts/TriggerDelivery.md)] | yes |
| [collision_mask](#collision-mask) | [CollisionMask](../concepts/CollisionMask.md) |  |
| [entity_flags](#entity-flags) | [EntityPrototypeFlags](../concepts/EntityPrototypeFlags.md) | yes |
| [force](#force) | [ForceCondition](../concepts/ForceCondition.md) |  |
| [ignore_collision_condition](#ignore-collision-condition) | [boolean](../concepts/boolean.md) |  |
| [probability](#probability) | [float](../concepts/float.md) |  |
| [repeat_count](#repeat-count) | [uint32](../concepts/uint32.md) |  |
| [trigger_target_mask](#trigger-target-mask) | [TriggerTargetMask](../concepts/TriggerTargetMask.md) |  |
| [type](#type) | `"direct"` ∣ `"area"` ∣ `"line"` ∣ `"cluster"` |  |

### action_delivery

**Type:** array[[TriggerDelivery](../concepts/TriggerDelivery.md)] · _optional_

### collision_mask

**Type:** [CollisionMask](../concepts/CollisionMask.md)

The trigger will only affect entities that would collide with given collision mask.

### entity_flags

**Type:** [EntityPrototypeFlags](../concepts/EntityPrototypeFlags.md) · _optional_

The trigger will only affect entities that contain any of these flags.

### force

**Type:** [ForceCondition](../concepts/ForceCondition.md)

If `"enemy"`, the trigger will only affect entities whose force is different from the attacker's and for which there is no cease-fire set. `"ally"` is the opposite of `"enemy"`.

### ignore_collision_condition

**Type:** [boolean](../concepts/boolean.md)

### probability

**Type:** [float](../concepts/float.md)

### repeat_count

**Type:** [uint32](../concepts/uint32.md)

### trigger_target_mask

**Type:** [TriggerTargetMask](../concepts/TriggerTargetMask.md)

### type

**Type:** `"direct"` ∣ `"area"` ∣ `"line"` ∣ `"cluster"`
