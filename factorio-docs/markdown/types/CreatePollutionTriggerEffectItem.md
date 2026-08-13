# CreatePollutionTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [double](../types/double.md) |  |
| [entity](#entity) | [EntityID](../types/EntityID.md) | yes |
| [type](#type) | `"create-pollution"` |  |
| [use_entity_from_trigger](#use-entity-from-trigger) | [boolean](../types/boolean.md) | yes |

### amount

**Type:** [double](../types/double.md)

This may be negative which will reduce pollution when run.

### entity

**Type:** [EntityID](../types/EntityID.md) · _optional_

If not defined, and use_entity_from_trigger is false, the pollution does not show in statistics.

### type

**Type:** `"create-pollution"`

### use_entity_from_trigger

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If not set, and entity is not set, the pollution does not show in statistics.
