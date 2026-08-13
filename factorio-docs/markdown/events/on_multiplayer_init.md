# on_multiplayer_init

_event_

Called when [LuaGameScript::is_multiplayer](../classes/LuaGameScript.md#is-multiplayer) changes to true. May also be raised when it was already true but a game was loaded from a save file and with hosting.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
