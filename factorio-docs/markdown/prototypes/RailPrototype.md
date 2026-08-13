# RailPrototype

_prototype_ · **abstract**

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

The abstract base of all rail prototypes.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [build_grid_size](#build-grid-size) | `2` | yes |
| [deconstruction_marker_positions](#deconstruction-marker-positions) | array[[Vector](../types/Vector.md)] | yes |
| [ending_shifts](#ending-shifts) | array[[Vector](../types/Vector.md)] | yes |
| [extra_planner_goal_penalty](#extra-planner-goal-penalty) | [double](../types/double.md) | yes |
| [extra_planner_penalty](#extra-planner-penalty) | [double](../types/double.md) | yes |
| [fence_pictures](#fence-pictures) | [RailFenceGraphicsSet](../types/RailFenceGraphicsSet.md) | yes |
| [forced_fence_segment_count](#forced-fence-segment-count) | [uint8](../types/uint8.md) | yes |
| [pictures](#pictures) | [RailPictureSet](../types/RailPictureSet.md) | yes |
| [removes_soft_decoratives](#removes-soft-decoratives) | [boolean](../types/boolean.md) | yes |
| [selection_box](#selection-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [walking_sound](#walking-sound) | [Sound](../types/Sound.md) | yes |

### build_grid_size

**Type:** `2` · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 2}`

Has to be 2 for 2x2 grid.

### deconstruction_marker_positions

**Type:** array[[Vector](../types/Vector.md)] · _optional_

### ending_shifts

**Type:** array[[Vector](../types/Vector.md)] · _optional_

### extra_planner_goal_penalty

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### extra_planner_penalty

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### fence_pictures

**Type:** [RailFenceGraphicsSet](../types/RailFenceGraphicsSet.md) · _optional_

### forced_fence_segment_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be 0, 2 or 4. Can't be non-zero if `fence_pictures` is defined.

### pictures

**Type:** [RailPictureSet](../types/RailPictureSet.md) · _optional_

### removes_soft_decoratives

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### selection_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · _overrides parent_

The rail [selection_boxes](../prototypes/EntityPrototype.md#selection-box) are automatically calculated from the collision boxes, which are hardcoded. So effectively the selection boxes also hardcoded.

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 45}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### walking_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Sound played when a character walks over this rail.
