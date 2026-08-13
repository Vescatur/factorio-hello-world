# RollingStockPrototype

_prototype_ · **abstract**

**Inherits from:** [VehiclePrototype](../prototypes/VehiclePrototype.md)

The abstract base of all rolling stock.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [air_resistance](#air-resistance) | [double](../types/double.md) |  |
| [allow_manual_color](#allow-manual-color) | [boolean](../types/boolean.md) | yes |
| [allow_robot_dispatch_in_automatic_mode](#allow-robot-dispatch-in-automatic-mode) | [boolean](../types/boolean.md) | yes |
| [back_light](#back-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [color](#color) | [Color](../types/Color.md) | yes |
| [connection_distance](#connection-distance) | [double](../types/double.md) |  |
| [default_copy_color_from_train_stop](#default-copy-color-from-train-stop) | [boolean](../types/boolean.md) | yes |
| [door_closing_sound](#door-closing-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [door_opening_sound](#door-opening-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [drive_over_elevated_tie_trigger](#drive-over-elevated-tie-trigger) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [drive_over_tie_trigger](#drive-over-tie-trigger) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [drive_over_tie_trigger_minimal_speed](#drive-over-tie-trigger-minimal-speed) | [double](../types/double.md) | yes |
| [elevated_collision_mask](#elevated-collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [elevated_rail_sound](#elevated-rail-sound) | [MainSound](../types/MainSound.md) | yes |
| [elevated_selection_priority](#elevated-selection-priority) | [uint8](../types/uint8.md) | yes |
| [horizontal_doors](#horizontal-doors) | [Animation](../types/Animation.md) | yes |
| [joint_distance](#joint-distance) | [double](../types/double.md) |  |
| [max_speed](#max-speed) | [double](../types/double.md) | yes |
| [pictures](#pictures) | [RollingStockRotatedSlopedGraphics](../types/RollingStockRotatedSlopedGraphics.md) | yes |
| [quality_affects_max_speed](#quality-affects-max-speed) | [boolean](../types/boolean.md) | yes |
| [stand_by_light](#stand-by-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [tie_distance](#tie-distance) | [double](../types/double.md) | yes |
| [transition_collision_mask](#transition-collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [vertical_doors](#vertical-doors) | [Animation](../types/Animation.md) | yes |
| [vertical_selection_shift](#vertical-selection-shift) | [double](../types/double.md) |  |
| [wheels](#wheels) | [RollingStockRotatedSlopedGraphics](../types/RollingStockRotatedSlopedGraphics.md) | yes |

### air_resistance

**Type:** [double](../types/double.md)

### allow_manual_color

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### allow_robot_dispatch_in_automatic_mode

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### back_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### color

**Type:** [Color](../types/Color.md) · _optional_

### connection_distance

**Type:** [double](../types/double.md)

The distance between the joint of this rolling stock and its connected rolling stocks joint.

Maximum connection distance is 15.

### default_copy_color_from_train_stop

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### door_closing_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

Cannot use `fade_ticks`.

### door_opening_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

Cannot use `fade_ticks`.

### drive_over_elevated_tie_trigger

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### drive_over_tie_trigger

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

Usually a sound to play when the rolling stock drives over a tie. The rolling stock is considered to be driving over a tie every `tie_distance` tiles.

### drive_over_tie_trigger_minimal_speed

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### elevated_collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

Defaults to the mask from [UtilityConstants::default_collision_masks](../prototypes/UtilityConstants.md#default-collision-masks) when indexed by  `type .. "/elevated"`.

### elevated_rail_sound

**Type:** [MainSound](../types/MainSound.md) · _optional_

### elevated_selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 56}`

### horizontal_doors

**Type:** [Animation](../types/Animation.md) · _optional_

### joint_distance

**Type:** [double](../types/double.md)

The length between this rolling stocks front and rear joints. Joints are the point where connection_distance is measured from when rolling stock are connected to one another. Wheels sprite are placed based on the joint position.

Maximum joint distance is 15.

Note: There needs to be border at least 0.2 between the [bounding box](../prototypes/EntityPrototype.md#collision-box) edge and joint. This means that the collision_box must be at least `{{-0,-0.2},{0,0.2}}`.

### max_speed

**Type:** [double](../types/double.md) · _optional_

Maximum speed of the rolling stock in tiles/tick.

In-game, the max speed of a train is `average(all_rolling_stock_max_speeds) × average(all_fuel_modifiers_in_all_locomotives)`. If this value is not provided it is ignored for the average(all_rolling_stock_max_speed) calculation. This calculated train speed is then silently capped to 7386.3km/h.

### pictures

**Type:** [RollingStockRotatedSlopedGraphics](../types/RollingStockRotatedSlopedGraphics.md) · _optional_

### quality_affects_max_speed

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### stand_by_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### tie_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 10.0}`

In tiles. Used to determine how often `drive_over_tie_trigger` is triggered.

### transition_collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

Defaults to the mask from [UtilityConstants::default_collision_masks](../prototypes/UtilityConstants.md#default-collision-masks) when indexed by  `type .. "/transition"`.

### vertical_doors

**Type:** [Animation](../types/Animation.md) · _optional_

### vertical_selection_shift

**Type:** [double](../types/double.md)

### wheels

**Type:** [RollingStockRotatedSlopedGraphics](../types/RollingStockRotatedSlopedGraphics.md) · _optional_
