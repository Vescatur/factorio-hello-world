# on_player_placed_equipment

_event_

Called after the player puts equipment in an equipment grid

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [equipment](#equipment) | [LuaEquipment](../classes/LuaEquipment.md) |  |
| [grid](#grid) | [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### equipment

**Type:** [LuaEquipment](../classes/LuaEquipment.md)

The equipment put in the equipment grid.

### grid

**Type:** [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md)

The equipment grid the equipment was put in.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
