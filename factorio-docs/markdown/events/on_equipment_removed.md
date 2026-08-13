# on_equipment_removed

_event_

Called after equipment is removed from an equipment grid.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [uint32](../concepts/uint32.md) |  |
| [equipment](#equipment) | [string](../concepts/string.md) |  |
| [grid](#grid) | [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [quality](#quality) | [string](../concepts/string.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### count

**Type:** [uint32](../concepts/uint32.md)

The count of equipment removed.

### equipment

**Type:** [string](../concepts/string.md)

The equipment removed.

### grid

**Type:** [LuaEquipmentGrid](../classes/LuaEquipmentGrid.md)

The equipment grid removed from.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### quality

**Type:** [string](../concepts/string.md)

The equipment quality.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
