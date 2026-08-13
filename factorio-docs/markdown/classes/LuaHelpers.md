# LuaHelpers

_class_

Provides various helper and utility functions. It is accessible through the global object named `helpers` in all stages (settings, prototype and runtime).

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [game_version](#game-version) | [string](../concepts/string.md) |  |
| [instrument_mod](#instrument-mod) | [string](../concepts/string.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [stage](#stage) | `"settings"` ∣ `"prototype"` ∣ `"runtime"` |  |

### game_version

**Read:** [string](../concepts/string.md) · _read-only_

Current version of game

### instrument_mod

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The name of the active Instrument Mode mod, if any.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### stage

**Read:** `"settings"` ∣ `"prototype"` ∣ `"runtime"` · _read-only_

Stage of scripting that is currently running

## Methods

| Method | Summary |
| --- | --- |
| [check_prototype_translations](#check-prototype-translations) | Goes over all items, entities, tiles, recipes, technologies among other things and logs if the locale is incorrect. |
| [compare_versions](#compare-versions) | Compares 2 version strings. |
| [create_profiler](#create-profiler) | Creates a LuaProfiler, which is used for measuring script performance. |
| [decode_string](#decode-string) | Base64 decodes and inflates the given string. |
| [direction_to_string](#direction-to-string) | Converts the given direction into the string version of the direction. |
| [encode_string](#encode-string) | Deflates and base64 encodes the given string. |
| [evaluate_expression](#evaluate-expression) | Evaluate an expression, substituting variables as provided. |
| [is_valid_ambient_sound](#is-valid-ambient-sound) | Checks if an ambient sound of a given name is valid. |
| [is_valid_animation_path](#is-valid-animation-path) | Checks if the given animation name is valid and contains a loaded animation. |
| [is_valid_sound_path](#is-valid-sound-path) | Checks if the given SoundPath is valid. |
| [is_valid_sprite_path](#is-valid-sprite-path) | Checks if the given SpritePath is valid and contains a loaded sprite. The existence of the image is not checked for paths of type `file`. |
| [json_to_table](#json-to-table) | Convert a JSON string to a table. |
| [multilingual_to_lower](#multilingual-to-lower) | Converts the given string to lowercase and returns it. Unlike `string.lower()`, this function supports [non-Latin characters](https://factorio.com/blog/post/fff-436). |
| [parse_map_exchange_string](#parse-map-exchange-string) | Convert a map exchange string to map gen settings and map settings. |
| [recv_udp](#recv-udp) | Dispatch defines.events.on_udp_packet_received events for any new packets received by the specified player or the server. |
| [remove_path](#remove-path) | Remove a file or directory in the `script-output` folder, located in the game's [user data directory](https://wiki.factorio.com/User_data_directory). Can be used to remove files created by LuaHelpers::write_file. |
| [send_udp](#send-udp) | Send data to a UDP port on localhost for a specified player, if enabled. |
| [table_to_json](#table-to-json) | Convert a table to a JSON string |
| [write_file](#write-file) | Write a file to the `script-output` folder, located in the game's [user data directory](https://wiki.factorio.com/User_data_directory). The name and file extension of the file can be specified via the `filename` parameter. |

### check_prototype_translations

`check_prototype_translations()`

Goes over all items, entities, tiles, recipes, technologies among other things and logs if the locale is incorrect.

Also prints true/false if called from the console.

Not available in settings and prototype stages.

### compare_versions

`compare_versions(first, second)`

Compares 2 version strings.

#### Parameters

##### first

**Type:** [string](../concepts/string.md)

First version string to compare.

##### second

**Type:** [string](../concepts/string.md)

Second version string to compare.

#### Return values

- [int32](../concepts/int32.md) — -1 if first is smaller than second, 0 if first equal second, 1 if first is greater than second.

### create_profiler

`create_profiler(stopped)`

Creates a [LuaProfiler](../classes/LuaProfiler.md), which is used for measuring script performance.

LuaProfiler cannot be serialized.

Not available in settings and prototype stages.

#### Parameters

##### stopped

**Type:** [boolean](../concepts/boolean.md) · _optional_

Create the timer stopped

#### Return values

- [LuaProfiler](../classes/LuaProfiler.md)

### decode_string

`decode_string(string)`

Base64 decodes and inflates the given string.

#### Parameters

##### string

**Type:** [string](../concepts/string.md)

The string to decode.

#### Return values

- [string](../concepts/string.md) _(optional)_ — The decoded string or `nil` if the decode failed.

### direction_to_string

`direction_to_string(direction)`

Converts the given direction into the string version of the direction.

#### Parameters

##### direction

**Type:** [defines.direction](../defines/defines.md)

#### Return values

- [string](../concepts/string.md)

### encode_string

`encode_string(string)`

Deflates and base64 encodes the given string.

#### Parameters

##### string

**Type:** [string](../concepts/string.md)

The string to encode.

#### Return values

- [string](../concepts/string.md) _(optional)_ — The encoded string or `nil` if the encode failed.

### evaluate_expression

`evaluate_expression(expression, variables)`

Evaluate an expression, substituting variables as provided.

#### Parameters

##### expression

**Type:** [MathExpression](../concepts/MathExpression.md)

The expression to evaluate.

##### variables

**Type:** dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] · _optional_

Variables to be substituted.

#### Return values

- [double](../concepts/double.md)

**Example:**

```
-- Calculate the number of research units required to unlock mining productivity level 10
local formula = game.forces["player"].technologies["mining-productivity-4"].research_unit_count_formula
local units = helpers.evaluate_expression(formula, { L = 10, l = 10 })
```

### is_valid_ambient_sound

`is_valid_ambient_sound(name)`

Checks if an ambient sound of a given name is valid.

Not available in settings and prototype stages.

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

Name of the ambient sound.

#### Return values

- [boolean](../concepts/boolean.md)

### is_valid_animation_path

`is_valid_animation_path(name)`

Checks if the given animation name is valid and contains a loaded animation.

Not available in settings and prototype stages.

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

Name of an [AnimationPrototype](../prototypes/AnimationPrototype.md).

#### Return values

- [boolean](../concepts/boolean.md)

### is_valid_sound_path

`is_valid_sound_path(sound_path)`

Checks if the given SoundPath is valid.

Not available in settings and prototype stages.

#### Parameters

##### sound_path

**Type:** [SoundPath](../concepts/SoundPath.md)

Path to the sound.

#### Return values

- [boolean](../concepts/boolean.md)

### is_valid_sprite_path

`is_valid_sprite_path(sprite_path)`

Checks if the given SpritePath is valid and contains a loaded sprite. The existence of the image is not checked for paths of type `file`.

Not available in settings and prototype stages.

#### Parameters

##### sprite_path

**Type:** [SpritePath](../concepts/SpritePath.md)

Path to the image.

#### Return values

- [boolean](../concepts/boolean.md)

### json_to_table

`json_to_table(json)`

Convert a JSON string to a table.

#### Parameters

##### json

**Type:** [string](../concepts/string.md)

The string to convert.

#### Return values

- [AnyBasic](../concepts/AnyBasic.md) _(optional)_ — The returned object, or `nil` if the JSON string was invalid.

### multilingual_to_lower

`multilingual_to_lower(input)`

Converts the given string to lowercase and returns it. Unlike `string.lower()`, this function supports [non-Latin characters](https://factorio.com/blog/post/fff-436).

#### Parameters

##### input

**Type:** [string](../concepts/string.md)

#### Return values

- [string](../concepts/string.md) — The input string converted to lowercase.

### parse_map_exchange_string

`parse_map_exchange_string(map_exchange_string)`

Convert a map exchange string to map gen settings and map settings.

Not available in settings and prototype stages.

#### Parameters

##### map_exchange_string

**Type:** [string](../concepts/string.md)

#### Return values

- [MapExchangeStringData](../concepts/MapExchangeStringData.md)

### recv_udp

`recv_udp(for_player)`

Dispatch [defines.events.on_udp_packet_received](../defines/defines.md) events for any new packets received by the specified player or the server.

This must be enabled per-instance with `--enable-lua-udp`.

UDP socket when enabled requests 256KB of receive buffer from the operating system. If there is more data than this between two subsequent calls of this method, data will be lost. That also applies to periods when the game is paused or is being saved as in those case the game update is not happening.

Note: lua event is not raised immediately as the UDP packet needs to be introduced into game state by means of input actions. Please keep incoming traffic as small as possible as in case of multiplayer game with many players, all this data will have to go through the multiplayer server and be distributed to all clients.

Not available in settings and prototype stages.

#### Parameters

##### for_player

**Type:** [uint32](../concepts/uint32.md) · _optional_

If given, packets will only be read from this `player_index`. Providing `0` will only read from the server if present. In the main chunk of the runtime stage receiving the packet will always be skipped if `for_player` is set and not `0`.

### remove_path

`remove_path(path)`

Remove a file or directory in the `script-output` folder, located in the game's [user data directory](https://wiki.factorio.com/User_data_directory). Can be used to remove files created by [LuaHelpers::write_file](../classes/LuaHelpers.md#write-file).

#### Parameters

##### path

**Type:** [string](../concepts/string.md)

The path to the file or directory to remove, relative to `script-output`.

### send_udp

`send_udp(data, for_player, port)`

Send data to a UDP port on localhost for a specified player, if enabled.

This must be enabled per-instance with `--enable-lua-udp`.

#### Parameters

##### data

**Type:** [LocalisedString](../concepts/LocalisedString.md)

The content to send.

##### for_player

**Type:** [uint32](../concepts/uint32.md) · _optional_

If given, the packet will only be sent from this `player_index`. Providing `0` will only send from the server if present. `for_player` cannot be used in settings and prototype stages. In the main chunk of the runtime stage sending the packet will always be skipped if `for_player` is set and not `0`.

##### port

**Type:** [uint16](../concepts/uint16.md)

Destination port number (localhost only)

### table_to_json

`table_to_json(data)`

Convert a table to a JSON string

#### Parameters

##### data

**Type:** [table](../concepts/table.md)

#### Return values

- [string](../concepts/string.md)

### write_file

`write_file(append, data, filename, for_player)`

Write a file to the `script-output` folder, located in the game's [user data directory](https://wiki.factorio.com/User_data_directory). The name and file extension of the file can be specified via the `filename` parameter.

#### Parameters

##### append

**Type:** [boolean](../concepts/boolean.md) · _optional_

If `true`, `data` will be appended to the end of the file. Defaults to `false`, which will overwrite any pre-existing file with the new `data`.

##### data

**Type:** [LocalisedString](../concepts/LocalisedString.md)

The content to write to the file.

##### filename

**Type:** [string](../concepts/string.md)

The name of the file. Providing a directory path (ex. `"save/here/example.txt"`) will create the necessary folder structure in `script-output`.

##### for_player

**Type:** [uint32](../concepts/uint32.md) · _optional_

If given, the file will only be written for this `player_index`. Providing `0` will only write to the server's output if present. `for_player` cannot be used in settings and prototype stages. In the main chunk of the runtime stage writing the file will always be skipped if `for_player` is set and not `0`.
