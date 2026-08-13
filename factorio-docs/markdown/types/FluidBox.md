# FluidBox

_type_

Used to set the fluid amount an entity can hold, as well as the connection points for pipes leading into and out of the entity.

Entities can have multiple fluidboxes. These can be part of a [FluidEnergySource](../types/FluidEnergySource.md), or be specified directly in the entity prototype.

**Example:**

```
fluid_box =
{
  volume = 200,
  pipe_covers = pipecoverspictures(),
  pipe_connections =
  {
    {flow_direction = "input-output", direction = defines.direction.west, position = {-1, 0.5}},
    {flow_direction = "input-output", direction = defines.direction.east, position = {1, 0.5}}
  },
  production_type = "input-output",
  filter = "water"
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [always_draw_covers](#always-draw-covers) | [boolean](../types/boolean.md) | yes |
| [draw_only_when_connected](#draw-only-when-connected) | [boolean](../types/boolean.md) | yes |
| [enable_working_visualisations](#enable-working-visualisations) | array[[string](../types/string.md)] | yes |
| [filter](#filter) | [FluidID](../types/FluidID.md) | yes |
| [max_pipeline_extent](#max-pipeline-extent) | [uint32](../types/uint32.md) | yes |
| [maximum_temperature](#maximum-temperature) | [float](../types/float.md) | yes |
| [minimum_temperature](#minimum-temperature) | [float](../types/float.md) | yes |
| [mirrored_pipe_picture](#mirrored-pipe-picture) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [mirrored_pipe_picture_frozen](#mirrored-pipe-picture-frozen) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [pipe_connections](#pipe-connections) | array[[PipeConnectionDefinition](../types/PipeConnectionDefinition.md)] |  |
| [pipe_covers](#pipe-covers) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [pipe_covers_frozen](#pipe-covers-frozen) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [pipe_picture](#pipe-picture) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [pipe_picture_frozen](#pipe-picture-frozen) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [production_type](#production-type) | [ProductionType](../types/ProductionType.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [secondary_draw_order](#secondary-draw-order) | [int8](../types/int8.md) | yes |
| [secondary_draw_orders](#secondary-draw-orders) | [FluidBoxSecondaryDrawOrders](../types/FluidBoxSecondaryDrawOrders.md) | yes |
| [volume](#volume) | [FluidAmount](../types/FluidAmount.md) |  |
| [volume_reservation_fraction](#volume-reservation-fraction) | [float](../types/float.md) | yes |

### always_draw_covers

**Type:** [boolean](../types/boolean.md) · _optional_

Defaults to true if `pipe_picture` is not defined, otherwise defaults to false.

### draw_only_when_connected

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### enable_working_visualisations

**Type:** array[[string](../types/string.md)] · _optional_

Array of the [WorkingVisualisation::name](../types/WorkingVisualisation.md#name) of working visualisations to enable when this fluidbox is present.

If `draw_only_when_connected` is `true`, then the working visualisation are only enabled when this is *connected*.

### filter

**Type:** [FluidID](../types/FluidID.md) · _optional_

Can be used to specify which fluid is allowed to enter this fluid box. See [here](https://forums.factorio.com/viewtopic.php?f=28&t=46302).

### max_pipeline_extent

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `Value of `UtilityConstants::default_pipeline_extent``

The max extent that a pipeline with this fluidbox can span. A given pipeline's extent is calculated as the min extent of all the fluidboxes that comprise it.

### maximum_temperature

**Type:** [float](../types/float.md) · _optional_

The maximum temperature allowed into the fluidbox. Only applied if a `filter` is specified.

**Example:**

```
maximum_temperature = 1000.0
```

### minimum_temperature

**Type:** [float](../types/float.md) · _optional_

The minimum temperature allowed into the fluidbox. Only applied if a `filter` is specified.

**Example:**

```
minimum_temperature = 100.0
```

### mirrored_pipe_picture

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

Pipe picture variation used when owner machine is flipped. If no picture is loaded, pipe_picture is used instead.

### mirrored_pipe_picture_frozen

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

Frozen pipe picture variation used when owner machine is flipped. If no picture is loaded, pipe_picture_frozen is used instead.

### pipe_connections

**Type:** array[[PipeConnectionDefinition](../types/PipeConnectionDefinition.md)]

Connection points to connect to other fluidboxes. This is also marked as blue arrows in alt mode. Fluid may flow in or out depending on the `type` field of each connection.

Connection points may depend on the direction the entity is facing. These connection points cannot share positions with one another or the connection points of another fluid box belonging to the same entity.

Can't have more than 255 connections.

### pipe_covers

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

The pictures to show when no fluid box is connected to this one.

### pipe_covers_frozen

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### pipe_picture

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### pipe_picture_frozen

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### production_type

**Type:** [ProductionType](../types/ProductionType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'none'}`

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Set the secondary draw order for all orientations. Used to determine render order for sprites with the same `render_layer` in the same position. Sprites with a higher `secondary_draw_order` are drawn on top.

### secondary_draw_orders

**Type:** [FluidBoxSecondaryDrawOrders](../types/FluidBoxSecondaryDrawOrders.md) · _optional_

Set the secondary draw order for each orientation. Used to determine render order for sprites with the same `render_layer` in the same position. Sprites with a higher `secondary_draw_order` are drawn on top.

The individual directions default to the value of `secondary_draw_order`.

### volume

**Type:** [FluidAmount](../types/FluidAmount.md)

Must be greater than 0.

### volume_reservation_fraction

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

A fraction of the volume that will be "reserved" and cannot be removed by flow operations. This does nothing if the fluidbox is part of a fluid segment.
