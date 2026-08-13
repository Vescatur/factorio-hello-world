# PrototypeStrafeSettings

_type_

Used by [UnitPrototype](../prototypes/UnitPrototype.md).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [clockwise_chance](#clockwise-chance) | [float](../types/float.md) | yes |
| [face_target](#face-target) | [boolean](../types/boolean.md) | yes |
| [ideal_distance](#ideal-distance) | [double](../types/double.md) | yes |
| [ideal_distance_importance](#ideal-distance-importance) | [float](../types/float.md) | yes |
| [ideal_distance_importance_variance](#ideal-distance-importance-variance) | [float](../types/float.md) | yes |
| [ideal_distance_tolerance](#ideal-distance-tolerance) | [double](../types/double.md) | yes |
| [ideal_distance_variance](#ideal-distance-variance) | [double](../types/double.md) | yes |
| [max_distance](#max-distance) | [double](../types/double.md) | yes |

### clockwise_chance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

Must be between 0 and 1 inclusive.

### face_target

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### ideal_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 10}`

Must be between 0 and max_distance inclusive.

### ideal_distance_importance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

Must be between between 0 and 1 inclusive.

### ideal_distance_importance_variance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

Must be between 0 and ideal_distance_importance inclusive.

### ideal_distance_tolerance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

Must be >= `0`.

### ideal_distance_variance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= `0`.

### max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

Must be >= `0`.
