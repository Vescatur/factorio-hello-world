# on_cancelled_deconstruction

_event_

Called when the deconstruction of an entity is canceled.

**Filter:** [LuaEntityDeconstructionCancelledEventFilter](../concepts/LuaEntityDeconstructionCancelledEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
