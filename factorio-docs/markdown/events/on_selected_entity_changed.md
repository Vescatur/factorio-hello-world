# on_selected_entity_changed

_event_

Called after the selected entity changes for a given player.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [last_entity](#last-entity) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### last_entity

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The last selected entity if it still exists and there was one.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player whose selected entity changed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
