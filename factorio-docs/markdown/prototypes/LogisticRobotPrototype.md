# LogisticRobotPrototype

_prototype_

**Prototype type string:** `type = "logistic-robot"`

**Inherits from:** [RobotWithLogisticInterfacePrototype](../prototypes/RobotWithLogisticInterfacePrototype.md)

A [logistic robot](https://wiki.factorio.com/Logistic_robot).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [collision_box](#collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [idle_with_cargo](#idle-with-cargo) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [in_motion_with_cargo](#in-motion-with-cargo) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [shadow_idle_with_cargo](#shadow-idle-with-cargo) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [shadow_in_motion_with_cargo](#shadow-in-motion-with-cargo) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |

### collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · _overrides parent_ · **Default:** `Empty = `{{0, 0}, {0, 0}}``

Must have a collision box size of zero.

**Example:**

```
collision_box = {{0, 0}, {0, 0}}
```

### idle_with_cargo

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Only the first frame of the animation is drawn. This means that the graphics for the idle state cannot be animated.

### in_motion_with_cargo

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Only the first frame of the animation is drawn. This means that the graphics for the in_motion state cannot be animated.

### shadow_idle_with_cargo

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Only the first frame of the animation is drawn. This means that the graphics for the idle state cannot be animated.

### shadow_in_motion_with_cargo

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Only the first frame of the animation is drawn. This means that the graphics for the in_motion state cannot be animated.
