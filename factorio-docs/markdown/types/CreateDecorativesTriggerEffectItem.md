# CreateDecorativesTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [apply_projection](#apply-projection) | [boolean](../types/boolean.md) | yes |
| [decorative](#decorative) | [DecorativeID](../types/DecorativeID.md) |  |
| [radius_curve](#radius-curve) | [float](../types/float.md) | yes |
| [spawn_max](#spawn-max) | [uint16](../types/uint16.md) |  |
| [spawn_max_radius](#spawn-max-radius) | [float](../types/float.md) |  |
| [spawn_min](#spawn-min) | [uint16](../types/uint16.md) | yes |
| [spawn_min_radius](#spawn-min-radius) | [float](../types/float.md) |  |
| [spread_evenly](#spread-evenly) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"create-decorative"` |  |

### apply_projection

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### decorative

**Type:** [DecorativeID](../types/DecorativeID.md)

### radius_curve

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

### spawn_max

**Type:** [uint16](../types/uint16.md)

### spawn_max_radius

**Type:** [float](../types/float.md)

Must be less than 24.

### spawn_min

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### spawn_min_radius

**Type:** [float](../types/float.md)

### spread_evenly

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### type

**Type:** `"create-decorative"`
