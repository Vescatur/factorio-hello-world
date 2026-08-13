# AreaTriggerItem

_type_

**Inherits from:** [TriggerItem](../types/TriggerItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [collision_mode](#collision-mode) | `"distance-from-collision-box"` ∣ `"distance-from-center"` | yes |
| [radius](#radius) | [double](../types/double.md) |  |
| [require_origin_is_valid](#require-origin-is-valid) | [boolean](../types/boolean.md) | yes |
| [show_in_tooltip](#show-in-tooltip) | [boolean](../types/boolean.md) | yes |
| [target_enemies](#target-enemies) | [boolean](../types/boolean.md) | yes |
| [target_entities](#target-entities) | [boolean](../types/boolean.md) | yes |
| [trigger_from_target](#trigger-from-target) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"area"` |  |

### collision_mode

**Type:** `"distance-from-collision-box"` ∣ `"distance-from-center"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'distance-from-collision-box'}`

### radius

**Type:** [double](../types/double.md)

### require_origin_is_valid

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### show_in_tooltip

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### target_enemies

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### target_entities

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### trigger_from_target

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### type

**Type:** `"area"`
