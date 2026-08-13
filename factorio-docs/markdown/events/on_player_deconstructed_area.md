# on_player_deconstructed_area

_event_

Called when a player selects an area with a deconstruction planner.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [alt](#alt) | [boolean](../concepts/boolean.md) |  |
| [area](#area) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [item](#item) | [string](../concepts/string.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [quality](#quality) | [string](../concepts/string.md) |  |
| [record](#record) | [LuaRecord](../classes/LuaRecord.md) | yes |
| [selection_mode](#selection-mode) | [defines.selection_mode](../defines/defines.md) |  |
| [stack](#stack) | [LuaItemStack](../classes/LuaItemStack.md) | yes |
| [surface](#surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### alt

**Type:** [boolean](../concepts/boolean.md)

If normal selection or alt selection was used.

### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The area selected.

### item

**Type:** [string](../concepts/string.md)

The item used to select the area.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player doing the selection.

### quality

**Type:** [string](../concepts/string.md)

The item quality used to select the area.

### record

**Type:** [LuaRecord](../classes/LuaRecord.md) · _optional_

The record that was used to select the area.

### selection_mode

**Type:** [defines.selection_mode](../defines/defines.md)

### stack

**Type:** [LuaItemStack](../classes/LuaItemStack.md) · _optional_

The item stack used to select the area.

### surface

**Type:** [LuaSurface](../classes/LuaSurface.md)

The surface selected.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
