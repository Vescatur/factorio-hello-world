# on_pre_ghost_upgraded

_event_

Called before a ghost entity is upgraded.

**Filter:** [LuaPreGhostUpgradedEventFilter](../concepts/LuaPreGhostUpgradedEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [ghost](#ghost) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [target](#target) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### ghost

**Type:** [LuaEntity](../classes/LuaEntity.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player that did the upgrade if any.

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

### target

**Type:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
