# SpoilToTriggerResult

_concept_

**Definition:** table{items_per_trigger, trigger}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [items_per_trigger](#items-per-trigger) | [uint32](../concepts/uint32.md) |  |
| [trigger](#trigger) | array[[TriggerItem](../concepts/TriggerItem.md)] |  |

### items_per_trigger

**Type:** [uint32](../concepts/uint32.md)

The trigger runs (count-in-stack / items_per_trigger) times; rounded up.

### trigger

**Type:** array[[TriggerItem](../concepts/TriggerItem.md)]

The trigger items that are run.
