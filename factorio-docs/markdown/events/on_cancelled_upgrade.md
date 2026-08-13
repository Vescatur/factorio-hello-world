# on_cancelled_upgrade

_event_

Called when the upgrade of an entity is canceled.

**Filter:** [LuaUpgradeCancelledEventFilter](../concepts/LuaUpgradeCancelledEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [target](#target) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

### target

**Type:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
