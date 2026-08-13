# AgriculturalCraneSpeedGrappler

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_transpolar_movement](#allow-transpolar-movement) | [boolean](../types/boolean.md) | yes |
| [extension_speed](#extension-speed) | [double](../types/double.md) | yes |
| [horizontal_turn_rate](#horizontal-turn-rate) | [double](../types/double.md) | yes |
| [vertical_turn_rate](#vertical-turn-rate) | [double](../types/double.md) | yes |

### allow_transpolar_movement

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### extension_speed

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.01}`

Must be positive.

### horizontal_turn_rate

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.01}`

May not be 0.

### vertical_turn_rate

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.01}`

May not be 0.
