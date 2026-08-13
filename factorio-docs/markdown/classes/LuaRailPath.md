# LuaRailPath

_class_

A rail path.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [current](#current) | [uint32](../concepts/uint32.md) |  |
| [is_front](#is-front) | [boolean](../concepts/boolean.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [rails](#rails) | LuaCustomTable[[uint32](../concepts/uint32.md) → [LuaEntity](../classes/LuaEntity.md)] |  |
| [size](#size) | [uint32](../concepts/uint32.md) |  |
| [total_distance](#total-distance) | [double](../concepts/double.md) |  |
| [travelled_distance](#travelled-distance) | [double](../concepts/double.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### current

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The current rail index.

### is_front

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If the path goes from the front of the train

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### rails

**Read:** LuaCustomTable[[uint32](../concepts/uint32.md) → [LuaEntity](../classes/LuaEntity.md)] · _read-only_

Array of the rails that this path travels over.

### size

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The total number of rails in this path.

### total_distance

**Read:** [double](../concepts/double.md) · _read-only_

The total path distance.

### travelled_distance

**Read:** [double](../concepts/double.md) · _read-only_

The total distance traveled.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
