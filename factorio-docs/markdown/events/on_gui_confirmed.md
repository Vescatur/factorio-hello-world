# on_gui_confirmed

_event_

Called when a [LuaGuiElement](../classes/LuaGuiElement.md) is confirmed, for example by pressing Enter in a textfield.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [alt](#alt) | [boolean](../concepts/boolean.md) |  |
| [control](#control) | [boolean](../concepts/boolean.md) |  |
| [element](#element) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [shift](#shift) | [boolean](../concepts/boolean.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### alt

**Type:** [boolean](../concepts/boolean.md)

If alt was pressed.

### control

**Type:** [boolean](../concepts/boolean.md)

If control was pressed.

### element

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md)

The confirmed element.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who did the confirming.

### shift

**Type:** [boolean](../concepts/boolean.md)

If shift was pressed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
