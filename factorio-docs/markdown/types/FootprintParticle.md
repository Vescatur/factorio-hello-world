# FootprintParticle

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [particle_name](#particle-name) | [ParticleID](../types/ParticleID.md) | yes |
| [tiles](#tiles) | array[[TileID](../types/TileID.md)] |  |
| [use_as_default](#use-as-default) | [boolean](../types/boolean.md) | yes |

### particle_name

**Type:** [ParticleID](../types/ParticleID.md) · _optional_

The name of the particle that should be created when the character walks on the defined tiles.

### tiles

**Type:** array[[TileID](../types/TileID.md)]

The tiles this footprint particle is shown on when the player walks over them.

### use_as_default

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this footprint particle should be the default particle that is used for `tiles` that don't have an associated footprint particle.
