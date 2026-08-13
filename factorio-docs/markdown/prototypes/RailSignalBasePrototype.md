# RailSignalBasePrototype

_prototype_ · **abstract**

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

The abstract base entity for both rail signals.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [collision_box](#collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [default_blue_output_signal](#default-blue-output-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_green_output_signal](#default-green-output-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_orange_output_signal](#default-orange-output-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_red_output_signal](#default-red-output-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [elevated_collision_mask](#elevated-collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [elevated_picture_set](#elevated-picture-set) | [RailSignalPictureSet](../types/RailSignalPictureSet.md) |  |
| [elevated_selection_priority](#elevated-selection-priority) | [uint8](../types/uint8.md) | yes |
| [flags](#flags) | [EntityPrototypeFlags](../types/EntityPrototypeFlags.md) | yes |
| [ground_picture_set](#ground-picture-set) | [RailSignalPictureSet](../types/RailSignalPictureSet.md) |  |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · _overrides parent_ · **Default:** ``{{-0.2, -0.2}, {0.2, 0.2}}``

The [collision_box](../prototypes/EntityPrototype.md#collision-box) of rail signals is hardcoded to `{{-0.2, -0.2}, {0.2, 0.2}}`.

### default_blue_output_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_green_output_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_orange_output_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_red_output_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### elevated_collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

Defaults to the mask from [UtilityConstants::default_collision_masks](../prototypes/UtilityConstants.md#default-collision-masks) when indexed by  `type .. "/elevated"`.

### elevated_picture_set

**Type:** [RailSignalPictureSet](../types/RailSignalPictureSet.md)

### elevated_selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 55}`

### flags

**Type:** [EntityPrototypeFlags](../types/EntityPrototypeFlags.md) · _optional_ · _overrides parent_

The "placeable-off-grid" flag will be ignored for rail signals.

### ground_picture_set

**Type:** [RailSignalPictureSet](../types/RailSignalPictureSet.md)

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 45}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.
