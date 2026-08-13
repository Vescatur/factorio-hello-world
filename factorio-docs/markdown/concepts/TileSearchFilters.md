# TileSearchFilters

_concept_

**Definition:** table{area, collision_mask, force, has_double_hidden_tile, has_hidden_tile, has_tile_ghost, invert, limit, name, position, radius, to_be_deconstructed}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [area](#area) | [BoundingBox](../concepts/BoundingBox.md) | yes |
| [collision_mask](#collision-mask) | [CollisionLayerID](../concepts/CollisionLayerID.md) ∣ array[[CollisionLayerID](../concepts/CollisionLayerID.md)] ∣ dictionary[[CollisionLayerID](../concepts/CollisionLayerID.md) → `true`] | yes |
| [force](#force) | [ForceSet](../concepts/ForceSet.md) | yes |
| [has_double_hidden_tile](#has-double-hidden-tile) | [boolean](../concepts/boolean.md) | yes |
| [has_hidden_tile](#has-hidden-tile) | [boolean](../concepts/boolean.md) | yes |
| [has_tile_ghost](#has-tile-ghost) | [boolean](../concepts/boolean.md) | yes |
| [invert](#invert) | [boolean](../concepts/boolean.md) | yes |
| [limit](#limit) | [uint32](../concepts/uint32.md) | yes |
| [name](#name) | [TileID](../concepts/TileID.md) ∣ array[[TileID](../concepts/TileID.md)] | yes |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [radius](#radius) | [double](../concepts/double.md) | yes |
| [to_be_deconstructed](#to-be-deconstructed) | [boolean](../concepts/boolean.md) | yes |

### area

**Type:** [BoundingBox](../concepts/BoundingBox.md) · _optional_

### collision_mask

**Type:** [CollisionLayerID](../concepts/CollisionLayerID.md) ∣ array[[CollisionLayerID](../concepts/CollisionLayerID.md)] ∣ dictionary[[CollisionLayerID](../concepts/CollisionLayerID.md) → `true`] · _optional_

### force

**Type:** [ForceSet](../concepts/ForceSet.md) · _optional_

### has_double_hidden_tile

**Type:** [boolean](../concepts/boolean.md) · _optional_

Can be further filtered by supplying a `force` filter.

### has_hidden_tile

**Type:** [boolean](../concepts/boolean.md) · _optional_

### has_tile_ghost

**Type:** [boolean](../concepts/boolean.md) · _optional_

Can be further filtered by supplying a `force` filter.

### invert

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the filters should be inverted.

### limit

**Type:** [uint32](../concepts/uint32.md) · _optional_

### name

**Type:** [TileID](../concepts/TileID.md) ∣ array[[TileID](../concepts/TileID.md)] · _optional_

An empty array means nothing matches the name filter.

### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

Ignored if not given with radius.

### radius

**Type:** [double](../concepts/double.md) · _optional_

If given with position, will return all tiles within the radius of the position.

### to_be_deconstructed

**Type:** [boolean](../concepts/boolean.md) · _optional_

Can be further filtered by supplying a `force` filter.
