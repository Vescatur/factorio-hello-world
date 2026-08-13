# AmmoType

_concept_

**Definition:** table{action, clamp_position, consumption_modifier, cooldown_modifier, energy_consumption, range_modifier, target_filter, target_type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [clamp_position](#clamp-position) | [boolean](../concepts/boolean.md) | yes |
| [consumption_modifier](#consumption-modifier) | [float](../concepts/float.md) | yes |
| [cooldown_modifier](#cooldown-modifier) | [double](../concepts/double.md) | yes |
| [energy_consumption](#energy-consumption) | [double](../concepts/double.md) | yes |
| [range_modifier](#range-modifier) | [double](../concepts/double.md) | yes |
| [target_filter](#target-filter) | array[[string](../concepts/string.md)] | yes |
| [target_type](#target-type) | [TargetType](../concepts/TargetType.md) |  |

### action

**Type:** array[[TriggerItem](../concepts/TriggerItem.md)] · _optional_

### clamp_position

**Type:** [boolean](../concepts/boolean.md) · _optional_

When `true`, the gun will be able to shoot even when the target is out of range. Only applies when `target_type` is `position`. The gun will fire at the maximum range in the direction of the target position. Defaults to `false`.

### consumption_modifier

**Type:** [float](../concepts/float.md) · _optional_

### cooldown_modifier

**Type:** [double](../concepts/double.md) · _optional_

### energy_consumption

**Type:** [double](../concepts/double.md) · _optional_

Energy consumption of a single shot, if applicable. Defaults to `0`.

### range_modifier

**Type:** [double](../concepts/double.md) · _optional_

### target_filter

**Type:** array[[string](../concepts/string.md)] · _optional_

The entity prototype filter names.

### target_type

**Type:** [TargetType](../concepts/TargetType.md)
