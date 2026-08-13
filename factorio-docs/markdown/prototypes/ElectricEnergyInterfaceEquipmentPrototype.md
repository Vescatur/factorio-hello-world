# ElectricEnergyInterfaceEquipmentPrototype

_prototype_

**Prototype type string:** `type = "electric-energy-interface-equipment"`

**Inherits from:** [EquipmentPrototype](../prototypes/EquipmentPrototype.md)

Provides or consumes power in equipment grids.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [energy_production](#energy-production) | [Energy](../types/Energy.md) | yes |
| [energy_usage](#energy-usage) | [Energy](../types/Energy.md) | yes |
| [gui_mode](#gui-mode) | `"all"` ∣ `"none"` ∣ `"admins"` | yes |
| [show_power_production_in_tooltip](#show-power-production-in-tooltip) | [boolean](../types/boolean.md) | yes |
| [show_power_usage_in_tooltip](#show-power-usage-in-tooltip) | [boolean](../types/boolean.md) | yes |
| [show_stored_energy_in_tooltip](#show-stored-energy-in-tooltip) | [boolean](../types/boolean.md) | yes |

### energy_production

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

**Example:**

```
energy_production = "500GW"
```

### energy_usage

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

**Example:**

```
energy_usage = "10kW"
```

### gui_mode

**Type:** `"all"` ∣ `"none"` ∣ `"admins"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'none'}`

### show_power_production_in_tooltip

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### show_power_usage_in_tooltip

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### show_stored_energy_in_tooltip

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`
