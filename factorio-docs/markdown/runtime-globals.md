# Runtime globals

## Global objects

- `commands` :: [LuaCommandProcessor](classes/LuaCommandProcessor.md) — Allows registration of custom commands for the in-game console.
- `game` :: [LuaGameScript](classes/LuaGameScript.md) — The main scripting interface through which most of the API is accessed.
- `helpers` :: [LuaHelpers](classes/LuaHelpers.md) — Provides access to various helper and utility functions.
- `prototypes` :: [LuaPrototypes](classes/LuaPrototypes.md) — Allows read-only access to prototypes.
- `rcon` :: [LuaRCON](classes/LuaRCON.md) — Allows printing messages to the calling RCON instance, if any.
- `remote` :: [LuaRemote](classes/LuaRemote.md) — Allows registration and use of functions to communicate between mods.
- `rendering` :: [LuaRendering](classes/LuaRendering.md) — Allows rendering of geometric shapes, text and sprites in the game world.
- `script` :: [LuaBootstrap](classes/LuaBootstrap.md) — Provides an interface for registering game event handlers.
- `settings` :: [LuaSettings](classes/LuaSettings.md) — Provides access to the current mod settings.

## Global functions

### localised_print

`localised_print(string)`

`localised_print()` allows printing [LocalisedString](concepts/LocalisedString.md) to stdout without polluting the Factorio [log file](https://wiki.factorio.com/Log_file). This is primarily useful when communicating with external tools that launch Factorio as a child process.

#### Parameters

##### string

**Type:** [LocalisedString](concepts/LocalisedString.md)

### log

`log(string)`

`log()` can print [LocalisedStrings](concepts/LocalisedString.md) to the Factorio [log file](https://wiki.factorio.com/Log_file). This, in combination with the serpent library, makes debugging in the data stage easier because it allows the inspection of entire prototype tables. For example, printing all properties of the sulfur item prototype can be done like so: `log(serpent.block(data.raw["item"]["sulfur"]))`

#### Parameters

##### string

**Type:** [LocalisedString](concepts/LocalisedString.md)

### table_size

`table_size(table)`

Factorio provides the `table_size()` function as a simple way to determine the size of tables with non-continuous keys, as the standard `#` operator does not work correctly for these. The function is a C++ implementation of the following Lua code, which is faster than doing the same in Lua:

```
local function size(t)
  local count = 0
  for k,v in pairs(t) do
    count = count + 1
  end
  return count
end
```

Note that `table_size()` does not work correctly for [LuaCustomTable](classes/LuaCustomTable.md), their size has to be determined with [LuaCustomTable::length_operator](classes/LuaCustomTable.md#length-operator) instead.

#### Parameters

##### table

**Type:** [table](concepts/table.md)

#### Return values

- [uint32](concepts/uint32.md)
