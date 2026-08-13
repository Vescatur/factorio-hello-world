# EquipmentPrototype

_prototype_ · **abstract**

**Inherits from:** [Prototype](../prototypes/Prototype.md)

Abstract base of all equipment modules. Equipment modules can be inserted into [equipment grids](../prototypes/EquipmentGridPrototype.md).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [background_border_color](#background-border-color) | [Color](../types/Color.md) | yes |
| [background_color](#background-color) | [Color](../types/Color.md) | yes |
| [categories](#categories) | array[[EquipmentCategoryID](../types/EquipmentCategoryID.md)] |  |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) |  |
| [grabbed_background_color](#grabbed-background-color) | [Color](../types/Color.md) | yes |
| [shape](#shape) | [EquipmentShape](../types/EquipmentShape.md) |  |
| [sprite](#sprite) | [Sprite](../types/Sprite.md) |  |
| [take_result](#take-result) | [ItemID](../types/ItemID.md) | yes |

### background_border_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `equipment_default_background_border_color in utility constants`

The color that the border of the background of this equipment should have when shown inside an equipment grid.

### background_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `equipment_default_background_color in utility constants`

The color that the background of this equipment should have when shown inside an equipment grid.

### categories

**Type:** array[[EquipmentCategoryID](../types/EquipmentCategoryID.md)]

Sets the categories of the equipment. It can only be inserted into [grids](../prototypes/EquipmentGridPrototype.md#equipment-categories) with at least one matching category.

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md)

### grabbed_background_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `equipment_default_grabbed_background_color in utility constants`

The color that the background of this equipment should have when held in the players hand and hovering over an equipment grid.

### shape

**Type:** [EquipmentShape](../types/EquipmentShape.md)

How big this equipment should be in the grid and whether it should be one solid rectangle or of a custom shape.

### sprite

**Type:** [Sprite](../types/Sprite.md)

The graphics to use when this equipment is shown inside an equipment grid.

### take_result

**Type:** [ItemID](../types/ItemID.md) · _optional_ · **Default:** ``name` of this prototype`

Name of the item prototype that should be returned to the player when they remove this equipment from an equipment grid.
