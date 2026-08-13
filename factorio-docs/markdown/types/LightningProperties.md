# LightningProperties

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [exemption_rules](#exemption-rules) | array[[LightningRuleBase](../types/LightningRuleBase.md)] | yes |
| [lightning_multiplier_at_day](#lightning-multiplier-at-day) | [double](../types/double.md) | yes |
| [lightning_multiplier_at_night](#lightning-multiplier-at-night) | [double](../types/double.md) | yes |
| [lightning_types](#lightning-types) | array[[EntityID](../types/EntityID.md)] |  |
| [lightning_warning_icon](#lightning-warning-icon) | [Sprite](../types/Sprite.md) | yes |
| [lightnings_per_chunk_per_tick](#lightnings-per-chunk-per-tick) | [double](../types/double.md) |  |
| [multiplier_surface_property](#multiplier-surface-property) | [SurfacePropertyID](../types/SurfacePropertyID.md) | yes |
| [priority_rules](#priority-rules) | array[[LightningPriorityRule](../types/LightningPriorityRule.md)] | yes |
| [search_radius](#search-radius) | [double](../types/double.md) |  |

### exemption_rules

**Type:** array[[LightningRuleBase](../types/LightningRuleBase.md)] · _optional_

### lightning_multiplier_at_day

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be in range `[0, 1]`.

### lightning_multiplier_at_night

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be in range `[0, 1]`.

### lightning_types

**Type:** array[[EntityID](../types/EntityID.md)]

Cannot be an empty array. Names of [lightning entities](../prototypes/LightningPrototype.md).

### lightning_warning_icon

**Type:** [Sprite](../types/Sprite.md) · _optional_

Icon to render on top of entities that are endangered by lightning. When not provided, a [UtilitySprites::lightning_warning_icon](../prototypes/UtilitySprites.md#lightning-warning-icon) will be used instead.

### lightnings_per_chunk_per_tick

**Type:** [double](../types/double.md)

### multiplier_surface_property

**Type:** [SurfacePropertyID](../types/SurfacePropertyID.md) · _optional_

When set, value of that surface property will be used as an additional multiplier to the lightning frequency.

Value of that surface property is divided by [default_value](../prototypes/SurfacePropertyPrototype.md#default-value) which means a default value must be positive (cannot be 0). When surface property has value at default, then this additional multiplier has value of 1.

### priority_rules

**Type:** array[[LightningPriorityRule](../types/LightningPriorityRule.md)] · _optional_

### search_radius

**Type:** [double](../types/double.md)
