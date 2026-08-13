# AutoplaceSpecification

_type_

Autoplace specification is used to determine which entities are placed when generating map. Currently it is used for enemy bases, tiles, resources and other entities (trees, fishes, etc.).

Autoplace specification describe conditions for placing tiles, entities, and decoratives during surface generation. Autoplace specification defines probability of placement on any given tile and richness, which has different meaning depending on the thing being placed.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [control](#control) | [AutoplaceControlID](../types/AutoplaceControlID.md) | yes |
| [default_enabled](#default-enabled) | [boolean](../types/boolean.md) | yes |
| [force](#force) | `"enemy"` ∣ `"player"` ∣ `"neutral"` ∣ [string](../types/string.md) | yes |
| [local_expressions](#local-expressions) | dictionary[[string](../types/string.md) → [NoiseExpression](../types/NoiseExpression.md)] | yes |
| [local_functions](#local-functions) | dictionary[[string](../types/string.md) → [NoiseFunction](../types/NoiseFunction.md)] | yes |
| [order](#order) | [Order](../types/Order.md) | yes |
| [placement_density](#placement-density) | [uint32](../types/uint32.md) | yes |
| [probability_expression](#probability-expression) | [NoiseExpression](../types/NoiseExpression.md) |  |
| [richness_expression](#richness-expression) | [NoiseExpression](../types/NoiseExpression.md) | yes |
| [tile_restriction](#tile-restriction) | array[[TileIDRestriction](../types/TileIDRestriction.md)] | yes |

### control

**Type:** [AutoplaceControlID](../types/AutoplaceControlID.md) · _optional_

Name of the [AutoplaceControl](../prototypes/AutoplaceControl.md) (row in the map generator GUI) that applies to this entity.

### default_enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Indicates whether the thing should be placed even if [MapGenSettings](../concepts/MapGenSettings.md) do not provide frequency/size/richness for it. (either for the specific prototype or for the control named by AutoplaceSpecification.control).

If true, normal frequency/size/richness (`value=1`) are used in that case. Otherwise it is treated as if 'none' were selected.

### force

**Type:** `"enemy"` ∣ `"player"` ∣ `"neutral"` ∣ [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'neutral'}`

Force of the placed entity. Can be a custom force name. Only relevant for [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md).

### local_expressions

**Type:** dictionary[[string](../types/string.md) → [NoiseExpression](../types/NoiseExpression.md)] · _optional_

A map of expression name to expression. Used by `probability_expression` and `richness_expression`.

Local expressions are meant to store data locally similar to local variables in Lua. Their purpose is to hold noise expressions used multiple times in the named noise expression, or just to tell the reader that the local expression has a specific purpose. Local expressions can access other local definitions and also function parameters, but recursive definitions aren't supported.

### local_functions

**Type:** dictionary[[string](../types/string.md) → [NoiseFunction](../types/NoiseFunction.md)] · _optional_

A map of function name to function. Used by `probability_expression` and `richness_expression`.

Local functions serve the same purpose as local expressions - they aren't visible outside of the specific prototype and they have access to other local definitions.

### order

**Type:** [Order](../types/Order.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

Order for placing the entity (has no effect when placing tiles). Entities whose order compares less are placed earlier (this influences placing multiple entities which collide with itself), from entities with equal order string only one with the highest probability is placed.

### placement_density

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

For entities and decoratives, how many times to attempt to place on each tile. Probability and collisions are taken into account each attempt.

### probability_expression

**Type:** [NoiseExpression](../types/NoiseExpression.md)

Provides a noise expression that will be evaluated at every point on the map to determine probability.

### richness_expression

**Type:** [NoiseExpression](../types/NoiseExpression.md) · _optional_

If specified, provides a noise expression that will be evaluated to determine richness. Otherwise, `probability_expression` will be used instead.

### tile_restriction

**Type:** array[[TileIDRestriction](../types/TileIDRestriction.md)] · _optional_

Restricts tiles or tile transitions the entity can appear on.
