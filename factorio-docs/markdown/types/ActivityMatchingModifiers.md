# ActivityMatchingModifiers

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [inverted](#inverted) | [boolean](../types/boolean.md) | yes |
| [maximum](#maximum) | [float](../types/float.md) | yes |
| [minimum](#minimum) | [float](../types/float.md) | yes |
| [multiplier](#multiplier) | [float](../types/float.md) | yes |
| [offset](#offset) | [float](../types/float.md) | yes |

### inverted

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### maximum

**Type:** [float](../types/float.md) · _optional_ · **Default:** `infinity`

### minimum

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Cannot be larger than `maximum`.

### multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
