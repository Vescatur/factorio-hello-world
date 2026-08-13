# TurretBaseVisualisation

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation](#animation) | [Animation4Way](../types/Animation4Way.md) |  |
| [draw_when_frozen](#draw-when-frozen) | [boolean](../types/boolean.md) | yes |
| [draw_when_has_ammo](#draw-when-has-ammo) | [boolean](../types/boolean.md) | yes |
| [draw_when_has_energy](#draw-when-has-energy) | [boolean](../types/boolean.md) | yes |
| [draw_when_no_ammo](#draw-when-no-ammo) | [boolean](../types/boolean.md) | yes |
| [draw_when_no_energy](#draw-when-no-energy) | [boolean](../types/boolean.md) | yes |
| [draw_when_not_frozen](#draw-when-not-frozen) | [boolean](../types/boolean.md) | yes |
| [enabled_states](#enabled-states) | array[[TurretState](../types/TurretState.md)] | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [secondary_draw_order](#secondary-draw-order) | [int8](../types/int8.md) | yes |

### animation

**Type:** [Animation4Way](../types/Animation4Way.md)

### draw_when_frozen

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_when_has_ammo

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_when_has_energy

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_when_no_ammo

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_when_no_energy

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_when_not_frozen

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### enabled_states

**Type:** array[[TurretState](../types/TurretState.md)] · _optional_

If not defined, visualisation will be drawn in all states.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'lower-object'}`

### secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
