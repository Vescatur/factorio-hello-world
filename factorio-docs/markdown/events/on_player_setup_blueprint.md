# on_player_setup_blueprint

_event_

Called when a player selects an area with a blueprint.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [alt](#alt) | [boolean](../concepts/boolean.md) |  |
| [area](#area) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [item](#item) | [string](../concepts/string.md) |  |
| [mapping](#mapping) | LuaLazyLoadedValue[dictionary[[uint32](../concepts/uint32.md) → [LuaEntity](../classes/LuaEntity.md)]] |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [quality](#quality) | [string](../concepts/string.md) |  |
| [record](#record) | [LuaRecord](../classes/LuaRecord.md) | yes |
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

### mapping

**Type:** LuaLazyLoadedValue[dictionary[[uint32](../concepts/uint32.md) → [LuaEntity](../classes/LuaEntity.md)]]

The blueprint entity index to source entity mapping. Note: if any mod changes the blueprint this will be incorrect.

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

The record that is being reassigned. This blueprint record is writable even if it is in the "my blueprints" shelf.

### stack

**Type:** [LuaItemStack](../classes/LuaItemStack.md) · _optional_

The item stack used to select the area.

### surface

**Type:** [LuaSurface](../classes/LuaSurface.md)

The surface selected.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
