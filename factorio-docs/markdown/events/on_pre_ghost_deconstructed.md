# on_pre_ghost_deconstructed

_event_

Called before a ghost entity is destroyed as a result of being marked for deconstruction.

Also called for item request proxies before they are destroyed as a result of being marked for deconstruction.

**Filter:** [LuaPreGhostDeconstructedEventFilter](../concepts/LuaPreGhostDeconstructedEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [ghost](#ghost) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### ghost

**Type:** [LuaEntity](../classes/LuaEntity.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player that did the deconstruction if any.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
