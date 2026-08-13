# BurnerEnergySource

_type_

**Inherits from:** [BaseEnergySource](../types/BaseEnergySource.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [auto_refuel](#auto-refuel) | [boolean](../types/boolean.md) | yes |
| [burner_usage](#burner-usage) | [BurnerUsageID](../types/BurnerUsageID.md) | yes |
| [burnt_inventory_size](#burnt-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [effectivity](#effectivity) | [double](../types/double.md) | yes |
| [fuel_categories](#fuel-categories) | array[[FuelCategoryID](../types/FuelCategoryID.md)] | yes |
| [fuel_inventory_size](#fuel-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [hide_from_stats](#hide-from-stats) | [boolean](../types/boolean.md) | yes |
| [initial_fuel](#initial-fuel) | [ItemID](../types/ItemID.md) | yes |
| [initial_fuel_percent](#initial-fuel-percent) | [double](../types/double.md) | yes |
| [light_flicker](#light-flicker) | [LightFlickeringDefinition](../types/LightFlickeringDefinition.md) | yes |
| [smoke](#smoke) | array[[SmokeSource](../types/SmokeSource.md)] | yes |
| [type](#type) | `"burner"` |  |

### auto_refuel

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If this burner attempts to auto-refill fuel from the owner character, car, spider vehicle, cargo wagon, or artillery wagon.

### burner_usage

**Type:** [BurnerUsageID](../types/BurnerUsageID.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'fuel'}`

### burnt_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### effectivity

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

`1` means 100% effectivity. Must be greater than `0`. Multiplier of the energy output.

### fuel_categories

**Type:** array[[FuelCategoryID](../types/FuelCategoryID.md)] · _optional_ · **Default:** ``{"chemical"}``

The energy source can be used with fuel from these [fuel categories](../prototypes/FuelCategory.md).

### fuel_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

### hide_from_stats

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When set, items consumed and produced by this burner will not appear in item production statistics.

### initial_fuel

**Type:** [ItemID](../types/ItemID.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

### initial_fuel_percent

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.25}`

### light_flicker

**Type:** [LightFlickeringDefinition](../types/LightFlickeringDefinition.md) · _optional_

### smoke

**Type:** array[[SmokeSource](../types/SmokeSource.md)] · _optional_

### type

**Type:** `"burner"`
