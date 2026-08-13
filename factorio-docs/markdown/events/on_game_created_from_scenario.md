# on_game_created_from_scenario

_event_

Called when a game is created from a scenario. This is fired for every mod, even when the scenario's save data already includes it. In those cases however, [LuaBootstrap::on_init](../classes/LuaBootstrap.md#on-init) is not fired.

This event is not fired when the scenario is loaded via the map editor.

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
