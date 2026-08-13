# GeneratorEquipmentPrototype

_prototype_

**Prototype type string:** `type = "generator-equipment"`

**Inherits from:** [EquipmentPrototype](../prototypes/EquipmentPrototype.md)

Used by [portable fusion reactor](https://wiki.factorio.com/Portable_fusion_reactor). Provides power in equipment grids. Can produce power for free or use a burner energy source.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [burner](#burner) | [BurnerEnergySource](../types/BurnerEnergySource.md) | yes |
| [power](#power) | [Energy](../types/Energy.md) |  |

### burner

**Type:** [BurnerEnergySource](../types/BurnerEnergySource.md) · _optional_

If not defined, this equipment produces power for free.

### power

**Type:** [Energy](../types/Energy.md)

The power output of this equipment.

**Example:**

```
power = "750kW"
```
