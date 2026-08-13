# on_gui_click

_event_

Called when [LuaGuiElement](../classes/LuaGuiElement.md) is clicked.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [alt](#alt) | [boolean](../concepts/boolean.md) |  |
| [button](#button) | [defines.mouse_button_type](../defines/defines.md) |  |
| [control](#control) | [boolean](../concepts/boolean.md) |  |
| [cursor_display_location](#cursor-display-location) | [GuiLocation](../concepts/GuiLocation.md) |  |
| [element](#element) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [shift](#shift) | [boolean](../concepts/boolean.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### alt

**Type:** [boolean](../concepts/boolean.md)

If alt was pressed.

### button

**Type:** [defines.mouse_button_type](../defines/defines.md)

The mouse button used if any.

### control

**Type:** [boolean](../concepts/boolean.md)

If control was pressed.

### cursor_display_location

**Type:** [GuiLocation](../concepts/GuiLocation.md)

The display location of the player's cursor.

### element

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md)

The clicked element.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who did the clicking.

### shift

**Type:** [boolean](../concepts/boolean.md)

If shift was pressed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
