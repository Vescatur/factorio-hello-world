# TurretSpecialEffect

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [attacking_falloff](#attacking-falloff) | [float](../types/float.md) | yes |
| [attacking_max_radius](#attacking-max-radius) | [float](../types/float.md) | yes |
| [attacking_min_radius](#attacking-min-radius) | [float](../types/float.md) | yes |
| [center](#center) | [TurretSpecialEffectCenter](../types/TurretSpecialEffectCenter.md) | yes |
| [falloff](#falloff) | [float](../types/float.md) | yes |
| [max_radius](#max-radius) | [float](../types/float.md) | yes |
| [min_radius](#min-radius) | [float](../types/float.md) | yes |
| [type](#type) | `"mask-by-circle"` |  |

### attacking_falloff

**Type:** [float](../types/float.md) · _optional_

Only loaded if `type` is `"mask-by-circle"`.

### attacking_max_radius

**Type:** [float](../types/float.md) · _optional_

Only loaded if `type` is `"mask-by-circle"`.

### attacking_min_radius

**Type:** [float](../types/float.md) · _optional_

Only loaded if `type` is `"mask-by-circle"`.

### center

**Type:** [TurretSpecialEffectCenter](../types/TurretSpecialEffectCenter.md) · _optional_

### falloff

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `type` is `"mask-by-circle"`.

### max_radius

**Type:** [float](../types/float.md) · _optional_

Only loaded, and mandatory if `type` is `"mask-by-circle"`.

### min_radius

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `type` is `"mask-by-circle"`.

### type

**Type:** `"mask-by-circle"`
