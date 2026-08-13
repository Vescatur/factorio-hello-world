# LuaFluidBoxPrototype

_class_

A prototype of a fluidbox owned by some [LuaEntityPrototype](../classes/LuaEntityPrototype.md).

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) |  |
| [filter](#filter) | [LuaFluidPrototype](../classes/LuaFluidPrototype.md) | yes |
| [index](#index) | [uint32](../concepts/uint32.md) |  |
| [maximum_temperature](#maximum-temperature) | [double](../concepts/double.md) | yes |
| [minimum_temperature](#minimum-temperature) | [double](../concepts/double.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [pipe_connections](#pipe-connections) | array[[PipeConnectionDefinition](../concepts/PipeConnectionDefinition.md)] |  |
| [production_type](#production-type) | [ProductionType](../concepts/ProductionType.md) |  |
| [render_layer](#render-layer) | [RenderLayer](../concepts/RenderLayer.md) |  |
| [secondary_draw_orders](#secondary-draw-orders) | array[[int32](../concepts/int32.md)] |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### entity

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_

The entity that this belongs to.

### filter

**Read:** [LuaFluidPrototype](../classes/LuaFluidPrototype.md) · _read-only_ · _optional_

The filter, if any is set.

### index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The index of this fluidbox prototype in the owning entity.

### maximum_temperature

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The maximum temperature, if any is set.

### minimum_temperature

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

The minimum temperature, if any is set.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### pipe_connections

**Read:** array[[PipeConnectionDefinition](../concepts/PipeConnectionDefinition.md)] · _read-only_

The pipe connection points.

### production_type

**Read:** [ProductionType](../concepts/ProductionType.md) · _read-only_

The production type.

### render_layer

**Read:** [RenderLayer](../concepts/RenderLayer.md) · _read-only_

The render layer.

### secondary_draw_orders

**Read:** array[[int32](../concepts/int32.md)] · _read-only_

The secondary draw orders for the 4 possible connection directions.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [get_volume](#get-volume) | Gets the volume of this fluidbox with the given quality. |

### get_volume

`get_volume(quality)`

Gets the volume of this fluidbox with the given quality.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md)
