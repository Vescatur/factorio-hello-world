# UnitAISettings

_concept_

**Definition:** table{allow_try_return_to_spawner, destroy_when_commands_fail, do_separation, join_attacks, path_resolution_modifier, size_in_group, strafe_settings}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [allow_try_return_to_spawner](#allow-try-return-to-spawner) | [boolean](../concepts/boolean.md) |  |
| [destroy_when_commands_fail](#destroy-when-commands-fail) | [boolean](../concepts/boolean.md) |  |
| [do_separation](#do-separation) | [boolean](../concepts/boolean.md) |  |
| [join_attacks](#join-attacks) | [boolean](../concepts/boolean.md) |  |
| [path_resolution_modifier](#path-resolution-modifier) | [int8](../concepts/int8.md) |  |
| [size_in_group](#size-in-group) | [float](../concepts/float.md) |  |
| [strafe_settings](#strafe-settings) | [PrototypeStrafeSettings](../concepts/PrototypeStrafeSettings.md) | yes |

### allow_try_return_to_spawner

**Type:** [boolean](../concepts/boolean.md)

If enabled, units that have nothing else to do will attempt to return to a spawner.

### destroy_when_commands_fail

**Type:** [boolean](../concepts/boolean.md)

If enabled, units that repeatedly fail to succeed at commands will be destroyed.

### do_separation

**Type:** [boolean](../concepts/boolean.md)

If enabled, units will try to separate themselves from nearby friendly units.

### join_attacks

**Type:** [boolean](../concepts/boolean.md)

If enabled, the unit is permitted to join attack groups.

### path_resolution_modifier

**Type:** [int8](../concepts/int8.md)

Must be between -8 and 8.

### size_in_group

**Type:** [float](../concepts/float.md)

The amount of slots in a unit group this unit takes up. For example, a unit with `groupingSize` of 2 will count as 2 normal-sized units when filling up a unit group. Must be greater than 0.

### strafe_settings

**Type:** [PrototypeStrafeSettings](../concepts/PrototypeStrafeSettings.md) · _optional_
