# on_lua_shortcut

_event_

Called when a custom [Lua shortcut](../prototypes/ShortcutPrototype.md) is pressed.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [prototype_name](#prototype-name) | [string](../concepts/string.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### prototype_name

**Type:** [string](../concepts/string.md)

Shortcut prototype name of the shortcut that was clicked.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
