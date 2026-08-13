# DestroyCliffsCapsuleAction

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [attack_parameters](#attack-parameters) | [AttackParameters](../types/AttackParameters.md) |  |
| [play_sound_on_failure](#play-sound-on-failure) | [boolean](../types/boolean.md) | yes |
| [radius](#radius) | [float](../types/float.md) |  |
| [timeout](#timeout) | [uint32](../types/uint32.md) | yes |
| [type](#type) | `"destroy-cliffs"` |  |
| [uses_stack](#uses-stack) | [boolean](../types/boolean.md) | yes |

### attack_parameters

**Type:** [AttackParameters](../types/AttackParameters.md)

### play_sound_on_failure

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### radius

**Type:** [float](../types/float.md)

### timeout

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3600}`

### type

**Type:** `"destroy-cliffs"`

### uses_stack

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether using the capsule consumes an item from the stack.
