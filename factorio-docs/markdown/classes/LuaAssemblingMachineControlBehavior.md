# LuaAssemblingMachineControlBehavior

_class_

**Inherits from:** [LuaGenericOnOffControlBehavior](../classes/LuaGenericOnOffControlBehavior.md)

Control behavior for assembling machines.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_read_contents](#circuit-read-contents) | [boolean](../concepts/boolean.md) |  |
| [circuit_read_ingredients](#circuit-read-ingredients) | [boolean](../concepts/boolean.md) |  |
| [circuit_read_recipe_finished](#circuit-read-recipe-finished) | [boolean](../concepts/boolean.md) |  |
| [circuit_read_working](#circuit-read-working) | [boolean](../concepts/boolean.md) |  |
| [circuit_recipe_finished_signal](#circuit-recipe-finished-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [circuit_set_recipe](#circuit-set-recipe) | [boolean](../concepts/boolean.md) |  |
| [circuit_working_signal](#circuit-working-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [include_in_crafting](#include-in-crafting) | [boolean](../concepts/boolean.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [read_fuel](#read-fuel) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### circuit_read_contents

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the assembling machine reads its ingredients contents, product contents, materials in crafting and trash inventories.

### circuit_read_ingredients

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the assembling machine outputs ingredients of current recipe as a signals to circuit network.

### circuit_read_recipe_finished

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the the assembling machine sends a signal when the recipe finishes.

### circuit_read_working

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the the assembling machine sends a signal when it is working.

### circuit_recipe_finished_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

The signal sent when the assembling machine finishes a recipe.

### circuit_set_recipe

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the assembling machine sets its recipe from the circuit network.

See [Circuit Recipe Selection](../auxiliary/circuit-recipe-selection.md) for how that recipe is chosen.

### circuit_working_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

The signal sent when the assembling machine is working.

### include_in_crafting

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the read contents should include items in crafting.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### read_fuel

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the fuel (content of energy source) should be read.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
