# LuaRemote

_class_

Registry of interfaces between scripts. An interface is simply a dictionary mapping names to functions. A script or mod can then register an interface with [LuaRemote](../classes/LuaRemote.md), after that any script can call the registered functions, provided it knows the interface name and the desired function name. An instance of LuaRemote is available through the global object named `remote`.

**Example:**

```
-- Will register a remote interface containing two functions. Later, it will call these functions through `remote`.
remote.add_interface("human interactor",
  {
    hello = function() game.player.print("Hi!") end,
    bye = function(name) game.player.print("Bye " .. name) end
  })
-- Some time later, possibly in a different mod...
remote.call("human interactor", "hello")
remote.call("human interactor", "bye", "dear reader")
```

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [interfaces](#interfaces) | dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → `true`]] |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |

### interfaces

**Read:** dictionary[[string](../concepts/string.md) → dictionary[[string](../concepts/string.md) → `true`]] · _read-only_

List of all registered interfaces. For each interface name, `remote.interfaces[name]` is a dictionary mapping the interface's registered functions to `true`.

**Example:**

```
-- Assuming the "human interactor" interface is registered as above
game.player.print(tostring(remote.interfaces["human interactor"]["hello"]))        -- prints true
game.player.print(tostring(remote.interfaces["human interactor"]["nonexistent"]))  -- prints nil
```

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

## Methods

| Method | Summary |
| --- | --- |
| [add_interface](#add-interface) | Add a remote interface. |
| [call](#call) | Call a function of an interface. |
| [remove_interface](#remove-interface) | Removes an interface with the given name. |

### add_interface

`add_interface(functions, name)`

Add a remote interface.

#### Parameters

##### functions

**Type:** dictionary[[string](../concepts/string.md) → function()]

List of functions that are members of the new interface.

##### name

**Type:** [string](../concepts/string.md)

Name of the interface. If the name matches any existing interface, an error is thrown.

### call

`call(function, interface)`

Call a function of an interface.

Providing an unknown interface or function name will result in a script error.

#### Parameters

##### function

**Type:** [string](../concepts/string.md)

Function name that belongs to the `interface`.

##### interface

**Type:** [string](../concepts/string.md)

Interface to look up `function` in.

#### Variadic parameter

**Type:** [Any](../concepts/Any.md)

Arguments to pass to the called function. Note that any arguments passed through the interface are a copy of the original, not a reference. Metatables are not retained, while references to LuaObjects stay intact. Functions cannot be passed through the interface.

#### Return values

- [Any](../concepts/Any.md) _(optional)_

### remove_interface

`remove_interface(name)`

Removes an interface with the given name.

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

Name of the interface.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the interface was removed. `false` if the interface didn't exist.
