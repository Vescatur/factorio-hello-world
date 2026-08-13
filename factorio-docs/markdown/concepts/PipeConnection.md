# PipeConnection

_concept_

A single pipe connection for a given fluidbox.

**Definition:** table{connection_type, flow_direction, position, target, target_fluidbox_index, target_pipe_connection_index, target_position}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [connection_type](#connection-type) | [PipeConnectionType](../concepts/PipeConnectionType.md) |  |
| [flow_direction](#flow-direction) | [FluidFlowDirection](../concepts/FluidFlowDirection.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [target](#target) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [target_fluidbox_index](#target-fluidbox-index) | [uint32](../concepts/uint32.md) | yes |
| [target_pipe_connection_index](#target-pipe-connection-index) | [uint32](../concepts/uint32.md) | yes |
| [target_position](#target-position) | [MapPosition](../concepts/MapPosition.md) |  |

### connection_type

**Type:** [PipeConnectionType](../concepts/PipeConnectionType.md)

### flow_direction

**Type:** [FluidFlowDirection](../concepts/FluidFlowDirection.md)

### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The absolute position of this connection within the entity.

### target

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The connected fluidbox, if any.

### target_fluidbox_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index of the target fluidbox, if any.

### target_pipe_connection_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index of the target fluidbox pipe connection, if any.

### target_position

**Type:** [MapPosition](../concepts/MapPosition.md)

The absolute position of the connection's intended target.
