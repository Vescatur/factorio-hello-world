# RailRampPrototype

_prototype_

**Prototype type string:** `type = "rail-ramp"`

**Inherits from:** [RailPrototype](../prototypes/RailPrototype.md)

A rail ramp.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [collision_box](#collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [collision_mask_allow_on_deep_oil_ocean](#collision-mask-allow-on-deep-oil-ocean) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [name](#name) | [string](../types/string.md) |  |
| [support_range](#support-range) | [float](../types/float.md) | yes |
| [tall](#tall) | [boolean](../types/boolean.md) | yes |

### collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · _overrides parent_ · **Default:** ``{{-1.6, -7.6}, {1.6, 7.6}}``

The [collision_box](../prototypes/EntityPrototype.md#collision-box) of straight rail is hardcoded to `{{-1.6, -7.6}, {1.6, 7.6}}`.

### collision_mask_allow_on_deep_oil_ocean

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

Defaults to the mask from [UtilityConstants::default_collision_masks](../prototypes/UtilityConstants.md#default-collision-masks) when indexed by `"rail-ramp/allow_on_deep_oil_ocean"`.

### name

**Type:** [string](../types/string.md) · _overrides parent_

Unique textual identification of the prototype. May only contain alphanumeric characters, dashes and underscores. May not exceed a length of 200 characters.

Requires Space Age to create prototypes with name not starting with `dummy-`. Dummy prototypes cannot be built.

### support_range

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 15.0}`

Must be lower than 500 and at least 1.

### tall

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When this is true, this entity prototype will be translucent and unselectable when "Hide tall entities" mode is active.
