# on_gui_inventory_action

_event_

Called when a player interacts with a custom inventory GUI.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [defines.inventory_actions](../defines/defines.md) |  |
| [alt](#alt) | [boolean](../concepts/boolean.md) |  |
| [button](#button) | [defines.mouse_button_type](../defines/defines.md) |  |
| [control](#control) | [boolean](../concepts/boolean.md) |  |
| [element](#element) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [item](#item) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [item_number](#item-number) | [uint32](../concepts/uint32.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [shift](#shift) | [boolean](../concepts/boolean.md) |  |
| [slot](#slot) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### action

**Type:** [defines.inventory_actions](../defines/defines.md)

The action performed.

### alt

**Type:** [boolean](../concepts/boolean.md)

If alt was pressed.

### button

**Type:** [defines.mouse_button_type](../defines/defines.md)

The final mouse button used if any.

### control

**Type:** [boolean](../concepts/boolean.md)

If control was pressed.

### element

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md)

The inventory element interacted with.

### item

**Type:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _optional_

The item clicked on.

### item_number

**Type:** [uint32](../concepts/uint32.md) · _optional_

The item number clicked on (if it had one).

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player doing the action.

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _optional_

The item quality clicked on.

### shift

**Type:** [boolean](../concepts/boolean.md)

If shift was pressed.

### slot

**Type:** [uint32](../concepts/uint32.md)

The slot index that was interacted with.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
