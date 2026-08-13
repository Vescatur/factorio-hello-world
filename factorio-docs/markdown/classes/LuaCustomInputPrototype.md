# LuaCustomInputPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a custom input.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [string](../concepts/string.md) |  |
| [alternative_key_sequence](#alternative-key-sequence) | [string](../concepts/string.md) | yes |
| [consuming](#consuming) | `"none"` ∣ `"game-only"` |  |
| [controller_alternative_key_sequence](#controller-alternative-key-sequence) | [string](../concepts/string.md) | yes |
| [controller_key_sequence](#controller-key-sequence) | [string](../concepts/string.md) | yes |
| [enabled](#enabled) | [boolean](../concepts/boolean.md) |  |
| [enabled_while_in_cutscene](#enabled-while-in-cutscene) | [boolean](../concepts/boolean.md) |  |
| [enabled_while_spectating](#enabled-while-spectating) | [boolean](../concepts/boolean.md) |  |
| [event_id](#event-id) | [defines.events](../defines/defines.md) |  |
| [include_selected_prototype](#include-selected-prototype) | [boolean](../concepts/boolean.md) |  |
| [item_to_spawn](#item-to-spawn) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [key_sequence](#key-sequence) | [string](../concepts/string.md) |  |
| [linked_game_control](#linked-game-control) | [LinkedGameControl](../concepts/LinkedGameControl.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### action

**Read:** [string](../concepts/string.md) · _read-only_

The action that happens when this custom input is triggered.

### alternative_key_sequence

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The default alternative key sequence for this custom input, if any

### consuming

**Read:** `"none"` ∣ `"game-only"` · _read-only_

The consuming type.

### controller_alternative_key_sequence

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The default controller alternative key sequence for this custom input, if any

### controller_key_sequence

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The default controller key sequence for this custom input, if any

### enabled

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this custom input is enabled. Disabled custom inputs exist but are not used by the game.

### enabled_while_in_cutscene

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this custom input is enabled while using the cutscene controller.

### enabled_while_spectating

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this custom input is enabled while using the spectator controller.

### event_id

**Read:** [defines.events](../defines/defines.md) · _read-only_

Event identifier associated with this custom input.

### include_selected_prototype

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this custom input will include the selected prototype (if any) when triggered.

### item_to_spawn

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

The item that gets spawned when this custom input is fired, if any.

### key_sequence

**Read:** [string](../concepts/string.md) · _read-only_

The default key sequence for this custom input.

### linked_game_control

**Read:** [LinkedGameControl](../concepts/LinkedGameControl.md) · _read-only_ · _optional_

The linked game control name, if any.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
