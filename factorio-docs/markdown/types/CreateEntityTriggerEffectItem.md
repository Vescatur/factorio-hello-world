# CreateEntityTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [abort_if_over_space](#abort-if-over-space) | [boolean](../types/boolean.md) | yes |
| [as_enemy](#as-enemy) | [boolean](../types/boolean.md) | yes |
| [check_buildability](#check-buildability) | [boolean](../types/boolean.md) | yes |
| [entity_name](#entity-name) | [EntityID](../types/EntityID.md) |  |
| [find_non_colliding_position](#find-non-colliding-position) | [boolean](../types/boolean.md) | yes |
| [ignore_no_enemies_mode](#ignore-no-enemies-mode) | [boolean](../types/boolean.md) | yes |
| [non_colliding_fail_result](#non-colliding-fail-result) | [Trigger](../types/Trigger.md) | yes |
| [non_colliding_search_precision](#non-colliding-search-precision) | [double](../types/double.md) | yes |
| [non_colliding_search_radius](#non-colliding-search-radius) | [double](../types/double.md) | yes |
| [offset_deviation](#offset-deviation) | [BoundingBox](../types/BoundingBox.md) | yes |
| [offsets](#offsets) | array[[Vector](../types/Vector.md)] | yes |
| [only_when_visible](#only-when-visible) | [boolean](../types/boolean.md) | yes |
| [preserve_ghosts_and_corpses](#preserve-ghosts-and-corpses) | [boolean](../types/boolean.md) | yes |
| [protected](#protected) | [boolean](../types/boolean.md) | yes |
| [show_details_in_tooltip](#show-details-in-tooltip) | [boolean](../types/boolean.md) | yes |
| [show_in_tooltip](#show-in-tooltip) | [boolean](../types/boolean.md) | yes |
| [tile_collision_mask](#tile-collision-mask) | [TileCollisionMaskConnector](../types/TileCollisionMaskConnector.md) | yes |
| [trigger_created_entity](#trigger-created-entity) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"create-entity"` |  |

### abort_if_over_space

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### as_enemy

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If true, creates the entity as a member of the enemy force. If the surface.no_enemies_mode is true, the entity will not be created.

### check_buildability

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### entity_name

**Type:** [EntityID](../types/EntityID.md)

The name of the entity that should be created.

### find_non_colliding_position

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### ignore_no_enemies_mode

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If true and `as_enemy` is true, allows the entity to be created even if the current surface.no_enemies_mode is true.

### non_colliding_fail_result

**Type:** [Trigger](../types/Trigger.md) · _optional_

Only loaded if `find_non_colliding_position` is defined.

### non_colliding_search_precision

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.2}`

### non_colliding_search_radius

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5}`

### offset_deviation

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_

### offsets

**Type:** array[[Vector](../types/Vector.md)] · _optional_

If multiple offsets are specified, multiple entities are created. The projectile of the [Distractor capsule](https://wiki.factorio.com/Distractor_capsule) uses this property to spawn three Distractors.

### only_when_visible

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Create the entity only when they are within a 200 tile range of any connected player.

### preserve_ghosts_and_corpses

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, colliding ghosts and corpses will not be removed by the creation of some entity types.

### protected

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

The result entity will be protected from automated attacks of enemies.

### show_details_in_tooltip

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### show_in_tooltip

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### tile_collision_mask

**Type:** [TileCollisionMaskConnector](../types/TileCollisionMaskConnector.md) · _optional_

Entity creation will not occur if any tile matches the collision condition. Defaults to no collisions.

### trigger_created_entity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, the [on_trigger_created_entity](../events/on_trigger_created_entity.md) event will be raised.

### type

**Type:** `"create-entity"`
