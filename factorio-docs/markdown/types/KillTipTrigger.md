# KillTipTrigger

_type_

**Inherits from:** [CountBasedTipTrigger](../types/CountBasedTipTrigger.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [damage_type](#damage-type) | [DamageTypeID](../types/DamageTypeID.md) | yes |
| [entity](#entity) | [EntityID](../types/EntityID.md) | yes |
| [match_type_only](#match-type-only) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"kill"` |  |

### damage_type

**Type:** [DamageTypeID](../types/DamageTypeID.md) · _optional_

If this is not set, any damage type will fulfill the trigger condition.

### entity

**Type:** [EntityID](../types/EntityID.md) · _optional_

### match_type_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### type

**Type:** `"kill"`
