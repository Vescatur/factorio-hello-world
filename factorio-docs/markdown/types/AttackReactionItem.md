# AttackReactionItem

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [Trigger](../types/Trigger.md) | yes |
| [damage_type](#damage-type) | [DamageTypeID](../types/DamageTypeID.md) | yes |
| [range](#range) | [float](../types/float.md) |  |
| [reaction_modifier](#reaction-modifier) | [float](../types/float.md) | yes |

### action

**Type:** [Trigger](../types/Trigger.md) · _optional_

### damage_type

**Type:** [DamageTypeID](../types/DamageTypeID.md) · _optional_

### range

**Type:** [float](../types/float.md)

### reaction_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
