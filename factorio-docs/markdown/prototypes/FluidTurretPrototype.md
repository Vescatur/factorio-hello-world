# FluidTurretPrototype

_prototype_

**Prototype type string:** `type = "fluid-turret"`

**Inherits from:** [TurretPrototype](../prototypes/TurretPrototype.md)

A turret that uses [fluid](../prototypes/FluidPrototype.md) as ammunition.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [activation_buffer_ratio](#activation-buffer-ratio) | [FluidAmount](../types/FluidAmount.md) |  |
| [attack_parameters](#attack-parameters) | [StreamAttackParameters](../types/StreamAttackParameters.md) |  |
| [attacking_muzzle_animation_shift](#attacking-muzzle-animation-shift) | [AnimatedVector](../types/AnimatedVector.md) | yes |
| [ending_attack_muzzle_animation_shift](#ending-attack-muzzle-animation-shift) | [AnimatedVector](../types/AnimatedVector.md) | yes |
| [enough_fuel_indicator_light](#enough-fuel-indicator-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [enough_fuel_indicator_picture](#enough-fuel-indicator-picture) | [Sprite8Way](../types/Sprite8Way.md) | yes |
| [fluid_box](#fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [fluid_buffer_input_flow](#fluid-buffer-input-flow) | [FluidAmount](../types/FluidAmount.md) |  |
| [fluid_buffer_size](#fluid-buffer-size) | [FluidAmount](../types/FluidAmount.md) |  |
| [folded_muzzle_animation_shift](#folded-muzzle-animation-shift) | [AnimatedVector](../types/AnimatedVector.md) | yes |
| [folding_muzzle_animation_shift](#folding-muzzle-animation-shift) | [AnimatedVector](../types/AnimatedVector.md) | yes |
| [muzzle_animation](#muzzle-animation) | [Animation](../types/Animation.md) | yes |
| [muzzle_light](#muzzle-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [not_enough_fuel_indicator_light](#not-enough-fuel-indicator-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [not_enough_fuel_indicator_picture](#not-enough-fuel-indicator-picture) | [Sprite8Way](../types/Sprite8Way.md) | yes |
| [out_of_ammo_alert_icon](#out-of-ammo-alert-icon) | [Sprite](../types/Sprite.md) | yes |
| [prepared_muzzle_animation_shift](#prepared-muzzle-animation-shift) | [AnimatedVector](../types/AnimatedVector.md) | yes |
| [preparing_muzzle_animation_shift](#preparing-muzzle-animation-shift) | [AnimatedVector](../types/AnimatedVector.md) | yes |
| [starting_attack_muzzle_animation_shift](#starting-attack-muzzle-animation-shift) | [AnimatedVector](../types/AnimatedVector.md) | yes |
| [turret_base_has_direction](#turret-base-has-direction) | `true` |  |

### activation_buffer_ratio

**Type:** [FluidAmount](../types/FluidAmount.md)

Before an turret that was out of fluid ammunition is able to fire again, the `fluid_buffer_size` must fill to this proportion.

### attack_parameters

**Type:** [StreamAttackParameters](../types/StreamAttackParameters.md) · _overrides parent_

Requires ammo_type in attack_parameters.

### attacking_muzzle_animation_shift

**Type:** [AnimatedVector](../types/AnimatedVector.md) · _optional_

### ending_attack_muzzle_animation_shift

**Type:** [AnimatedVector](../types/AnimatedVector.md) · _optional_

### enough_fuel_indicator_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### enough_fuel_indicator_picture

**Type:** [Sprite8Way](../types/Sprite8Way.md) · _optional_

### fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

### fluid_buffer_input_flow

**Type:** [FluidAmount](../types/FluidAmount.md)

### fluid_buffer_size

**Type:** [FluidAmount](../types/FluidAmount.md)

### folded_muzzle_animation_shift

**Type:** [AnimatedVector](../types/AnimatedVector.md) · _optional_

### folding_muzzle_animation_shift

**Type:** [AnimatedVector](../types/AnimatedVector.md) · _optional_

### muzzle_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### muzzle_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### not_enough_fuel_indicator_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### not_enough_fuel_indicator_picture

**Type:** [Sprite8Way](../types/Sprite8Way.md) · _optional_

### out_of_ammo_alert_icon

**Type:** [Sprite](../types/Sprite.md) · _optional_

The sprite will be drawn on top of fluid turrets that are out of fluid ammunition. If the `out_of_ammo_alert_icon` is not set, [UtilitySprites::fluid_icon](../prototypes/UtilitySprites.md#fluid-icon) will be used instead.

### prepared_muzzle_animation_shift

**Type:** [AnimatedVector](../types/AnimatedVector.md) · _optional_

### preparing_muzzle_animation_shift

**Type:** [AnimatedVector](../types/AnimatedVector.md) · _optional_

### starting_attack_muzzle_animation_shift

**Type:** [AnimatedVector](../types/AnimatedVector.md) · _optional_

### turret_base_has_direction

**Type:** `true` · _overrides parent_

Always `true`, forcing the turret's collision box to be affected by its rotation.
