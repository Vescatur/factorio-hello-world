# CargoBayPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "cargo-bay"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_unloading](#allow-unloading) | [boolean](../types/boolean.md) | yes |
| [build_grid_size](#build-grid-size) | `2` | yes |
| [graphics_set](#graphics-set) | [CargoBayConnectableGraphicsSet](../types/CargoBayConnectableGraphicsSet.md) | yes |
| [has_direction](#has-direction) | [boolean](../types/boolean.md) | yes |
| [hatch_definitions](#hatch-definitions) | array[[CargoHatchDefinition](../types/CargoHatchDefinition.md)] | yes |
| [inventory_size_bonus](#inventory-size-bonus) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [platform_graphics_set](#platform-graphics-set) | [CargoBayConnectableGraphicsSet](../types/CargoBayConnectableGraphicsSet.md) | yes |
| [use_unloading_distance_limit](#use-unloading-distance-limit) | [boolean](../types/boolean.md) | yes |

### allow_unloading

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When set to `true`, inserters will be able to take items out of this cargo bay when it is connected to a cargo landing pad.

### build_grid_size

**Type:** `2` · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 2}`

Has to be 2 for 2x2 grid.

### graphics_set

**Type:** [CargoBayConnectableGraphicsSet](../types/CargoBayConnectableGraphicsSet.md) · _optional_

### has_direction

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### hatch_definitions

**Type:** array[[CargoHatchDefinition](../types/CargoHatchDefinition.md)] · _optional_

### inventory_size_bonus

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

Cannot be 0.

### platform_graphics_set

**Type:** [CargoBayConnectableGraphicsSet](../types/CargoBayConnectableGraphicsSet.md) · _optional_

A special variant which renders on space platforms. If not specified, the game will fall back to the regular graphics set.

### use_unloading_distance_limit

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only relevant for cargo bays that have [allow_unloading](../prototypes/CargoBayPrototype.md#allow-unloading) set.

When `false` this cargo bay will allow item unloading regardless of distance as long as it is connected to a cargo landing pad.

When `true` this cargo bay will allow item unloading only when connected to a cargo landing pad and cargo bay is within distance limit set by [MaxCargoBayUnloadingDistanceModifier](../types/MaxCargoBayUnloadingDistanceModifier.md) from that cargo landing pad.
