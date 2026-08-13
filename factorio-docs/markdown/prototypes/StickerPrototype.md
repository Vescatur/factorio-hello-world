# StickerPrototype

_prototype_

**Prototype type string:** `type = "sticker"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

Entity that sticks to another entity, and damages/slows it. Stickers can only be attached to [UnitPrototype](../prototypes/UnitPrototype.md), [CharacterPrototype](../prototypes/CharacterPrototype.md), [CarPrototype](../prototypes/CarPrototype.md) and [SpiderVehiclePrototype](../prototypes/SpiderVehiclePrototype.md).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation](#animation) | [Animation](../types/Animation.md) | yes |
| [damage_interval](#damage-interval) | [uint32](../types/uint32.md) | yes |
| [damage_per_tick](#damage-per-tick) | [DamageParameters](../types/DamageParameters.md) | yes |
| [duration_in_ticks](#duration-in-ticks) | [uint32](../types/uint32.md) |  |
| [fire_spread_cooldown](#fire-spread-cooldown) | [uint8](../types/uint8.md) | yes |
| [fire_spread_radius](#fire-spread-radius) | [float](../types/float.md) | yes |
| [force_visibility](#force-visibility) | [ForceCondition](../types/ForceCondition.md) | yes |
| [ground_target](#ground-target) | [boolean](../types/boolean.md) | yes |
| [hidden](#hidden) | `true` |  |
| [hidden_in_factoriopedia](#hidden-in-factoriopedia) | `true` |  |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [selection_box_type](#selection-box-type) | [CursorBoxType](../types/CursorBoxType.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [single_particle](#single-particle) | [boolean](../types/boolean.md) | yes |
| [spread_fire_entity](#spread-fire-entity) | [EntityID](../types/EntityID.md) | yes |
| [stickers_per_square_meter](#stickers-per-square-meter) | [float](../types/float.md) | yes |
| [target_movement_max](#target-movement-max) | [float](../types/float.md) | yes |
| [target_movement_max_from](#target-movement-max-from) | [float](../types/float.md) | yes |
| [target_movement_max_to](#target-movement-max-to) | [float](../types/float.md) | yes |
| [target_movement_modifier](#target-movement-modifier) | [float](../types/float.md) | yes |
| [target_movement_modifier_from](#target-movement-modifier-from) | [float](../types/float.md) | yes |
| [target_movement_modifier_to](#target-movement-modifier-to) | [float](../types/float.md) | yes |
| [update_effects](#update-effects) | array[[TriggerEffectWithCooldown](../types/TriggerEffectWithCooldown.md)] | yes |
| [use_damage_substitute](#use-damage-substitute) | [boolean](../types/boolean.md) | yes |
| [vehicle_friction_modifier](#vehicle-friction-modifier) | [float](../types/float.md) | yes |
| [vehicle_friction_modifier_from](#vehicle-friction-modifier-from) | [float](../types/float.md) | yes |
| [vehicle_friction_modifier_to](#vehicle-friction-modifier-to) | [float](../types/float.md) | yes |
| [vehicle_speed_max](#vehicle-speed-max) | [float](../types/float.md) | yes |
| [vehicle_speed_max_from](#vehicle-speed-max-from) | [float](../types/float.md) | yes |
| [vehicle_speed_max_to](#vehicle-speed-max-to) | [float](../types/float.md) | yes |
| [vehicle_speed_modifier](#vehicle-speed-modifier) | [float](../types/float.md) | yes |
| [vehicle_speed_modifier_from](#vehicle-speed-modifier-from) | [float](../types/float.md) | yes |
| [vehicle_speed_modifier_to](#vehicle-speed-modifier-to) | [float](../types/float.md) | yes |

### animation

**Type:** [Animation](../types/Animation.md) · _optional_

### damage_interval

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Interval between application of `damage_per_tick`, in ticks.

### damage_per_tick

**Type:** [DamageParameters](../types/DamageParameters.md) · _optional_

Applied every `damage_interval` ticks, so may not necessarily be "per tick".

### duration_in_ticks

**Type:** [uint32](../types/uint32.md)

Must be > 0.

### fire_spread_cooldown

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 30}`

### fire_spread_radius

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### force_visibility

**Type:** [ForceCondition](../types/ForceCondition.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'all'}`

### ground_target

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If true, causes the target entity to become "grounded", disabling flight. This only applies to Character entities wearing mech armor.

### hidden

**Type:** `true` · _overrides parent_

The `hidden` property of stickers is hardcoded to `true`.

### hidden_in_factoriopedia

**Type:** `true` · _overrides parent_

The `hidden_in_factoriopedia` property of stickers is hardcoded to `true`.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### selection_box_type

**Type:** [CursorBoxType](../types/CursorBoxType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'entity'}`

Using this property marks the sticker as a "selection sticker", meaning that the selection box will be rendered around the entity when the sticker is on it.

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### single_particle

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### spread_fire_entity

**Type:** [EntityID](../types/EntityID.md) · _optional_

If this is given, this sticker is considered a "fire sticker" for some functions, such as [BaseAttackParameters::fire_penalty](../types/BaseAttackParameters.md#fire-penalty) and [EntityPrototypeFlags::not-flammable](../types/EntityPrototypeFlags.md#not-flammable).

### stickers_per_square_meter

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 15}`

### target_movement_max

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -1}`

The maximum movement speed for the target.

Negative values are ignored.

### target_movement_max_from

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `target_movement_speed``

The maximum movement speed for the target when the sticker is attached. It linearly changes over time to reach `target_movement_max_to`.

Negative values are ignored.

### target_movement_max_to

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `target_movement_speed``

The maximum movement speed for the target when the sticker expires. It linearly changes over time starting from `target_movement_max_from`.

Negative values are ignored.

### target_movement_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Less than 1 to reduce movement speed, more than 1 to increase it.

### target_movement_modifier_from

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `target_movement_modifier``

The modifier value when the sticker is attached. It linearly changes over time to reach `target_movement_modifier_to`.

### target_movement_modifier_to

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `target_movement_modifier``

The modifier value when the sticker expires. It linearly changes over time starting from `target_movement_modifier_from`.

### update_effects

**Type:** array[[TriggerEffectWithCooldown](../types/TriggerEffectWithCooldown.md)] · _optional_

Effects (with cooldowns) to trigger every tick.

### use_damage_substitute

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### vehicle_friction_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### vehicle_friction_modifier_from

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `vehicle_friction_modifier``

Works similarly to `target_movement_modifier_from`.

### vehicle_friction_modifier_to

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `vehicle_friction_modifier``

Works similarly to `target_movement_modifier_to`.

### vehicle_speed_max

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -1}`

The maximum movement speed for vehicles.

Negative values are ignored.

### vehicle_speed_max_from

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `vehicle_speed_max``

The maximum movement speed for vehicles when the sticker is attached. It linearly changes over time to reach `vehicle_speed_max_to`.

Negative values are ignored.

### vehicle_speed_max_to

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `vehicle_speed_max``

The maximum movement speed for vehicles when the sticker expires. It linearly changes over time starting from `vehicle_speed_max_from`.

Negative values are ignored.

### vehicle_speed_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Less than 1 to reduce vehicle speed, more than 1 to increase it.

### vehicle_speed_modifier_from

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `vehicle_speed_modifier``

Works similarly to `target_movement_modifier_from`.

### vehicle_speed_modifier_to

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `vehicle_speed_modifier``

Works similarly to `target_movement_modifier_to`.
