# LuaSelectorCombinatorControlBehavior

_class_

**Inherits from:** [LuaCombinatorControlBehavior](../classes/LuaCombinatorControlBehavior.md)

Control behavior for selector combinators.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [parameters](#parameters) | [SelectorCombinatorParameters](../concepts/SelectorCombinatorParameters.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### parameters

**Read:** [SelectorCombinatorParameters](../concepts/SelectorCombinatorParameters.md) · **Write:** [SelectorCombinatorParameters](../concepts/SelectorCombinatorParameters.md)

The selector combinator parameters. `parameters` may be `nil` in order to clear the parameters.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
