# on_gui_elem_changed

_event_

Called when [LuaGuiElement](../classes/LuaGuiElement.md) element value is changed (related to choose element buttons).

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [element](#element) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### element

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md)

The element whose element value changed.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who did the change.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
