# NeighbourConnectableConnection

_concept_

**Definition:** table{direction, first, position, target, target_real}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [direction](#direction) | [defines.direction](../defines/defines.md) |  |
| [first](#first) | [boolean](../concepts/boolean.md) | yes |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [target](#target) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [target_real](#target-real) | [boolean](../concepts/boolean.md) | yes |

### direction

**Type:** [defines.direction](../defines/defines.md)

### first

**Type:** [boolean](../concepts/boolean.md) · _optional_

If multiple connections are connected to the same target, only one connection is marked as first and provides neighbour bonuses.

### position

**Type:** [MapPosition](../concepts/MapPosition.md)

### target

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

Entity to which this connection is connected to, if any.

### target_real

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether connected entity is real or ghost.
