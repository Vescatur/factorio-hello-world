# TileBuildabilityRule

_concept_

A runtime representation of [TileBuildabilityRule](../types/TileBuildabilityRule.md).

**Definition:** table{area, colliding_tiles, remove_on_collision, required_tiles}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [area](#area) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [colliding_tiles](#colliding-tiles) | [CollisionMask](../concepts/CollisionMask.md) |  |
| [remove_on_collision](#remove-on-collision) | [boolean](../concepts/boolean.md) |  |
| [required_tiles](#required-tiles) | [CollisionMask](../concepts/CollisionMask.md) |  |

### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The area that this rule applies to.

### colliding_tiles

**Type:** [CollisionMask](../concepts/CollisionMask.md)

The tiles that this rule collides with.

### remove_on_collision

**Type:** [boolean](../concepts/boolean.md)

If the entity should be removed upon collision.

### required_tiles

**Type:** [CollisionMask](../concepts/CollisionMask.md)

The tiles that this rule requires to be present.
