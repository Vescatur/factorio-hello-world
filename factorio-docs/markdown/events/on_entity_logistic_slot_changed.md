# on_entity_logistic_slot_changed

_event_

Called when one of an entity's logistic slots changes.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [section](#section) | [LuaLogisticSection](../classes/LuaLogisticSection.md) |  |
| [slot_index](#slot-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity for whom a logistic slot was changed.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player who changed the slot, or `nil` if changed by script.

### section

**Type:** [LuaLogisticSection](../classes/LuaLogisticSection.md)

The section changed.

### slot_index

**Type:** [uint32](../concepts/uint32.md)

The slot index that was changed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
