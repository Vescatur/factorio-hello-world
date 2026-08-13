# LuaAsteroidChunkPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of an asteroid chunk.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [dying_trigger_effect](#dying-trigger-effect) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [factoriopedia_alternative](#factoriopedia-alternative) | [LuaAsteroidChunkPrototype](../classes/LuaAsteroidChunkPrototype.md) | yes |
| [hide_from_signal_gui](#hide-from-signal-gui) | [boolean](../concepts/boolean.md) |  |
| [item_signal_alias](#item-signal-alias) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [mineable_properties](#mineable-properties) | [MineableProperties](../concepts/MineableProperties.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### dying_trigger_effect

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### factoriopedia_alternative

**Read:** [LuaAsteroidChunkPrototype](../classes/LuaAsteroidChunkPrototype.md) · _read-only_ · _optional_

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### hide_from_signal_gui

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### item_signal_alias

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

### mineable_properties

**Read:** [MineableProperties](../concepts/MineableProperties.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
