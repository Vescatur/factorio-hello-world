# CargoDestination

_concept_

The destination of a cargo pod.

**Definition:** table{hatch, land_at_exact_position, position, space_platform, station, surface, transform_launch_products, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [hatch](#hatch) | [LuaCargoHatch](../classes/LuaCargoHatch.md) | yes |
| [land_at_exact_position](#land-at-exact-position) | [boolean](../concepts/boolean.md) | yes |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [space_platform](#space-platform) | [LuaSpacePlatform](../classes/LuaSpacePlatform.md) | yes |
| [station](#station) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [surface](#surface) | [SurfaceIdentification](../concepts/SurfaceIdentification.md) | yes |
| [transform_launch_products](#transform-launch-products) | [boolean](../concepts/boolean.md) | yes |
| [type](#type) | [defines.cargo_destination](../defines/defines.md) |  |

### hatch

**Type:** [LuaCargoHatch](../classes/LuaCargoHatch.md) · _optional_

Only used if `type` is [station](../defines/defines.md). Must be connected to the station and not reserved.

### land_at_exact_position

**Type:** [boolean](../concepts/boolean.md) · _optional_

Only used if `type` is [surface](../defines/defines.md) and `position` is specified. Determines whether to land at `position` exactly or at a random location nearby. Defaults to `false`.

### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

Only used if `type` is [surface](../defines/defines.md). Determines the position on the surface to land near. If not provided, cargo pod will switch destination type from [surface](../defines/defines.md) to [station](../defines/defines.md) before starting descent if there is a station available, and will land at {0, 0} if there is no station available.

### space_platform

**Type:** [LuaSpacePlatform](../classes/LuaSpacePlatform.md) · _optional_

Only used if `type` is [space_platform](../defines/defines.md). Only used for sending space platform starter packs to a platform that is waiting for a starter pack.

### station

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

Only used if `type` is [station](../defines/defines.md). Must be entity of type `cargo-landing-pad` or `space-platform-hub`.

### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Only used if `type` is [surface](../defines/defines.md).

### transform_launch_products

**Type:** [boolean](../concepts/boolean.md) · _optional_

Only used if `type` is [station](../defines/defines.md) or [surface](../defines/defines.md). If true, items with [rocket_launch_products](../prototypes/ItemPrototype.md#rocket-launch-products) defined will be transformed into their products before starting descent. Defaults to `false`.

### type

**Type:** [defines.cargo_destination](../defines/defines.md)

The type of destination.
