# FluidWagonPrototype

_prototype_

**Prototype type string:** `type = "fluid-wagon"`

**Inherits from:** [RollingStockPrototype](../prototypes/RollingStockPrototype.md)

A [fluid wagon](https://wiki.factorio.com/Fluid_wagon).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [base_valve_xy_offset_when_horizontal](#base-valve-xy-offset-when-horizontal) | [Vector](../types/Vector.md) | yes |
| [base_valve_xy_offset_when_vertical](#base-valve-xy-offset-when-vertical) | [Vector](../types/Vector.md) | yes |
| [base_valve_z_offset_projected_when_horizontal](#base-valve-z-offset-projected-when-horizontal) | [float](../types/float.md) | yes |
| [base_valve_z_offset_projected_when_vertical](#base-valve-z-offset-projected-when-vertical) | [float](../types/float.md) | yes |
| [capacity](#capacity) | [FluidAmount](../types/FluidAmount.md) |  |
| [connection_category](#connection-category) | [string](../types/string.md) ∣ array[[string](../types/string.md)] | yes |
| [quality_affects_capacity](#quality-affects-capacity) | [boolean](../types/boolean.md) | yes |
| [tank_count](#tank-count) | [uint8](../types/uint8.md) | yes |
| [tank_spacing](#tank-spacing) | [float](../types/float.md) | yes |
| [valve_to_valve_offset_when_horizontal](#valve-to-valve-offset-when-horizontal) | [Vector](../types/Vector.md) | yes |
| [valve_to_valve_offset_when_vertical](#valve-to-valve-offset-when-vertical) | [Vector](../types/Vector.md) | yes |

### base_valve_xy_offset_when_horizontal

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``

Horizontal (xy) offset of the central valve from the wagon position when it is oriented east/west.

### base_valve_xy_offset_when_vertical

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``

Horizontal (xy) offset of the central valve from the wagon position when it is oriented north/south.

### base_valve_z_offset_projected_when_horizontal

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -1.375}`

Projected height of valves when the wagon is oriented east/west.

### base_valve_z_offset_projected_when_vertical

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -0.65}`

Projected height of valves when the wagon is oriented north/south.

### capacity

**Type:** [FluidAmount](../types/FluidAmount.md)

### connection_category

**Type:** [string](../types/string.md) ∣ array[[string](../types/string.md)] · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'default'}`

Pumps are only allowed to connect to this fluid wagon if the pump's [fluid box connection](../types/PipeConnectionDefinition.md) and this fluid wagon share a connection category. Pump may have different connection categories on the input and output side, connection categories will be taken from the connection that is facing towards fluid wagon.

### quality_affects_capacity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### tank_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3}`

Must be positive.

### tank_spacing

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 2.0}`

Must be > 0.1.

### valve_to_valve_offset_when_horizontal

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{2, 0}``

Projected offset between valves when the wagon is oriented east/west.

### valve_to_valve_offset_when_vertical

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 1.775}``

Projected offset between valves when the wagon is oriented north/south.
