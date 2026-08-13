# CombatRobotPrototype

_prototype_

**Prototype type string:** `type = "combat-robot"`

**Inherits from:** [FlyingRobotPrototype](../prototypes/FlyingRobotPrototype.md)

A combat robot. Can attack enemies.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [attack_parameters](#attack-parameters) | [AttackParameters](../types/AttackParameters.md) |  |
| [destroy_action](#destroy-action) | [Trigger](../types/Trigger.md) | yes |
| [follows_player](#follows-player) | [boolean](../types/boolean.md) | yes |
| [friction](#friction) | [double](../types/double.md) | yes |
| [idle](#idle) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [in_motion](#in-motion) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [max_separation_force](#max-separation-force) | [double](../types/double.md) | yes |
| [range_from_player](#range-from-player) | [double](../types/double.md) | yes |
| [separation_force_factor](#separation-force-factor) | [double](../types/double.md) | yes |
| [separation_range](#separation-range) | [double](../types/double.md) | yes |
| [shadow_idle](#shadow-idle) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [shadow_in_motion](#shadow-in-motion) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [time_to_live](#time-to-live) | [uint32](../types/uint32.md) |  |

### attack_parameters

**Type:** [AttackParameters](../types/AttackParameters.md)

### destroy_action

**Type:** [Trigger](../types/Trigger.md) · _optional_

Applied when the combat robot expires (runs out of `time_to_live`).

### follows_player

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### friction

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### idle

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### in_motion

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### max_separation_force

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

The maximum force that can be applied to separate from other friendly combat robots.

### range_from_player

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### separation_force_factor

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

A factor determining how strongly the robot will try to separate from other friendly combat robots.

Higher values result in stronger separation forces.

### separation_range

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

The range within which the robot will try to separate itself from other friendly combat robots.

### shadow_idle

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### shadow_in_motion

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### time_to_live

**Type:** [uint32](../types/uint32.md)
