# RailRemnantsPrototype

_prototype_

**Prototype type string:** `type = "rail-remnants"`

**Inherits from:** [CorpsePrototype](../prototypes/CorpsePrototype.md)

Used for rail corpses.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [build_grid_size](#build-grid-size) | `2` | yes |
| [collision_box](#collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [pictures](#pictures) | [RailPictureSet](../types/RailPictureSet.md) | yes |
| [related_rail](#related-rail) | [EntityID](../types/EntityID.md) |  |
| [secondary_collision_box](#secondary-collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |

### build_grid_size

**Type:** `2` · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 2}`

Has to be 2 for 2x2 grid.

### collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · _overrides parent_ · **Default:** `Empty = `{{0, 0}, {0, 0}}``

"Rail remnant entities must have a non-zero [collision_box](../prototypes/EntityPrototype.md#collision-box) defined.

### pictures

**Type:** [RailPictureSet](../types/RailPictureSet.md) · _optional_

### related_rail

**Type:** [EntityID](../types/EntityID.md)

### secondary_collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_
