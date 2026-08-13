# LuaBurnerPrototype

_class_

Prototype of a burner energy source.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [auto_refuel](#auto-refuel) | [boolean](../concepts/boolean.md) |  |
| [burner_usage](#burner-usage) | [LuaBurnerUsagePrototype](../classes/LuaBurnerUsagePrototype.md) |  |
| [burnt_inventory_size](#burnt-inventory-size) | [uint32](../concepts/uint32.md) |  |
| [effectivity](#effectivity) | [double](../concepts/double.md) |  |
| [emissions_per_joule](#emissions-per-joule) | dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] |  |
| [fuel_categories](#fuel-categories) | dictionary[[string](../concepts/string.md) → `true`] |  |
| [fuel_inventory_size](#fuel-inventory-size) | [uint32](../concepts/uint32.md) |  |
| [hide_from_stats](#hide-from-stats) | [boolean](../concepts/boolean.md) |  |
| [initial_fuel](#initial-fuel) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [initial_fuel_percent](#initial-fuel-percent) | [double](../concepts/double.md) |  |
| [light_flicker](#light-flicker) | table{border_fix_speed, color, derivation_change_deviation, derivation_change_frequency, light_intensity_to_size_coefficient, maximum_intensity, minimum_intensity, minimum_light_size} | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [render_no_network_icon](#render-no-network-icon) | [boolean](../concepts/boolean.md) |  |
| [render_no_power_icon](#render-no-power-icon) | [boolean](../concepts/boolean.md) |  |
| [smoke](#smoke) | array[[SmokeSource](../concepts/SmokeSource.md)] | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### auto_refuel

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### burner_usage

**Read:** [LuaBurnerUsagePrototype](../classes/LuaBurnerUsagePrototype.md) · _read-only_

### burnt_inventory_size

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### effectivity

**Read:** [double](../concepts/double.md) · _read-only_

### emissions_per_joule

**Read:** dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] · _read-only_

The table of emissions of this energy source in `pollution/Joule`, indexed by pollutant type. Multiplying it by energy consumption in `Watt` gives `pollution/second`.

### fuel_categories

**Read:** dictionary[[string](../concepts/string.md) → `true`] · _read-only_

The value in the dictionary is meaningless and exists just to allow for easy lookup.

### fuel_inventory_size

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### hide_from_stats

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### initial_fuel

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

### initial_fuel_percent

**Read:** [double](../concepts/double.md) · _read-only_

### light_flicker

**Read:** table{border_fix_speed, color, derivation_change_deviation, derivation_change_frequency, light_intensity_to_size_coefficient, maximum_intensity, minimum_intensity, minimum_light_size} · _read-only_ · _optional_

The light flicker definition for this burner prototype.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### render_no_network_icon

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### render_no_power_icon

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### smoke

**Read:** array[[SmokeSource](../concepts/SmokeSource.md)] · _read-only_ · _optional_

The smoke sources for this burner prototype.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
