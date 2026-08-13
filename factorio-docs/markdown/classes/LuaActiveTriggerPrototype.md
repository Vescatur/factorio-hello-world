# LuaActiveTriggerPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of an Active Trigger.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [fork_chance](#fork-chance) | [double](../concepts/double.md) |  |
| [jump_delay_ticks](#jump-delay-ticks) | [uint32](../concepts/uint32.md) |  |
| [max_forks](#max-forks) | [uint32](../concepts/uint32.md) |  |
| [max_forks_per_jump](#max-forks-per-jump) | [uint32](../concepts/uint32.md) |  |
| [max_jumps](#max-jumps) | [uint32](../concepts/uint32.md) |  |
| [max_range](#max-range) | [double](../concepts/double.md) |  |
| [max_range_per_jump](#max-range-per-jump) | [double](../concepts/double.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### fork_chance

**Read:** [double](../concepts/double.md) · _read-only_

The chance that a new fork will spawn after each jump [0,1]. default = 0.

### jump_delay_ticks

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The tick delay between each jump. 0 = all jumps instantaneous. default = 0.

### max_forks

**Read:** [uint32](../concepts/uint32.md) · _read-only_

maximum number of forks allowed to spawn for the entire chain. default = infinity.

### max_forks_per_jump

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The maximum number of forks that can spawn from a single jump. default = 1.

### max_jumps

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The max number of jumps per trigger. default = 5.

### max_range

**Read:** [double](../concepts/double.md) · _read-only_

The max distance jumps are allowed to travel away from the original target. default = infinity.

### max_range_per_jump

**Read:** [double](../concepts/double.md) · _read-only_

The max length of jumps. default = 5.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
