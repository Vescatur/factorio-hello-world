# AttackParameters

_concept_

**Definition:** table{ammo_categories, ammo_consumption_modifier, ammo_type, cooldown, damage_modifier, fire_penalty, health_penalty, min_attack_distance, min_range, movement_slow_down_cooldown, movement_slow_down_factor, range, range_mode, rotate_penalty, threatening_asteroid_penalty, turn_range, type, warmup}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [ammo_categories](#ammo-categories) | array[[string](../concepts/string.md)] | yes |
| [ammo_consumption_modifier](#ammo-consumption-modifier) | [float](../concepts/float.md) |  |
| [ammo_type](#ammo-type) | [AmmoType](../concepts/AmmoType.md) | yes |
| [cooldown](#cooldown) | [float](../concepts/float.md) |  |
| [damage_modifier](#damage-modifier) | [float](../concepts/float.md) |  |
| [fire_penalty](#fire-penalty) | [float](../concepts/float.md) |  |
| [health_penalty](#health-penalty) | [float](../concepts/float.md) |  |
| [min_attack_distance](#min-attack-distance) | [float](../concepts/float.md) |  |
| [min_range](#min-range) | [float](../concepts/float.md) |  |
| [movement_slow_down_cooldown](#movement-slow-down-cooldown) | [float](../concepts/float.md) |  |
| [movement_slow_down_factor](#movement-slow-down-factor) | [double](../concepts/double.md) |  |
| [range](#range) | [float](../concepts/float.md) |  |
| [range_mode](#range-mode) | [RangeMode](../concepts/RangeMode.md) |  |
| [rotate_penalty](#rotate-penalty) | [float](../concepts/float.md) |  |
| [threatening_asteroid_penalty](#threatening-asteroid-penalty) | [float](../concepts/float.md) |  |
| [turn_range](#turn-range) | [float](../concepts/float.md) |  |
| [type](#type) | `"projectile"` ∣ `"stream"` ∣ `"beam"` |  |
| [warmup](#warmup) | [uint32](../concepts/uint32.md) |  |

### ammo_categories

**Type:** array[[string](../concepts/string.md)] · _optional_

List of the names of compatible [LuaAmmoCategoryPrototypes](../classes/LuaAmmoCategoryPrototype.md).

### ammo_consumption_modifier

**Type:** [float](../concepts/float.md)

Multiplier applied to the ammo consumption of an attack.

### ammo_type

**Type:** [AmmoType](../concepts/AmmoType.md) · _optional_

### cooldown

**Type:** [float](../concepts/float.md)

Minimum amount of ticks between shots. If this is less than `1`, multiple shots can be performed per tick.

### damage_modifier

**Type:** [float](../concepts/float.md)

Multiplier applied to the damage of an attack.

### fire_penalty

**Type:** [float](../concepts/float.md)

When searching for the nearest enemy to attack, `fire_penalty` is added to the enemy's distance if they are on fire.

### health_penalty

**Type:** [float](../concepts/float.md)

When searching for an enemy to attack, a higher `health_penalty` will discourage targeting enemies with high health ratio. A negative penalty will do the opposite.

### min_attack_distance

**Type:** [float](../concepts/float.md)

If less than `range`, the entity will choose a random distance between `range` and `min_attack_distance` and attack from that distance. Used for spitters.

### min_range

**Type:** [float](../concepts/float.md)

Minimum range of attack. Used with flamethrower turrets to prevent self-immolation.

### movement_slow_down_cooldown

**Type:** [float](../concepts/float.md)

### movement_slow_down_factor

**Type:** [double](../concepts/double.md)

### range

**Type:** [float](../concepts/float.md)

Maximum range of attack.

### range_mode

**Type:** [RangeMode](../concepts/RangeMode.md)

Defines how the range is determined.

### rotate_penalty

**Type:** [float](../concepts/float.md)

When searching for an enemy to attack, a higher `rotate_penalty` will discourage targeting enemies that would take longer to turn to face.

### threatening_asteroid_penalty

**Type:** [float](../concepts/float.md)

When searching for an enemy to attack, a higher `threatening_asteroid_penalty` will discourage targeting asteroids that pose a threat. A negative penalty will do the opposite.

### turn_range

**Type:** [float](../concepts/float.md)

The arc that the entity can attack in as a fraction of a circle. A value of `1` means the full 360 degrees.

### type

**Type:** `"projectile"` ∣ `"stream"` ∣ `"beam"`

The type of AttackParameter.

### warmup

**Type:** [uint32](../concepts/uint32.md)

Number of ticks it takes for the weapon to actually shoot after it has been ordered to do so.
