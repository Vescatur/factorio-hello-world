# AsteroidSpawnPoint

_type_ · **abstract**

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [angle_when_stopped](#angle-when-stopped) | [float](../types/float.md) | yes |
| [probability](#probability) | [double](../types/double.md) |  |
| [speed](#speed) | [double](../types/double.md) |  |

### angle_when_stopped

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Facing the north. Must be in `[0, 1]` range.

### probability

**Type:** [double](../types/double.md)

Must be >= 0.

### speed

**Type:** [double](../types/double.md)

Must be > 0.
