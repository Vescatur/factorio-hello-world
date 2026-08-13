# DelayedActiveTriggerPrototype

_prototype_

**Prototype type string:** `type = "delayed-active-trigger"`

**Inherits from:** [ActiveTriggerPrototype](../prototypes/ActiveTriggerPrototype.md)

Delays the delivery of triggered effect by some number of ticks.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [Trigger](../types/Trigger.md) |  |
| [cancel_when_source_is_destroyed](#cancel-when-source-is-destroyed) | [boolean](../types/boolean.md) | yes |
| [delay](#delay) | [uint32](../types/uint32.md) |  |
| [repeat_count](#repeat-count) | [uint32](../types/uint32.md) | yes |
| [repeat_delay](#repeat-delay) | [uint32](../types/uint32.md) | yes |

### action

**Type:** [Trigger](../types/Trigger.md)

The trigger to apply after `delay` has elapsed.

### cancel_when_source_is_destroyed

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If true, the delayed trigger is cancelled if the source entity is destroyed.

### delay

**Type:** [uint32](../types/uint32.md)

The number of ticks to delay the delivery of the triggered effect. Must be greater than 0.

### repeat_count

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The number of times to repeat the delayed trigger.

### repeat_delay

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `Value of `delay``

The number of ticks between repeat deliveries of the triggered effect. Must be greater than 0.
