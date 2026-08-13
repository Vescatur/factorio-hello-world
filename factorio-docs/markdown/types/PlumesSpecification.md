# PlumesSpecification

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [max_probability](#max-probability) | [float](../types/float.md) | yes |
| [max_y_offset](#max-y-offset) | [float](../types/float.md) | yes |
| [min_probability](#min-probability) | [float](../types/float.md) | yes |
| [min_y_offset](#min-y-offset) | [float](../types/float.md) | yes |
| [render_box](#render-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [stateless_visualisations](#stateless-visualisations) | [PlumeEffect](../types/PlumeEffect.md) ∣ array[[PlumeEffect](../types/PlumeEffect.md)] | yes |

### max_probability

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### max_y_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### min_probability

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### min_y_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### render_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_

If given, the plumes will only render if this area is on screen (relative to the thruster)

### stateless_visualisations

**Type:** [PlumeEffect](../types/PlumeEffect.md) ∣ array[[PlumeEffect](../types/PlumeEffect.md)] · _optional_

Array may not be empty and may at most have 255 elements.

Non-zero `period` needs to be provided. May not have `positions` or `particle_tick_offset`.
