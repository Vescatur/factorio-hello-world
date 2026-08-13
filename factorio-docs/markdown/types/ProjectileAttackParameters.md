# ProjectileAttackParameters

_type_

**Inherits from:** [BaseAttackParameters](../types/BaseAttackParameters.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [apply_projection_to_projectile_creation_position](#apply-projection-to-projectile-creation-position) | [boolean](../types/boolean.md) | yes |
| [projectile_center](#projectile-center) | [Vector](../types/Vector.md) | yes |
| [projectile_creation_distance](#projectile-creation-distance) | [float](../types/float.md) | yes |
| [projectile_creation_offsets](#projectile-creation-offsets) | array[[Vector](../types/Vector.md)] | yes |
| [projectile_creation_parameters](#projectile-creation-parameters) | [CircularProjectileCreationSpecification](../types/CircularProjectileCreationSpecification.md) | yes |
| [projectile_orientation_offset](#projectile-orientation-offset) | [RealOrientation](../types/RealOrientation.md) | yes |
| [shell_particle](#shell-particle) | [CircularParticleCreationSpecification](../types/CircularParticleCreationSpecification.md) | yes |
| [type](#type) | `"projectile"` |  |

### apply_projection_to_projectile_creation_position

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### projectile_center

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``

When used with `projectile_creation_parameters`, this offsets what the turret's sprite looks at. Setting to `{0,1}` will cause the turret to aim one tile up from the target but the projectile will still aim for the entity. Can be used to give the illusion of height but can also confuse aim logic when set too high.

When used without `projectile_creation_parameters`, this sets the turret's rotation axis.

### projectile_creation_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### projectile_creation_offsets

**Type:** array[[Vector](../types/Vector.md)] · _optional_

Used to shoot from multiple points. The turret will look at the enemy as normal but the bullet will spawn from a random offset position. Can be used to create multi-barreled weapons.

### projectile_creation_parameters

**Type:** [CircularProjectileCreationSpecification](../types/CircularProjectileCreationSpecification.md) · _optional_

Used to shoot projectiles from arbitrary points. Used by worms. If not set then the launch positions are calculated using `projectile_center` and `projectile_creation_distance`.

### projectile_orientation_offset

**Type:** [RealOrientation](../types/RealOrientation.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Used to shoot from different sides of the turret. Setting to `0.25` shoots from the right side, `0.5` shoots from the back, and `0.75` shoots from the left. The turret will look at the enemy as normal but the bullet will spawn from the offset position. Can be used to create right-handed weapons.

### shell_particle

**Type:** [CircularParticleCreationSpecification](../types/CircularParticleCreationSpecification.md) · _optional_

Used to show bullet shells/casings being ejected from the gun, see [artillery shell casings](https://factorio.com/blog/post/fff-345).

### type

**Type:** `"projectile"`
