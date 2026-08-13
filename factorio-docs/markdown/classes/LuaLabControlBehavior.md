# LuaLabControlBehavior

_class_

**Inherits from:** [LuaControlBehavior](../classes/LuaControlBehavior.md)

Control behavior for lab.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [read_contents](#read-contents) | [boolean](../concepts/boolean.md) |  |
| [read_fuel](#read-fuel) | [boolean](../concepts/boolean.md) |  |
| [read_research_cost](#read-research-cost) | [boolean](../concepts/boolean.md) |  |
| [read_technology_level](#read-technology-level) | [boolean](../concepts/boolean.md) |  |
| [research_conditions](#research-conditions) | array[[ResearchCondition](../concepts/ResearchCondition.md)] |  |
| [set_research](#set-research) | [boolean](../concepts/boolean.md) |  |
| [technology_level_signal](#technology-level-signal) | [SignalID](../concepts/SignalID.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### read_contents

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### read_fuel

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if the fuel (content of energy source) should be read.

### read_research_cost

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### read_technology_level

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### research_conditions

**Read:** array[[ResearchCondition](../concepts/ResearchCondition.md)] · **Write:** array[[ResearchCondition](../concepts/ResearchCondition.md)]

### set_research

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### technology_level_signal

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md)

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
