# TriggerItem

_type_ · **abstract**

The abstract base of all [Triggers](../types/Trigger.md).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [action_delivery](#action-delivery) | [TriggerDelivery](../types/TriggerDelivery.md) ∣ array[[TriggerDelivery](../types/TriggerDelivery.md)] | yes |
| [collision_mask](#collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [entity_flags](#entity-flags) | [EntityPrototypeFlags](../types/EntityPrototypeFlags.md) | yes |
| [force](#force) | [ForceCondition](../types/ForceCondition.md) | yes |
| [ignore_collision_condition](#ignore-collision-condition) | [boolean](../types/boolean.md) | yes |
| [probability](#probability) | [float](../types/float.md) | yes |
| [repeat_count](#repeat-count) | [uint32](../types/uint32.md) | yes |
| [trigger_target_mask](#trigger-target-mask) | [TriggerTargetMask](../types/TriggerTargetMask.md) | yes |

### action_delivery

**Type:** [TriggerDelivery](../types/TriggerDelivery.md) ∣ array[[TriggerDelivery](../types/TriggerDelivery.md)] · _optional_

### collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_ · **Default:** `All masks`

Only prototypes with these collision masks are affected by the trigger item.

### entity_flags

**Type:** [EntityPrototypeFlags](../types/EntityPrototypeFlags.md) · _optional_ · **Default:** `All flags`

Only prototypes with these flags are affected by the trigger item.

### force

**Type:** [ForceCondition](../types/ForceCondition.md) · _optional_ · **Default:** `All forces`

Only entities meeting the force condition are affected by the trigger item.

### ignore_collision_condition

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### probability

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be greater than 0 and less than or equal to 1.

### repeat_count

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### trigger_target_mask

**Type:** [TriggerTargetMask](../types/TriggerTargetMask.md) · _optional_ · **Default:** `Everything`

The trigger affects only prototypes with these masks.
