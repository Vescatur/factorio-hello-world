# HeatBuffer

_type_

Used to specify heat capacity properties without a [heat energy source](../types/HeatEnergySource.md).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [connections](#connections) | array[[HeatConnectionDefinition](../types/HeatConnectionDefinition.md)] | yes |
| [default_temperature](#default-temperature) | [double](../types/double.md) | yes |
| [heat_glow](#heat-glow) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [heat_picture](#heat-picture) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [heat_pipe_covers](#heat-pipe-covers) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [max_temperature](#max-temperature) | [double](../types/double.md) |  |
| [max_transfer](#max-transfer) | [Energy](../types/Energy.md) |  |
| [min_temperature_gradient](#min-temperature-gradient) | [double](../types/double.md) | yes |
| [min_working_temperature](#min-working-temperature) | [double](../types/double.md) | yes |
| [minimum_glow_temperature](#minimum-glow-temperature) | [float](../types/float.md) | yes |
| [pipe_covers](#pipe-covers) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [specific_heat](#specific-heat) | [Energy](../types/Energy.md) |  |

### connections

**Type:** array[[HeatConnectionDefinition](../types/HeatConnectionDefinition.md)] · _optional_

May contain up to 32 connections.

### default_temperature

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 15}`

### heat_glow

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### heat_picture

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### heat_pipe_covers

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### max_temperature

**Type:** [double](../types/double.md)

Must be >= `default_temperature`.

### max_transfer

**Type:** [Energy](../types/Energy.md)

### min_temperature_gradient

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### min_working_temperature

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 15}`

Must be >= `default_temperature` and <= `max_temperature`.

### minimum_glow_temperature

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### pipe_covers

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### specific_heat

**Type:** [Energy](../types/Energy.md)
