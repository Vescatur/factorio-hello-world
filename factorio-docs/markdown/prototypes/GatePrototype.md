# GatePrototype

_prototype_

**Prototype type string:** `type = "gate"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [gate](https://wiki.factorio.com/Gate).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [activation_distance](#activation-distance) | [double](../types/double.md) |  |
| [closing_sound](#closing-sound) | [Sound](../types/Sound.md) | yes |
| [fadeout_interval](#fadeout-interval) | [uint32](../types/uint32.md) | yes |
| [horizontal_animation](#horizontal-animation) | [Animation](../types/Animation.md) | yes |
| [horizontal_rail_animation_left](#horizontal-rail-animation-left) | [Animation](../types/Animation.md) | yes |
| [horizontal_rail_animation_right](#horizontal-rail-animation-right) | [Animation](../types/Animation.md) | yes |
| [horizontal_rail_base](#horizontal-rail-base) | [Animation](../types/Animation.md) | yes |
| [opened_collision_mask](#opened-collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [opening_sound](#opening-sound) | [Sound](../types/Sound.md) | yes |
| [opening_speed](#opening-speed) | [float](../types/float.md) |  |
| [timeout_to_close](#timeout-to-close) | [uint32](../types/uint32.md) |  |
| [vertical_animation](#vertical-animation) | [Animation](../types/Animation.md) | yes |
| [vertical_rail_animation_left](#vertical-rail-animation-left) | [Animation](../types/Animation.md) | yes |
| [vertical_rail_animation_right](#vertical-rail-animation-right) | [Animation](../types/Animation.md) | yes |
| [vertical_rail_base](#vertical-rail-base) | [Animation](../types/Animation.md) | yes |
| [wall_patch](#wall-patch) | [Animation](../types/Animation.md) | yes |

### activation_distance

**Type:** [double](../types/double.md)

### closing_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played when the gate closes.

### fadeout_interval

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### horizontal_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### horizontal_rail_animation_left

**Type:** [Animation](../types/Animation.md) · _optional_

### horizontal_rail_animation_right

**Type:** [Animation](../types/Animation.md) · _optional_

### horizontal_rail_base

**Type:** [Animation](../types/Animation.md) · _optional_

### opened_collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

This collision mask is used when the gate is open.

Defaults to the mask from [UtilityConstants::default_collision_masks](../prototypes/UtilityConstants.md#default-collision-masks) when indexed by `"gate/opened"`.

### opening_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Played when the gate opens.

### opening_speed

**Type:** [float](../types/float.md)

### timeout_to_close

**Type:** [uint32](../types/uint32.md)

### vertical_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### vertical_rail_animation_left

**Type:** [Animation](../types/Animation.md) · _optional_

### vertical_rail_animation_right

**Type:** [Animation](../types/Animation.md) · _optional_

### vertical_rail_base

**Type:** [Animation](../types/Animation.md) · _optional_

### wall_patch

**Type:** [Animation](../types/Animation.md) · _optional_
