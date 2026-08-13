# PipeConnectionDefinition

_concept_

**Definition:** table{alt_direction, alt_position, connection_category, connection_type, direction, flow_direction, hide_connection_info, linked_connection_id, max_underground_distance, positions}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [alt_direction](#alt-direction) | [defines.direction](../defines/defines.md) | yes |
| [alt_position](#alt-position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [connection_category](#connection-category) | array[[string](../concepts/string.md)] |  |
| [connection_type](#connection-type) | [PipeConnectionType](../concepts/PipeConnectionType.md) |  |
| [direction](#direction) | [defines.direction](../defines/defines.md) |  |
| [flow_direction](#flow-direction) | [FluidFlowDirection](../concepts/FluidFlowDirection.md) |  |
| [hide_connection_info](#hide-connection-info) | [boolean](../concepts/boolean.md) |  |
| [linked_connection_id](#linked-connection-id) | [uint32](../concepts/uint32.md) | yes |
| [max_underground_distance](#max-underground-distance) | [uint32](../concepts/uint32.md) | yes |
| [positions](#positions) | array[[MapPosition](../concepts/MapPosition.md)] |  |

### alt_direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

Only provided if different from `direction`.

### alt_position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

Only provided if different from first position inside of `positions`.

### connection_category

**Type:** array[[string](../concepts/string.md)]

### connection_type

**Type:** [PipeConnectionType](../concepts/PipeConnectionType.md)

### direction

**Type:** [defines.direction](../defines/defines.md)

### flow_direction

**Type:** [FluidFlowDirection](../concepts/FluidFlowDirection.md)

### hide_connection_info

**Type:** [boolean](../concepts/boolean.md)

### linked_connection_id

**Type:** [uint32](../concepts/uint32.md) · _optional_

Only provided if `connection_type` is `"linked"`.

### max_underground_distance

**Type:** [uint32](../concepts/uint32.md) · _optional_

The maximum tile distance this underground connection can connect.

### positions

**Type:** array[[MapPosition](../concepts/MapPosition.md)]

The 4 cardinal direction connection points for this pipe.
