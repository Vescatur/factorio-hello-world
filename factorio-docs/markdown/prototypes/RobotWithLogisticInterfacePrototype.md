# RobotWithLogisticInterfacePrototype

_prototype_ · **abstract**

**Inherits from:** [FlyingRobotPrototype](../prototypes/FlyingRobotPrototype.md)

The common properties of logistic and construction robots represented by an abstract prototype.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [charging_sound](#charging-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [destroy_action](#destroy-action) | [Trigger](../types/Trigger.md) | yes |
| [draw_cargo](#draw-cargo) | [boolean](../types/boolean.md) | yes |
| [idle](#idle) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [in_motion](#in-motion) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [max_payload_size](#max-payload-size) | [ItemCountType](../types/ItemCountType.md) |  |
| [max_payload_size_after_bonus](#max-payload-size-after-bonus) | [ItemCountType](../types/ItemCountType.md) | yes |
| [require_charge_to_mine](#require-charge-to-mine) | [boolean](../types/boolean.md) | yes |
| [shadow_idle](#shadow-idle) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [shadow_in_motion](#shadow-in-motion) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |

### charging_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### destroy_action

**Type:** [Trigger](../types/Trigger.md) · _optional_

Applied when the robot expires (runs out of energy and [FlyingRobotPrototype::speed_multiplier_when_out_of_energy](../prototypes/FlyingRobotPrototype.md#speed-multiplier-when-out-of-energy) is 0).

### draw_cargo

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### idle

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Only the first frame of the animation is drawn. This means that the graphics for the idle state cannot be animated.

### in_motion

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Only the first frame of the animation is drawn. This means that the graphics for the in_motion state cannot be animated.

### max_payload_size

**Type:** [ItemCountType](../types/ItemCountType.md)

The robot's cargo carrying capacity. Can be increased by [worker robot cargo size research](../types/WorkerRobotStorageModifier.md).

### max_payload_size_after_bonus

**Type:** [ItemCountType](../types/ItemCountType.md) · _optional_ · **Default:** `max ItemCountType`

The robot's maximum possible cargo carrying capacity, including bonuses. Useful to limit the impact of [worker robot cargo size research](../types/WorkerRobotStorageModifier.md).

Must be >= max_payload_size.

### require_charge_to_mine

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If true, this can't be mined unless it has more than [FlyingRobotPrototype::max_to_charge](../prototypes/FlyingRobotPrototype.md#max-to-charge) energy, or the players personal roboports have enough energy to charge it.

### shadow_idle

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Only the first frame of the animation is drawn. This means that the graphics for the idle state cannot be animated.

### shadow_in_motion

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Only the first frame of the animation is drawn. This means that the graphics for the in_motion state cannot be animated.
