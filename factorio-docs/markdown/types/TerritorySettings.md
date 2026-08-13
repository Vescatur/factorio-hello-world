# TerritorySettings

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [minimum_territory_size](#minimum-territory-size) | [uint32](../types/uint32.md) | yes |
| [territory_index_expression](#territory-index-expression) | [string](../types/string.md) | yes |
| [territory_variation_expression](#territory-variation-expression) | [string](../types/string.md) | yes |
| [units](#units) | array[[EntityID](../types/EntityID.md)] | yes |

### minimum_territory_size

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Minimum number of chunks a territory must have. Below this, it will get deleted.

### territory_index_expression

**Type:** [string](../types/string.md) · _optional_

Mandatory if `units` is not empty.

### territory_variation_expression

**Type:** [string](../types/string.md) · _optional_ · **Default:** `0`

The result will be converted to integer, clamped and used as an index for `units` array. Negative values will result in empty spawn location.

### units

**Type:** array[[EntityID](../types/EntityID.md)] · _optional_

Names of the [SegmentedUnitPrototype](../prototypes/SegmentedUnitPrototype.md).
