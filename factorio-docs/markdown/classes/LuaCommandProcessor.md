# LuaCommandProcessor

_class_

Allows for the registration of custom console commands through the global object named `commands`. Similarly to [event subscriptions](../classes/LuaBootstrap.md#on-event), these don't persist through a save-and-load cycle.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [commands](#commands) | dictionary[[string](../concepts/string.md) → [LocalisedString](../concepts/LocalisedString.md)] |  |
| [game_commands](#game-commands) | dictionary[[string](../concepts/string.md) → [LocalisedString](../concepts/LocalisedString.md)] |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |

### commands

**Read:** dictionary[[string](../concepts/string.md) → [LocalisedString](../concepts/LocalisedString.md)] · _read-only_

Lists the custom commands registered by scripts through `LuaCommandProcessor`.

### game_commands

**Read:** dictionary[[string](../concepts/string.md) → [LocalisedString](../concepts/LocalisedString.md)] · _read-only_

Lists the built-in commands of the core game. The [wiki](https://wiki.factorio.com/Console) has an overview of these.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

## Methods

| Method | Summary |
| --- | --- |
| [add_command](#add-command) | Add a custom console command. |
| [remove_command](#remove-command) | Remove a custom console command. |

### add_command

`add_command(function, help, name)`

Add a custom console command.

Trying to add a command with the `name` of a game command or the name of a custom command that is already in use will result in an error.

This example command will register a custom event called `print_tick` that prints the current tick to either the player issuing the command or to everyone on the server, depending on the command parameter:

```
commands.add_command("print_tick", nil, function(command)
  if command.player_index ~= nil and command.parameter == "me" then
    game.get_player(command.player_index).print(command.tick)
  else
    game.print(command.tick)
  end
end)
```

This shows the usage of the table that gets passed to any function handling a custom command. This specific example makes use of the `tick` and the optional `player_index` and `parameter` fields. The user is supposed to either call it without any parameter (`"/print_tick"`) or with the `"me"` parameter (`"/print_tick me"`).

#### Parameters

##### function

**Type:** function([CustomCommandData](../concepts/CustomCommandData.md))

The function that will be called when this command is invoked.

##### help

**Type:** [LocalisedString](../concepts/LocalisedString.md)

The localised help message. It will be shown to players using the `/help` command.

##### name

**Type:** [string](../concepts/string.md)

The desired name of the command (case sensitive).

### remove_command

`remove_command(name)`

Remove a custom console command.

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

The name of the command to remove (case sensitive).

#### Return values

- [boolean](../concepts/boolean.md) — Whether the command was successfully removed. Returns `false` if the command didn't exist.
