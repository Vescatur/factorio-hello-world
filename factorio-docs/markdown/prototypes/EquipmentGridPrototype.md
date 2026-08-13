# EquipmentGridPrototype

_prototype_

**Prototype type string:** `type = "equipment-grid"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

The prototype of an equipment grid, for example the one used in a [power armor](https://wiki.factorio.com/Power_armor).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [equipment_categories](#equipment-categories) | array[[EquipmentCategoryID](../types/EquipmentCategoryID.md)] |  |
| [height](#height) | [uint32](../types/uint32.md) |  |
| [locked](#locked) | [boolean](../types/boolean.md) | yes |
| [width](#width) | [uint32](../types/uint32.md) |  |

### equipment_categories

**Type:** array[[EquipmentCategoryID](../types/EquipmentCategoryID.md)]

Only [equipment](../prototypes/EquipmentPrototype.md) with at least one of these [categories](../prototypes/EquipmentCategory.md) can be inserted into the grid.

### height

**Type:** [uint32](../types/uint32.md)

### locked

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this locked from user interaction which means that the user cannot put equipment into or take equipment from this equipment grid.

### width

**Type:** [uint32](../types/uint32.md)
