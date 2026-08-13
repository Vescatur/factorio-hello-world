# TileEffectDefinition

_prototype_

**Prototype type string:** `type = "tile-effect"`

Used to define the parameters for tile shaders.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [string](../types/string.md) |  |
| [puddle](#puddle) | [PuddleTileEffectParameters](../types/PuddleTileEffectParameters.md) | yes |
| [shader](#shader) | `"water"` ∣ `"space"` ∣ `"puddle"` |  |
| [space](#space) | [SpaceTileEffectParameters](../types/SpaceTileEffectParameters.md) | yes |
| [type](#type) | `"tile-effect"` |  |
| [water](#water) | [WaterTileEffectParameters](../types/WaterTileEffectParameters.md) | yes |

### name

**Type:** [string](../types/string.md)

Name of the tile-effect.

### puddle

**Type:** [PuddleTileEffectParameters](../types/PuddleTileEffectParameters.md) · _optional_

Only loaded, and mandatory if `shader` is `"puddle"`.

### shader

**Type:** `"water"` ∣ `"space"` ∣ `"puddle"`

### space

**Type:** [SpaceTileEffectParameters](../types/SpaceTileEffectParameters.md) · _optional_

Only loaded, and mandatory if `shader` is `"space"`.

### type

**Type:** `"tile-effect"`

### water

**Type:** [WaterTileEffectParameters](../types/WaterTileEffectParameters.md) · _optional_

Only loaded, and mandatory if `shader` is `"water"`.
