# CaptureRobotPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "capture-robot"`

**Inherits from:** [FlyingRobotPrototype](../prototypes/FlyingRobotPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [capture_animation](#capture-animation) | [Animation](../types/Animation.md) | yes |
| [capture_speed](#capture-speed) | [double](../types/double.md) | yes |
| [destroy_action](#destroy-action) | [Trigger](../types/Trigger.md) | yes |
| [search_radius](#search-radius) | [double](../types/double.md) | yes |

### capture_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### capture_speed

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= 0.001.

### destroy_action

**Type:** [Trigger](../types/Trigger.md) · _optional_

### search_radius

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= 0.0.
