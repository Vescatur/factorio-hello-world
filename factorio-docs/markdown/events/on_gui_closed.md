# on_gui_closed

_event_

Called when the player closes the GUI they have open.

This can only be raised when the GUI's player controller is still valid. If a GUI is thus closed due to the player disconnecting, dying, or becoming a spectator in other ways, it won't cause this event to be raised.

It's not advised to open any other GUI during this event because if this is run as a request to open a different GUI the game will force close the new opened GUI without notice to ensure the original requested GUI is opened.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [element](#element) | [LuaGuiElement](../classes/LuaGuiElement.md) | yes |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [equipment](#equipment) | [LuaEquipment](../classes/LuaEquipment.md) | yes |
| [gui_type](#gui-type) | [defines.gui_type](../defines/defines.md) |  |
| [inventory](#inventory) | [LuaInventory](../classes/LuaInventory.md) | yes |
| [item](#item) | [LuaItemStack](../classes/LuaItemStack.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [other_player](#other-player) | [LuaPlayer](../classes/LuaPlayer.md) | yes |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [tile_position](#tile-position) | [TilePosition](../concepts/TilePosition.md) | yes |

### element

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md) · _optional_

The custom GUI element that was closed.

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity or entity grid whose GUI was closed.

### equipment

**Type:** [LuaEquipment](../classes/LuaEquipment.md) · _optional_

The equipment whose GUI was closed.

### gui_type

**Type:** [defines.gui_type](../defines/defines.md)

The type of GUI that was closed.

### inventory

**Type:** [LuaInventory](../classes/LuaInventory.md) · _optional_

The script inventory whose GUI was closed.

### item

**Type:** [LuaItemStack](../classes/LuaItemStack.md) · _optional_

The item whose GUI was closed.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### other_player

**Type:** [LuaPlayer](../classes/LuaPlayer.md) · _optional_

The other player whose GUI was closed.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player closing the GUI.

### surface_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The surface index of the global electric network whose GUI was closed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### tile_position

**Type:** [TilePosition](../concepts/TilePosition.md) · _optional_

The position of the tile whose GUI was closed.
