# UnitAISettings

_type_

Used by [UnitPrototype](../prototypes/UnitPrototype.md) and [SpiderUnitPrototype](../prototypes/SpiderUnitPrototype.md).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_try_return_to_spawner](#allow-try-return-to-spawner) | [boolean](../types/boolean.md) | yes |
| [destroy_when_commands_fail](#destroy-when-commands-fail) | [boolean](../types/boolean.md) | yes |
| [do_separation](#do-separation) | [boolean](../types/boolean.md) | yes |
| [join_attacks](#join-attacks) | [boolean](../types/boolean.md) | yes |
| [path_resolution_modifier](#path-resolution-modifier) | [int8](../types/int8.md) | yes |
| [size_in_group](#size-in-group) | [float](../types/float.md) | yes |
| [strafe_settings](#strafe-settings) | [PrototypeStrafeSettings](../types/PrototypeStrafeSettings.md) | yes |

### allow_try_return_to_spawner

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If enabled, units that have nothing else to do will attempt to return to a spawner.

### destroy_when_commands_fail

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If enabled, units that repeatedly fail to succeed at commands will be destroyed.

### do_separation

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If enabled, units will try to separate themselves from nearby friendly units.

### join_attacks

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If enabled, the unit is permitted to join attack groups.

### path_resolution_modifier

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be between -8 and 8.

### size_in_group

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

The amount of slots in a unit group this unit takes up. For example, a unit with `groupingSize` of 2 will count as 2 normal-sized units when filling up a unit group. Must be greater than 0.

### strafe_settings

**Type:** [PrototypeStrafeSettings](../types/PrototypeStrafeSettings.md) · _optional_
