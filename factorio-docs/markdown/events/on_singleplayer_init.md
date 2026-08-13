# on_singleplayer_init

_event_

Called when [LuaGameScript::is_multiplayer](../classes/LuaGameScript.md#is-multiplayer) changes to false. May also be raised when it was already false but a game was loaded from a save file without hosting.

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
