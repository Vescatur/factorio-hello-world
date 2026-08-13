# BlueprintRollingStockConnection

_concept_

**Definition:** table{back, front, stock}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [back](#back) | [uint32](../concepts/uint32.md) | yes |
| [front](#front) | [uint32](../concepts/uint32.md) | yes |
| [stock](#stock) | [uint32](../concepts/uint32.md) |  |

### back

**Type:** [uint32](../concepts/uint32.md) · _optional_

The entity_number of the back stock connection.

### front

**Type:** [uint32](../concepts/uint32.md) · _optional_

The entity_number of the front stock connection.

### stock

**Type:** [uint32](../concepts/uint32.md)

The entity_number of 'this' entity in the blueprint.
