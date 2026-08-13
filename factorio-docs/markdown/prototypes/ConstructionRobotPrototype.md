# ConstructionRobotPrototype

_prototype_

**Prototype type string:** `type = "construction-robot"`

**Inherits from:** [RobotWithLogisticInterfacePrototype](../prototypes/RobotWithLogisticInterfacePrototype.md)

A [construction robot](https://wiki.factorio.com/Construction_robot).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [collision_box](#collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [construction_vector](#construction-vector) | [Vector](../types/Vector.md) |  |
| [mined_sound_volume_modifier](#mined-sound-volume-modifier) | [float](../types/float.md) | yes |
| [repairing_sound](#repairing-sound) | [Sound](../types/Sound.md) | yes |
| [shadow_working](#shadow-working) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [smoke](#smoke) | [Animation](../types/Animation.md) | yes |
| [sparks](#sparks) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [working](#working) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [working_light](#working-light) | [LightDefinition](../types/LightDefinition.md) | yes |

### collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · _overrides parent_ · **Default:** `Empty = `{{0, 0}, {0, 0}}``

Must have a collision box size of zero.

**Example:**

```
collision_box = {{0, 0}, {0, 0}}
```

### construction_vector

**Type:** [Vector](../types/Vector.md)

### mined_sound_volume_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### repairing_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### shadow_working

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### smoke

**Type:** [Animation](../types/Animation.md) · _optional_

### sparks

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### working

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### working_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_
