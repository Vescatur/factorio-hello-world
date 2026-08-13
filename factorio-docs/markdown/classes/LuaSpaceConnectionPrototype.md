# LuaSpaceConnectionPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a space connection.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [asteroid_spawn_definitions](#asteroid-spawn-definitions) | array[[SpaceConnectionAsteroidSpawnDefinition](../concepts/SpaceConnectionAsteroidSpawnDefinition.md)] | yes |
| [factoriopedia_alternative](#factoriopedia-alternative) | [LuaSpaceConnectionPrototype](../classes/LuaSpaceConnectionPrototype.md) | yes |
| [from](#from) | [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) |  |
| [length](#length) | [uint32](../concepts/uint32.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [to](#to) | [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### asteroid_spawn_definitions

**Read:** array[[SpaceConnectionAsteroidSpawnDefinition](../concepts/SpaceConnectionAsteroidSpawnDefinition.md)] · _read-only_ · _optional_

### factoriopedia_alternative

**Read:** [LuaSpaceConnectionPrototype](../classes/LuaSpaceConnectionPrototype.md) · _read-only_ · _optional_

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### from

**Read:** [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) · _read-only_

### length

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### to

**Read:** [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
