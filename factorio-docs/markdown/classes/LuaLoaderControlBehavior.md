# LuaLoaderControlBehavior

_class_

**Inherits from:** [LuaGenericOnOffControlBehavior](../classes/LuaGenericOnOffControlBehavior.md)

Control behavior for loaders.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_read_transfers](#circuit-read-transfers) | [boolean](../concepts/boolean.md) |  |
| [circuit_set_filters](#circuit-set-filters) | [boolean](../concepts/boolean.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### circuit_read_transfers

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the transfers between loader's belt and container should be pulsed to the circuit network

### circuit_set_filters

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if filters are set from circuit network

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
