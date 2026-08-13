# EntitySearchFilters

_concept_

**Definition:** table{area, collision_mask, direction, force, ghost_name, ghost_type, has_item_inside, invert, is_military_target, limit, name, position, quality, radius, to_be_deconstructed, to_be_upgraded, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [area](#area) | [BoundingBox](../concepts/BoundingBox.md) | yes |
| [collision_mask](#collision-mask) | [CollisionLayerID](../concepts/CollisionLayerID.md) ∣ array[[CollisionLayerID](../concepts/CollisionLayerID.md)] ∣ dictionary[[CollisionLayerID](../concepts/CollisionLayerID.md) → `true`] | yes |
| [direction](#direction) | [defines.direction](../defines/defines.md) ∣ array[[defines.direction](../defines/defines.md)] | yes |
| [force](#force) | [ForceSet](../concepts/ForceSet.md) | yes |
| [ghost_name](#ghost-name) | [EntityID](../concepts/EntityID.md) ∣ array[[EntityID](../concepts/EntityID.md)] | yes |
| [ghost_type](#ghost-type) | [string](../concepts/string.md) ∣ array[[string](../concepts/string.md)] | yes |
| [has_item_inside](#has-item-inside) | [ItemWithQualityID](../concepts/ItemWithQualityID.md) | yes |
| [invert](#invert) | [boolean](../concepts/boolean.md) | yes |
| [is_military_target](#is-military-target) | [boolean](../concepts/boolean.md) | yes |
| [limit](#limit) | [uint32](../concepts/uint32.md) | yes |
| [name](#name) | [EntityID](../concepts/EntityID.md) ∣ array[[EntityID](../concepts/EntityID.md)] | yes |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [quality](#quality) | [QualityCondition](../concepts/QualityCondition.md) | yes |
| [radius](#radius) | [double](../concepts/double.md) | yes |
| [to_be_deconstructed](#to-be-deconstructed) | [boolean](../concepts/boolean.md) | yes |
| [to_be_upgraded](#to-be-upgraded) | [boolean](../concepts/boolean.md) | yes |
| [type](#type) | [string](../concepts/string.md) ∣ array[[string](../concepts/string.md)] | yes |

### area

**Type:** [BoundingBox](../concepts/BoundingBox.md) · _optional_

### collision_mask

**Type:** [CollisionLayerID](../concepts/CollisionLayerID.md) ∣ array[[CollisionLayerID](../concepts/CollisionLayerID.md)] ∣ dictionary[[CollisionLayerID](../concepts/CollisionLayerID.md) → `true`] · _optional_

### direction

**Type:** [defines.direction](../defines/defines.md) ∣ array[[defines.direction](../defines/defines.md)] · _optional_

### force

**Type:** [ForceSet](../concepts/ForceSet.md) · _optional_

### ghost_name

**Type:** [EntityID](../concepts/EntityID.md) ∣ array[[EntityID](../concepts/EntityID.md)] · _optional_

An empty array means nothing matches the ghost_name filter.

### ghost_type

**Type:** [string](../concepts/string.md) ∣ array[[string](../concepts/string.md)] · _optional_

An empty array means nothing matches the ghost_type filter.

### has_item_inside

**Type:** [ItemWithQualityID](../concepts/ItemWithQualityID.md) · _optional_

### invert

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the filters should be inverted.

### is_military_target

**Type:** [boolean](../concepts/boolean.md) · _optional_

### limit

**Type:** [uint32](../concepts/uint32.md) · _optional_

### name

**Type:** [EntityID](../concepts/EntityID.md) ∣ array[[EntityID](../concepts/EntityID.md)] · _optional_

An empty array means nothing matches the name filter.

### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

Has precedence over area field.

### quality

**Type:** [QualityCondition](../concepts/QualityCondition.md) · _optional_

### radius

**Type:** [double](../concepts/double.md) · _optional_

If given with position, will return all entities within the radius of the position.

### to_be_deconstructed

**Type:** [boolean](../concepts/boolean.md) · _optional_

### to_be_upgraded

**Type:** [boolean](../concepts/boolean.md) · _optional_

### type

**Type:** [string](../concepts/string.md) ∣ array[[string](../concepts/string.md)] · _optional_

An empty array means nothing matches the type filter.
