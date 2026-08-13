# PathfinderWaypoint

_concept_

**Definition:** table{needs_destroy_to_reach, position}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [needs_destroy_to_reach](#needs-destroy-to-reach) | [boolean](../concepts/boolean.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |

### needs_destroy_to_reach

**Type:** [boolean](../concepts/boolean.md)

`true` if the path from the previous waypoint to this one goes through an entity that must be destroyed.

### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position of the waypoint on its surface.
