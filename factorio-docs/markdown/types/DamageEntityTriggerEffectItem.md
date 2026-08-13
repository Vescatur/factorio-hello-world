# DamageEntityTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [apply_damage_to_trees](#apply-damage-to-trees) | [boolean](../types/boolean.md) | yes |
| [damage](#damage) | [DamageParameters](../types/DamageParameters.md) |  |
| [lower_damage_modifier](#lower-damage-modifier) | [float](../types/float.md) | yes |
| [lower_distance_threshold](#lower-distance-threshold) | [uint16](../types/uint16.md) | yes |
| [type](#type) | `"damage"` |  |
| [upper_damage_modifier](#upper-damage-modifier) | [float](../types/float.md) | yes |
| [upper_distance_threshold](#upper-distance-threshold) | [uint16](../types/uint16.md) | yes |
| [use_substitute](#use-substitute) | [boolean](../types/boolean.md) | yes |
| [vaporize](#vaporize) | [boolean](../types/boolean.md) | yes |

### apply_damage_to_trees

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### damage

**Type:** [DamageParameters](../types/DamageParameters.md)

### lower_damage_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### lower_distance_threshold

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `MAX_UINT16`

### type

**Type:** `"damage"`

### upper_damage_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### upper_distance_threshold

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `MAX_UINT16`

### use_substitute

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### vaporize

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, no corpse for killed entities will be created.
