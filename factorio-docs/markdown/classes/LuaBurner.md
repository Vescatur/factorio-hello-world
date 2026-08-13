# LuaBurner

_class_

A reference to the burner energy source owned by a specific [LuaEntity](../classes/LuaEntity.md) or [LuaEquipment](../classes/LuaEquipment.md).

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [burnt_result_inventory](#burnt-result-inventory) | [LuaInventory](../classes/LuaInventory.md) |  |
| [currently_burning](#currently-burning) | [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md) | yes |
| [fuel_categories](#fuel-categories) | dictionary[[string](../concepts/string.md) → `true`] |  |
| [heat](#heat) | [double](../concepts/double.md) |  |
| [heat_capacity](#heat-capacity) | [double](../concepts/double.md) |  |
| [inventory](#inventory) | [LuaInventory](../classes/LuaInventory.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [owner](#owner) | [LuaEntity](../classes/LuaEntity.md) ∣ [LuaEquipment](../classes/LuaEquipment.md) |  |
| [remaining_burning_fuel](#remaining-burning-fuel) | [double](../concepts/double.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### burnt_result_inventory

**Read:** [LuaInventory](../classes/LuaInventory.md) · _read-only_

The burnt result inventory.

### currently_burning

**Read:** [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md) · **Write:** [ItemWithQualityID](../concepts/ItemWithQualityID.md) · _optional_

The currently burning item. Writing `nil` will void the currently burning item without producing a [LuaBurner::burnt_result](../classes/LuaBurner.md#burnt-result).

Writing to this automatically handles correcting [LuaBurner::remaining_burning_fuel](../classes/LuaBurner.md#remaining-burning-fuel).

### fuel_categories

**Read:** dictionary[[string](../concepts/string.md) → `true`] · _read-only_

The fuel categories this burner uses.

The value in the dictionary is meaningless and exists just to allow for easy lookup.

### heat

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The current heat (energy) stored in this burner.

### heat_capacity

**Read:** [double](../concepts/double.md) · _read-only_

The maximum heat (maximum energy) that this burner can store.

### inventory

**Read:** [LuaInventory](../classes/LuaInventory.md) · _read-only_

The fuel inventory.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### owner

**Read:** [LuaEntity](../classes/LuaEntity.md) ∣ [LuaEquipment](../classes/LuaEquipment.md) · _read-only_

The owner of this burner energy source

### remaining_burning_fuel

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The amount of energy left in the currently-burning fuel item.

Writing to this will silently do nothing if there's no [LuaBurner::currently_burning](../classes/LuaBurner.md#currently-burning) set.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
