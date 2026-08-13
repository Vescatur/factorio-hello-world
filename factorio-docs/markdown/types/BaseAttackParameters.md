# BaseAttackParameters

_type_ · **abstract**

The abstract base of all [AttackParameters](../types/AttackParameters.md).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [activation_type](#activation-type) | `"shoot"` ∣ `"throw"` ∣ `"consume"` ∣ `"activate"` | yes |
| [ammo_categories](#ammo-categories) | array[[AmmoCategoryID](../types/AmmoCategoryID.md)] | yes |
| [ammo_category](#ammo-category) | [AmmoCategoryID](../types/AmmoCategoryID.md) | yes |
| [ammo_consumption_modifier](#ammo-consumption-modifier) | [float](../types/float.md) | yes |
| [ammo_type](#ammo-type) | [AmmoType](../types/AmmoType.md) | yes |
| [animation](#animation) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [cooldown](#cooldown) | [float](../types/float.md) |  |
| [cooldown_deviation](#cooldown-deviation) | [float](../types/float.md) | yes |
| [cyclic_sound](#cyclic-sound) | [CyclicSound](../types/CyclicSound.md) | yes |
| [damage_modifier](#damage-modifier) | [float](../types/float.md) | yes |
| [fire_penalty](#fire-penalty) | [float](../types/float.md) | yes |
| [health_penalty](#health-penalty) | [float](../types/float.md) | yes |
| [lead_target_for_projectile_delay](#lead-target-for-projectile-delay) | [uint32](../types/uint32.md) | yes |
| [lead_target_for_projectile_speed](#lead-target-for-projectile-speed) | [float](../types/float.md) | yes |
| [min_attack_distance](#min-attack-distance) | [float](../types/float.md) | yes |
| [min_range](#min-range) | [float](../types/float.md) | yes |
| [movement_slow_down_cooldown](#movement-slow-down-cooldown) | [float](../types/float.md) | yes |
| [movement_slow_down_factor](#movement-slow-down-factor) | [double](../types/double.md) | yes |
| [range](#range) | [float](../types/float.md) |  |
| [range_mode](#range-mode) | [RangeMode](../types/RangeMode.md) | yes |
| [rotate_penalty](#rotate-penalty) | [float](../types/float.md) | yes |
| [sound](#sound) | [LayeredSound](../types/LayeredSound.md) | yes |
| [threatening_asteroid_penalty](#threatening-asteroid-penalty) | [float](../types/float.md) | yes |
| [true_collinear_ejection](#true-collinear-ejection) | [boolean](../types/boolean.md) | yes |
| [turn_range](#turn-range) | [float](../types/float.md) | yes |
| [use_shooter_direction](#use-shooter-direction) | [boolean](../types/boolean.md) | yes |
| [warmup](#warmup) | [uint32](../types/uint32.md) | yes |

### activation_type

**Type:** `"shoot"` ∣ `"throw"` ∣ `"consume"` ∣ `"activate"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'shoot'}`

Used in tooltips to set the tooltip category. It is also used to get the locale keys for activation instructions and speed of the action for the tooltip.

For example, an activation_type of "throw" will result in the tooltip category "thrown" and the tooltip locale keys "gui.instruction-to-throw" and "description.throwing-speed".

### ammo_categories

**Type:** array[[AmmoCategoryID](../types/AmmoCategoryID.md)] · _optional_

Mandatory if `ammo_category` is not defined.

### ammo_category

**Type:** [AmmoCategoryID](../types/AmmoCategoryID.md) · _optional_

Mandatory if `ammo_categories` is not defined.

### ammo_consumption_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be greater than or equal to `0`.

### ammo_type

**Type:** [AmmoType](../types/AmmoType.md) · _optional_

Can be mandatory.

### animation

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### cooldown

**Type:** [float](../types/float.md)

Number of ticks in which it will be possible to shoot again. If < 1, multiple shots can be performed in one tick.

### cooldown_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be between `0` and `1`.

### cyclic_sound

**Type:** [CyclicSound](../types/CyclicSound.md) · _optional_

Played during the attack.

### damage_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### fire_penalty

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Used when searching for the nearest enemy, when this is > 0, enemies that aren't burning are preferred over burning enemies. Definition of "burning" for this: Entity has sticker attached to it, and the sticker has a [spread_fire_entity](../prototypes/StickerPrototype.md#spread-fire-entity) set.

### health_penalty

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

A higher penalty will discourage turrets from targeting units with higher health ratio. A negative penalty will encourage turrets to target units with higher health ratio.

### lead_target_for_projectile_delay

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Setting this to anything but zero causes projectiles to aim for the predicted location based on enemy movement instead of the current enemy location. If set, this property adds a flat number of ticks atop `lead_target_for_projectile_speed` that the shooter must lead.

### lead_target_for_projectile_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Setting this to anything but zero causes homing projectiles to aim for the predicted location based on enemy movement instead of the current enemy location. If set, this property specifies the distance travelled per tick of the fired projectile.

**Example:**

```
-- this is same as particle horizontal speed of flamethrower fire stream
lead_target_for_projectile_speed = 0.2* 0.75 * 1.5
```

### min_attack_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `equal to `range` property`

If less than `range`, the entity will choose a random distance between `range` and `min_attack_distance` and attack from that distance.

### min_range

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The minimum distance (in tiles) between an entity and target. If a unit's target is less than this, the unit will attempt to move away before attacking. A [flamethrower turret](https://wiki.factorio.com/Flamethrower_turret) does not move, but has a minimum range. Less than this, it is unable to target an enemy.

### movement_slow_down_cooldown

**Type:** [float](../types/float.md) · _optional_ · **Default:** `equal to `cooldown` property`

### movement_slow_down_factor

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### range

**Type:** [float](../types/float.md)

Before an entity can attack, the distance (in tiles) between the entity and target must be less than or equal to this.

### range_mode

**Type:** [RangeMode](../types/RangeMode.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'center-to-center'}`

### rotate_penalty

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

A higher penalty will discourage turrets from targeting units that would take longer to turn to face.

### sound

**Type:** [LayeredSound](../types/LayeredSound.md) · _optional_

Played once at the start of the attack if these are [ProjectileAttackParameters](../types/ProjectileAttackParameters.md).

### threatening_asteroid_penalty

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

A higher penalty will discourage turrets from targeting asteroids that are threatening. A negative penalty will encourage turrets to target threatening asteroids.

### true_collinear_ejection

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Projectile will be creation position and orientation will be collinear with shooter and target (unless offset projectile center is specified). Used for railgun turrets to avoid unexpected friendly fire incidents.

### turn_range

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

If this is <= 0, it is set to 1. Arc from 0 to 1, so for example 0.25 is 90°. Used by the [flamethrower turret](https://wiki.factorio.com/Flamethrower_turret) in the base game. Arcs greater than 0.5 but less than 1 will be clamped to 0.5 as targeting in arcs larger than half circle is [not implemented](https://forums.factorio.com/94654).

### use_shooter_direction

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### warmup

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Number of ticks it takes for the weapon to actually shoot after the order for shooting has been made. This also allows to "adjust" the shooting animation to the effect of shooting.

[CapsuleActions](../types/CapsuleAction.md) cannot have attack parameters with non-zero warmup.
