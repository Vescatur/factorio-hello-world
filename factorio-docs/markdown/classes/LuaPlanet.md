# LuaPlanet

_class_

The runtime values of a planet

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [prototype](#prototype) | [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) |  |
| [surface](#surface) | [LuaSurface](../classes/LuaSurface.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### name

**Read:** [string](../concepts/string.md) · _read-only_

The planets name.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### prototype

**Read:** [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) · _read-only_

### surface

**Read:** [LuaSurface](../classes/LuaSurface.md) · _read-only_ · _optional_

The surface for this planet if one currently exists.

Planets do not default generate their surface. [LuaPlanet::create_surface](../classes/LuaPlanet.md#create-surface) can be used to force the surface to exist.

[LuaPlanet::associate_surface](../classes/LuaPlanet.md#associate-surface) can be used to create an association with an existing surface.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [associate_surface](#associate-surface) | Associates the given surface with this planet. Surface must not already be associated with a planet and the planet must not already have an associated surface. |
| [create_surface](#create-surface) | Creates the associated surface if one doesn't already exist. |
| [get_space_platforms](#get-space-platforms) | Gets the built space platforms orbiting this planet on the given force. |
| [reset_map_gen_settings](#reset-map-gen-settings) | Resets the map gen settings on this planet to the default from-prototype state. |

### associate_surface

`associate_surface(surface)`

Associates the given surface with this planet. Surface must not already be associated with a planet and the planet must not already have an associated surface.

Planet must not be using [entities_require_heating](../classes/LuaSpaceLocationPrototype.md#entities-require-heating).

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

The surface to be associated.

### create_surface

`create_surface()`

Creates the associated surface if one doesn't already exist.

#### Return values

- [LuaSurface](../classes/LuaSurface.md)

### get_space_platforms

`get_space_platforms(force)`

Gets the built space platforms orbiting this planet on the given force.

Note, this does not include platforms that have not yet been built.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

#### Return values

- array[[LuaSpacePlatform](../classes/LuaSpacePlatform.md)]

### reset_map_gen_settings

`reset_map_gen_settings()`

Resets the map gen settings on this planet to the default from-prototype state.
