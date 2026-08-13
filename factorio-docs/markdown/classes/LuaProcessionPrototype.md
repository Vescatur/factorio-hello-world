# LuaProcessionPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a procession.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [ground_timeline](#ground-timeline) | [ProcessionTimeline](../concepts/ProcessionTimeline.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [procession_style](#procession-style) | array[[uint32](../concepts/uint32.md)] |  |
| [timeline](#timeline) | [ProcessionTimeline](../concepts/ProcessionTimeline.md) |  |
| [usage](#usage) | `"departure"` ∣ `"arrival"` ∣ `"intermezzo"` |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### ground_timeline

**Read:** [ProcessionTimeline](../concepts/ProcessionTimeline.md) · _read-only_ · _optional_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### procession_style

**Read:** array[[uint32](../concepts/uint32.md)] · _read-only_

### timeline

**Read:** [ProcessionTimeline](../concepts/ProcessionTimeline.md) · _read-only_

### usage

**Read:** `"departure"` ∣ `"arrival"` ∣ `"intermezzo"` · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
