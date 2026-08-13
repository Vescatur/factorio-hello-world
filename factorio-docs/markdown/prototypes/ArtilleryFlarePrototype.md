# ArtilleryFlarePrototype

_prototype_

**Prototype type string:** `type = "artillery-flare"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

The entity spawned by the [artillery targeting remote](https://wiki.factorio.com/Artillery_targeting_remote).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [creation_shift](#creation-shift) | [Vector](../types/Vector.md) | yes |
| [early_death_ticks](#early-death-ticks) | [uint32](../types/uint32.md) | yes |
| [ended_in_water_trigger_effect](#ended-in-water-trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [initial_frame_speed](#initial-frame-speed) | [float](../types/float.md) | yes |
| [initial_height](#initial-height) | [float](../types/float.md) | yes |
| [initial_speed](#initial-speed) | [Vector](../types/Vector.md) | yes |
| [initial_vertical_speed](#initial-vertical-speed) | [float](../types/float.md) | yes |
| [life_time](#life-time) | [uint16](../types/uint16.md) |  |
| [map_color](#map-color) | [Color](../types/Color.md) |  |
| [movement_modifier](#movement-modifier) | [double](../types/double.md) | yes |
| [movement_modifier_when_on_ground](#movement-modifier-when-on-ground) | [double](../types/double.md) | yes |
| [pictures](#pictures) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [regular_trigger_effect](#regular-trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [regular_trigger_effect_frequency](#regular-trigger-effect-frequency) | [uint32](../types/uint32.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [render_layer_when_on_ground](#render-layer-when-on-ground) | [RenderLayer](../types/RenderLayer.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [shadows](#shadows) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [shot_category](#shot-category) | [AmmoCategoryID](../types/AmmoCategoryID.md) | yes |
| [shots_per_flare](#shots-per-flare) | [uint32](../types/uint32.md) | yes |

### creation_shift

**Type:** [Vector](../types/Vector.md) · _optional_

### early_death_ticks

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 180}`

How long this flare stays alive after `shots_per_flare` amount of shots have been shot at it.

### ended_in_water_trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### initial_frame_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### initial_height

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### initial_speed

**Type:** [Vector](../types/Vector.md) · _optional_

### initial_vertical_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### life_time

**Type:** [uint16](../types/uint16.md)

### map_color

**Type:** [Color](../types/Color.md) · _overrides parent_

### movement_modifier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### movement_modifier_when_on_ground

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.8}`

### pictures

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

Picture variation count and individual frame count must be equal to shadow variation count.

### regular_trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### regular_trigger_effect_frequency

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### render_layer_when_on_ground

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'lower-object'}`

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### shadows

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

Shadow variation variation count and individual frame count must be equal to picture variation count.

### shot_category

**Type:** [AmmoCategoryID](../types/AmmoCategoryID.md) · _optional_

Only artillery turrets/wagons whose ammo's [ammo_category](../prototypes/AmmoItemPrototype.md#ammo-category) matches this category will shoot at this flare. Defaults to all ammo categories being able to shoot at this flare.

### shots_per_flare

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

How many artillery shots should be fired at the position of this flare.
