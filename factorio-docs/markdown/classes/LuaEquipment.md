# LuaEquipment

_class_

An item in a [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md), for example a fusion reactor placed in one's power armor.

An equipment reference becomes invalid once the equipment is removed or the equipment grid it resides in is destroyed.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [burner](#burner) | [LuaBurner](../classes/LuaBurner.md) | yes |
| [electric_buffer_size](#electric-buffer-size) | [double](../concepts/double.md) |  |
| [energy](#energy) | [double](../concepts/double.md) |  |
| [generator_power](#generator-power) | [double](../concepts/double.md) |  |
| [ghost_name](#ghost-name) | [string](../concepts/string.md) |  |
| [ghost_prototype](#ghost-prototype) | [LuaEquipmentPrototype](../classes/LuaEquipmentPrototype.md) |  |
| [ghost_type](#ghost-type) | [string](../concepts/string.md) |  |
| [inventory_bonus](#inventory-bonus) | [uint32](../concepts/uint32.md) |  |
| [max_energy](#max-energy) | [double](../concepts/double.md) |  |
| [max_shield](#max-shield) | [double](../concepts/double.md) |  |
| [max_solar_power](#max-solar-power) | [double](../concepts/double.md) |  |
| [movement_bonus](#movement-bonus) | [double](../concepts/double.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [position](#position) | [EquipmentPosition](../concepts/EquipmentPosition.md) |  |
| [power_production](#power-production) | [double](../concepts/double.md) |  |
| [power_usage](#power-usage) | [double](../concepts/double.md) |  |
| [prototype](#prototype) | [LuaEquipmentPrototype](../classes/LuaEquipmentPrototype.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [shape](#shape) | table{height, width} |  |
| [shield](#shield) | [double](../concepts/double.md) |  |
| [to_be_removed](#to-be-removed) | [boolean](../concepts/boolean.md) |  |
| [type](#type) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### burner

**Read:** [LuaBurner](../classes/LuaBurner.md) · _read-only_ · _optional_

The burner energy source for this equipment, if any.

### electric_buffer_size

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The power buffer size of this ElectricEnergyInterfaceEquipment.

### energy

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Current available energy.

### generator_power

**Read:** [double](../concepts/double.md) · _read-only_

Energy generated per tick.

### ghost_name

**Read:** [string](../concepts/string.md) · _read-only_

Name of the equipment contained in this ghost

### ghost_prototype

**Read:** [LuaEquipmentPrototype](../classes/LuaEquipmentPrototype.md) · _read-only_

The prototype of the equipment contained in this ghost.

### ghost_type

**Read:** [string](../concepts/string.md) · _read-only_

Type of the equipment contained in this ghost.

### inventory_bonus

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Inventory size bonus.

### max_energy

**Read:** [double](../concepts/double.md) · _read-only_

Maximum amount of energy that can be stored in this equipment.

### max_shield

**Read:** [double](../concepts/double.md) · _read-only_

Maximum shield value. `0` if this equipment doesn't have a shield.

### max_solar_power

**Read:** [double](../concepts/double.md) · _read-only_

Maximum energy per tick crated by this equipment on the current surface. Actual generated energy varies depending on the daylight levels.

### movement_bonus

**Read:** [double](../concepts/double.md) · _read-only_

Movement speed bonus.

### name

**Read:** [string](../concepts/string.md) · _read-only_

Name of this equipment.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### position

**Read:** [EquipmentPosition](../concepts/EquipmentPosition.md) · _read-only_

Position of this equipment in the equipment grid.

### power_production

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The power production specific to the ElectricEnergyInterfaceEquipment type.

### power_usage

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The power usage specific to the ElectricEnergyInterfaceEquipment type.

### prototype

**Read:** [LuaEquipmentPrototype](../classes/LuaEquipmentPrototype.md) · _read-only_

### quality

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_

Quality of this equipment.

### shape

**Read:** table{height, width} · _read-only_

Shape of this equipment.

### shield

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Current shield value of the equipment. Can't be set higher than [LuaEquipment::max_shield](../classes/LuaEquipment.md#max-shield).

Trying to write this value on non-shield equipment will throw an error.

### to_be_removed

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this equipment is marked to be removed.

### type

**Read:** [string](../concepts/string.md) · _read-only_

Type of this equipment.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
