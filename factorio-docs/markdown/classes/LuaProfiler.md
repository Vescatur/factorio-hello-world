# LuaProfiler

_class_

An object used to measure script performance.

Since performance is non-deterministic, these objects don't allow reading the raw time values from Lua. They can be used anywhere a [LocalisedString](../concepts/LocalisedString.md) is used, except for [LuaGuiElement::add](../classes/LuaGuiElement.md#add)'s LocalisedString arguments, [LuaSurface::create_entity](../classes/LuaSurface.md#create-entity)'s `text` argument, and [LuaEntity::add_market_item](../classes/LuaEntity.md#add-market-item).

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [add](#add) | Add the duration of another timer to this timer. Useful to reduce start/stop overhead when accumulating time onto many timers at once. |
| [divide](#divide) | Divides the current duration by a set value. Useful for calculating the average of many iterations. |
| [reset](#reset) | Resets the clock, also restarting it. |
| [restart](#restart) | Start the clock again, without resetting it. |
| [stop](#stop) | Stops the clock. |

### add

`add(other)`

Add the duration of another timer to this timer. Useful to reduce start/stop overhead when accumulating time onto many timers at once.

If other is running, the time to now will be added.

#### Parameters

##### other

**Type:** [LuaProfiler](../classes/LuaProfiler.md)

The timer to add to this timer.

### divide

`divide(number)`

Divides the current duration by a set value. Useful for calculating the average of many iterations.

Does nothing if this isn't stopped.

#### Parameters

##### number

**Type:** [double](../concepts/double.md)

The number to divide by. Must be > 0.

### reset

`reset()`

Resets the clock, also restarting it.

### restart

`restart()`

Start the clock again, without resetting it.

### stop

`stop()`

Stops the clock.
