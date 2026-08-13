# AmmoTurretPrototype

_prototype_

**Prototype type string:** `type = "ammo-turret"`

**Inherits from:** [TurretPrototype](../prototypes/TurretPrototype.md)

A turret that consumes [ammo items](../prototypes/AmmoItemPrototype.md).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [automated_ammo_count](#automated-ammo-count) | [ItemCountType](../types/ItemCountType.md) |  |
| [energy_per_shot](#energy-per-shot) | [Energy](../types/Energy.md) | yes |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [prepare_with_no_ammo](#prepare-with-no-ammo) | [boolean](../types/boolean.md) | yes |

### automated_ammo_count

**Type:** [ItemCountType](../types/ItemCountType.md)

The amount of ammo that inserters automatically insert into this turret.

### energy_per_shot

**Type:** [Energy](../types/Energy.md) · _optional_

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md) · _optional_

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

Size of the ammo inventory.

### prepare_with_no_ammo

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`
