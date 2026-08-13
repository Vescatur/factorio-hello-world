# LuaDebugAdapter

_class_

Factorio provides a [Debug Adapter](https://microsoft.github.io/debug-adapter-protocol/overview) for compatible tools in single-session mode on stdin/stdout when launched with the `--dap` command line argument.

The Debug Adapter supports a Launch request with the following arguments:

- `factorioArgs` :: array[[string](../concepts/string.md)]? : Command line arguments for the debug session

- `followSymlinks` :: [boolean](../concepts/boolean.md)? : Follow symlinks when emitting locations (stack traces, etc) (default: true)

- `hookDebugConsole` :: [boolean](../concepts/boolean.md)? : Enable catching errors and breakpoints/stepping in code called from the Debug Console (Evaluate context="repl") (default: false)

- `trace` :: [boolean](../concepts/boolean.md)? : Trace DAP messages to a `dap-trace.log` (default: false)

- `tags` :: [Any](../concepts/Any.md)? : Extra debug session tags, see also [tags](../classes/LuaDebugAdapter.md#tags)

---

For mod objects that appear in debug listing, the following optional metatable methods may be used to customize their display:

- `__tostring`(`self`) -> [string](../concepts/string.md) : Called when the object appears as a value, to format it for inline display.

- `__debugcounts`(`self`) -> `indexedVariables` :: [int32](../concepts/int32.md) , `namedVariables` :: [int32](../concepts/int32.md) : Called when the object appears as a value, to estimate the size of this object's children, and enabled paged listing for large indexed objects. If either count is returned as 0, the client may skip listing that section entirely. If the indexed count is non-zero, the client may choose to request the values in pages. The Indexed count should indicate the highest index present, to properly range paged fetch windows, even if not all keys will be filled when fetched.

- `__debugchildren`(`self`, `filters` :: [DebugVariablesFilter](../concepts/DebugVariablesFilter.md)) -> array([DebugVariable](../concepts/DebugVariable.md)) : Called when the object is expanded to list its children. If `__debugcounts` was implemented, the client may choose to fetch Indexed and Named children sections separately, and Indexed children in 0-based pages on-demand for display. If not all values in the requested page exist (such as a key `0`), they may be omitted from output entirely. See also [describe_field](../classes/LuaDebugAdapter.md#describe-field).

---

This class also provides debug session APIs, as the global object `debugadapter` in all stages.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [tags](#tags) | [AnyBasic](../concepts/AnyBasic.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### tags

**Read:** [AnyBasic](../concepts/AnyBasic.md) · _read-only_

The value from the `tags` property of the current session's launch request

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [breakpoint](#breakpoint) | Pause execution as if a breakpoint was hit. |
| [describe_field](#describe-field) | Prepare a default debug view entry for a field, to assist in preparing custom listings. |
| [print](#print) | Print values to the debug console. This function also replaces the Lua builtin `print` during debug sessions. |
| [start_profile](#start-profile) | Start recording profiler timings. If there is a previous recording session running, it will be stopped first. This function is also available to the DAP client as the request `startProfile`, with the parameter in `argument`. A DAP event `profileRunning` will be emitted regardless of how it was called. |
| [stop_profile](#stop-profile) | Stop recording profiler timings and save to script_output. This function is also available to the DAP client as the  request `stopProfile`. A DAP event `profileComplete` will be emitted with the path to the saved file, regardless of stop was called. |

### breakpoint

`breakpoint(mesg)`

Pause execution as if a breakpoint was hit.

#### Parameters

##### mesg

**Type:** [Any](../concepts/Any.md) · _optional_

If specified, this value is displayed as if it was thrown as an error.

### describe_field

`describe_field(name, value)`

Prepare a default debug view entry for a field, to assist in preparing custom listings.

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

The name of the field

##### value

**Type:** [Any](../concepts/Any.md)

The value of the field

#### Return values

- [DebugVariable](../concepts/DebugVariable.md)

### print

`print()`

Print values to the debug console. This function also replaces the Lua builtin `print` during debug sessions.

#### Variadic parameter

**Type:** [Any](../concepts/Any.md)

Values to print

### start_profile

`start_profile({show_hook_events})`

Start recording profiler timings. If there is a previous recording session running, it will be stopped first. This function is also available to the DAP client as the request `startProfile`, with the parameter in `argument`. A DAP event `profileRunning` will be emitted regardless of how it was called.

#### Parameters

##### show_hook_events

**Type:** [boolean](../concepts/boolean.md) · _optional_

Include events to indicate time spent in hooks

### stop_profile

`stop_profile()`

Stop recording profiler timings and save to script_output. This function is also available to the DAP client as the  request `stopProfile`. A DAP event `profileComplete` will be emitted with the path to the saved file, regardless of stop was called.
