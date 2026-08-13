# on_gui_text_changed

_event_

Called when [LuaGuiElement](../classes/LuaGuiElement.md) text is changed by the player.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [element](#element) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [text](#text) | [string](../concepts/string.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### element

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md)

The edited element.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who did the edit.

### text

**Type:** [string](../concepts/string.md)

The new text in the element.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
