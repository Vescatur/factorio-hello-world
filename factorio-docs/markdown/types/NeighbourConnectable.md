# NeighbourConnectable

_type_

Defines how this entity connects to its neighbours

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [affected_by_direction](#affected-by-direction) | [boolean](../types/boolean.md) | yes |
| [connections](#connections) | array[[NeighbourConnectableConnectionDefinition](../types/NeighbourConnectableConnectionDefinition.md)] |  |
| [neighbour_search_distance](#neighbour-search-distance) | [float](../types/float.md) | yes |

### affected_by_direction

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If the connection positions and directions will be affected by entity's direction.

### connections

**Type:** array[[NeighbourConnectableConnectionDefinition](../types/NeighbourConnectableConnectionDefinition.md)]

Definitions of the connection points.

### neighbour_search_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.7}`

Distance by which connection point is shifted along its direction to select a position where neighbor will be searched.
