# CargoWagonPrototype

_prototype_

**Prototype type string:** `type = "cargo-wagon"`

**Inherits from:** [RollingStockPrototype](../prototypes/RollingStockPrototype.md)

A [cargo wagon](https://wiki.factorio.com/Cargo_wagon).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [quality_affects_inventory_size](#quality-affects-inventory-size) | [boolean](../types/boolean.md) | yes |

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

Size of the inventory of the wagon. The inventory can be limited using the red bar and filtered. This functionality cannot be turned off.

### quality_affects_inventory_size

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`
