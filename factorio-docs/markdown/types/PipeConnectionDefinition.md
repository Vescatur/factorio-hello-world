# PipeConnectionDefinition

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alt_direction](#alt-direction) | [defines.direction](../defines/defines.md) | yes |
| [alt_position](#alt-position) | [MapPosition](../types/MapPosition.md) | yes |
| [connection_category](#connection-category) | [string](../types/string.md) ∣ array[[string](../types/string.md)] | yes |
| [connection_type](#connection-type) | [PipeConnectionType](../types/PipeConnectionType.md) | yes |
| [direction](#direction) | [defines.direction](../defines/defines.md) | yes |
| [enable_working_visualisations](#enable-working-visualisations) | array[[string](../types/string.md)] | yes |
| [flow_direction](#flow-direction) | [FluidFlowDirection](../types/FluidFlowDirection.md) | yes |
| [hide_connection_info](#hide-connection-info) | [boolean](../types/boolean.md) | yes |
| [linked_connection_id](#linked-connection-id) | [FluidBoxLinkedConnectionID](../types/FluidBoxLinkedConnectionID.md) | yes |
| [max_distance_tint](#max-distance-tint) | [Color](../types/Color.md) | yes |
| [max_underground_distance](#max-underground-distance) | [uint8](../types/uint8.md) | yes |
| [position](#position) | [MapPosition](../types/MapPosition.md) | yes |
| [positions](#positions) | tuple[[MapPosition](../types/MapPosition.md), [MapPosition](../types/MapPosition.md), [MapPosition](../types/MapPosition.md), [MapPosition](../types/MapPosition.md)] | yes |
| [underground_collision_mask](#underground-collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |

### alt_direction

**Type:** [defines.direction](../defines/defines.md) · _optional_ · **Default:** `Value of `direction``

Direction this connection should be facing when entity direction is north-east. When entity is rotated, effective direction will be computed based on this value.

Only loaded if `connection_type` is `"normal"` or `"underground"`.

### alt_position

**Type:** [MapPosition](../types/MapPosition.md) · _optional_ · **Default:** `Value of `position` or first value of `positions``

Relative position of the pipe connection when entity direction is north-east.

Only loaded if `connection_type` is `"normal"` or `"underground"`.

### connection_category

**Type:** [string](../types/string.md) ∣ array[[string](../types/string.md)] · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'default'}`

Fluidboxes' pipe connections are only allowed to connect with each other if they share a connection category. For example a mod could have a "steam pipes" and "cryogenic pipes" category that should not connect with each other.

In case of a normal connection, a pipe connection can be in multiple connection categories. This allows to create a mod where pipes of different categories would not connect to each other while still making it possible for crafting machines and other entities to connect to any of the specified pipes.

By default, all pipe connections have the `"default"` category. So a pipe that should connect to a new category and standard pipes can have the `connection_category = {"my-new-pipe", "default"}`.

May have at most one category when `connection_type` is `"underground"`.

Only loaded if `connection_type` is `"normal"` or `"underground"`.

### connection_type

**Type:** [PipeConnectionType](../types/PipeConnectionType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'normal'}`

Selects set of rules to follow when looking for other FluidBox this connection should connect to.

### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

Primary direction this connection points to when entity direction is north and the entity is not mirrored. When entity is rotated or mirrored, effective direction will be computed based on this value.

Only loaded, and mandatory if `connection_type` is `"normal"` or `"underground"`.

### enable_working_visualisations

**Type:** array[[string](../types/string.md)] · _optional_

Array of the [WorkingVisualisation::name](../types/WorkingVisualisation.md#name) of working visualisations to enable when this pipe connection is present.

If the owning fluidbox has [draw_only_when_connected](../types/FluidBox.md#draw-only-when-connected) set to `true`, then the working visualisation is only enabled if this pipe connection is *connected*.

### flow_direction

**Type:** [FluidFlowDirection](../types/FluidFlowDirection.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'input-output'}`

Allowed direction of fluid flow at this connection. Pipeline entities (`pipe`, `pipe-to-ground`, and `storage-tank`) do not support this property.

### hide_connection_info

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If true, connection arrows and fluid icons will not be drawn for this connection when the entity is selected or in alt-mode.

### linked_connection_id

**Type:** [FluidBoxLinkedConnectionID](../types/FluidBoxLinkedConnectionID.md) · _optional_

Expected to be unique inside of a single entity. Used to uniquely identify where a linked connection should connect to.

Only loaded, and mandatory if `connection_type` is `"linked"`.

### max_distance_tint

**Type:** [Color](../types/Color.md) · _optional_

Only loaded if `connection_type` is `"underground"`.

### max_underground_distance

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `connection_type` is `"underground"`.

### position

**Type:** [MapPosition](../types/MapPosition.md) · _optional_

Position relative to entity's center where pipes can connect to this fluidbox regardless the directions of entity.

Only loaded if `connection_type` is `"normal"` or `"underground"`.

### positions

**Type:** tuple[[MapPosition](../types/MapPosition.md), [MapPosition](../types/MapPosition.md), [MapPosition](../types/MapPosition.md), [MapPosition](../types/MapPosition.md)] · _optional_

The 4 separate positions corresponding to the 4 main directions of entity. Positions must correspond to directions going one after another.

This is used for example by "pumpjack" where connections are consistently near bottom-left corner (2 directions) or near top-right corner (2 directions).

Only loaded, and mandatory if `position` is not defined and if `connection_type` is `"normal"` or `"underground"`.

### underground_collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

An underground connection may be defined as colliding with tiles in which case if any tile is placed between underground ends the connection will not be established.

In order to connect, both ends must have the same collision mask specified.

Only loaded if `connection_type` is `"underground"`.
