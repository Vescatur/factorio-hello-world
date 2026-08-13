# NeighbourConnectableConnectionDefinition

_type_

In order for 2 NeighbourConnectable to connect they need to share a connection point at the same position with opposite direction and both accept neighbor's category.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [category](#category) | [NeighbourConnectableConnectionCategory](../types/NeighbourConnectableConnectionCategory.md) |  |
| [location](#location) | [MapLocation](../types/MapLocation.md) |  |
| [neighbour_category](#neighbour-category) | array[[NeighbourConnectableConnectionCategory](../types/NeighbourConnectableConnectionCategory.md)] | yes |

### category

**Type:** [NeighbourConnectableConnectionCategory](../types/NeighbourConnectableConnectionCategory.md)

Name of a category this connection should belong to. Used when deciding which connections are allowed to connect to this.

Cannot be an empty string.

### location

**Type:** [MapLocation](../types/MapLocation.md)

### neighbour_category

**Type:** array[[NeighbourConnectableConnectionCategory](../types/NeighbourConnectableConnectionCategory.md)] · _optional_

Table of neighbor categories this connection will connect to.
