# TileBuildabilityRule

_type_

Defines restrictions on what tiles an entity can or must be built on.

Note that once the entity has been placed, placing new tiles is not always restricted by these rules for performance reasons. In particular, for most entities these rules are only checked when placing tiles within the collision box of the entity. The exception to this are thrusters and asteroid collectors, for which the rules are always checked.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [area](#area) | [SimpleBoundingBox](../types/SimpleBoundingBox.md) |  |
| [colliding_tiles](#colliding-tiles) | [TileCollisionMaskConnector](../types/TileCollisionMaskConnector.md) | yes |
| [remove_on_collision](#remove-on-collision) | [boolean](../types/boolean.md) | yes |
| [required_tiles](#required-tiles) | [TileCollisionMaskConnector](../types/TileCollisionMaskConnector.md) | yes |

### area

**Type:** [SimpleBoundingBox](../types/SimpleBoundingBox.md)

### colliding_tiles

**Type:** [TileCollisionMaskConnector](../types/TileCollisionMaskConnector.md) · _optional_ · **Default:** `No masks`

### remove_on_collision

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### required_tiles

**Type:** [TileCollisionMaskConnector](../types/TileCollisionMaskConnector.md) · _optional_ · **Default:** `Any mask`
