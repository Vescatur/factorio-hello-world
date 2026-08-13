# RailSupportPrototype

_prototype_

**Prototype type string:** `type = "rail-support"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [build_grid_size](#build-grid-size) | `2` | yes |
| [collision_mask_allow_on_deep_oil_ocean](#collision-mask-allow-on-deep-oil-ocean) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [elevated_selection_boxes](#elevated-selection-boxes) | array[[BoundingBox](../types/BoundingBox.md)] | yes |
| [graphics_set](#graphics-set) | [RailSupportGraphicsSet](../types/RailSupportGraphicsSet.md) |  |
| [name](#name) | [string](../types/string.md) |  |
| [not_buildable_if_no_rails](#not-buildable-if-no-rails) | [boolean](../types/boolean.md) | yes |
| [snap_to_spots_distance](#snap-to-spots-distance) | [float](../types/float.md) | yes |
| [support_range](#support-range) | [float](../types/float.md) | yes |

### build_grid_size

**Type:** `2` · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 2}`

Has to be 2 for 2x2 grid.

### collision_mask_allow_on_deep_oil_ocean

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

Defaults to the mask from [UtilityConstants::default_collision_masks](../prototypes/UtilityConstants.md#default-collision-masks) when indexed by `"rail-support/allow_on_deep_oil_ocean"`.

### elevated_selection_boxes

**Type:** array[[BoundingBox](../types/BoundingBox.md)] · _optional_

Array must contain 8 items.

### graphics_set

**Type:** [RailSupportGraphicsSet](../types/RailSupportGraphicsSet.md)

### name

**Type:** [string](../types/string.md) · _overrides parent_

Unique textual identification of the prototype. May only contain alphanumeric characters, dashes and underscores. May not exceed a length of 200 characters.

Requires Space Age to create prototypes with name not starting with `dummy-`. Dummy prototypes cannot be built.

### not_buildable_if_no_rails

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### snap_to_spots_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### support_range

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 15.0}`

Must be lower than 500 and at least 1.
