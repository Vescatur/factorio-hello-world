# on_gui_leave

_event_

Called when the player's cursor leaves a [LuaGuiElement](../classes/LuaGuiElement.md) that was previously hovered.

Only fired for events whose [LuaGuiElement::raise_hover_events](../classes/LuaGuiElement.md#raise-hover-events) is `true`.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [element](#element) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### element

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md)

The element that was being hovered.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player whose cursor was hovering.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
