# SpaceConnectionPrototype

_prototype_

**Prototype type string:** `type = "space-connection"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [asteroid_spawn_definitions](#asteroid-spawn-definitions) | array[[SpaceConnectionAsteroidSpawnDefinition](../types/SpaceConnectionAsteroidSpawnDefinition.md)] | yes |
| [from](#from) | [SpaceLocationID](../types/SpaceLocationID.md) |  |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [length](#length) | [uint32](../types/uint32.md) | yes |
| [to](#to) | [SpaceLocationID](../types/SpaceLocationID.md) |  |

### asteroid_spawn_definitions

**Type:** array[[SpaceConnectionAsteroidSpawnDefinition](../types/SpaceConnectionAsteroidSpawnDefinition.md)] · _optional_

### from

**Type:** [SpaceLocationID](../types/SpaceLocationID.md)

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded, and mandatory if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

### length

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 600}`

Length of the space connection in km.

Cannot be 0.

### to

**Type:** [SpaceLocationID](../types/SpaceLocationID.md)
