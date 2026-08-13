# on_equipment_inserted

_event_

Called after equipment is inserted into an equipment grid.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [equipment](#equipment) | [LuaEquipment](../classes/LuaEquipment.md) |  |
| [grid](#grid) | [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### equipment

**Type:** [LuaEquipment](../classes/LuaEquipment.md)

The equipment inserted.

### grid

**Type:** [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md)

The equipment grid inserted into.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
