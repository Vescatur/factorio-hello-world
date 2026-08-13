# LuaCargoHatch

_class_

A cargo hatch.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [busy](#busy) | [boolean](../concepts/boolean.md) |  |
| [is_input_compatible](#is-input-compatible) | [boolean](../concepts/boolean.md) |  |
| [is_output_compatible](#is-output-compatible) | [boolean](../concepts/boolean.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [owner](#owner) | [LuaEntity](../classes/LuaEntity.md) |  |
| [reserved](#reserved) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### busy

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### is_input_compatible

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### is_output_compatible

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### owner

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_

### reserved

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [create_cargo_pod](#create-cargo-pod) | Creates a cargo pod for output at the owning entity hatch location. |

### create_cargo_pod

`create_cargo_pod(cargo_pod_prototype)`

Creates a cargo pod for output at the owning entity hatch location.

#### Parameters

##### cargo_pod_prototype

**Type:** [EntityID](../concepts/EntityID.md) · _optional_

The cargo pod prototype to create. If not provided, the default cargo pod prototype of the hatch is used.

#### Return values

- [LuaEntity](../classes/LuaEntity.md)
