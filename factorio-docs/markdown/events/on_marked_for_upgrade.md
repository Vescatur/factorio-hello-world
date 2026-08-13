# on_marked_for_upgrade

_event_

Called when an entity is marked for upgrade with the upgrade planner or via script.

**Filter:** [LuaEntityMarkedForUpgradeEventFilter](../concepts/LuaEntityMarkedForUpgradeEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [previous_quality](#previous-quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [previous_target](#previous-target) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
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

### previous_quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _optional_

Previous upgrade target quality, if entity was already marked for upgrade.

### previous_target

**Type:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _optional_

Previous upgrade target of the entity, if entity was already marked for upgrade.

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

The target quality.

### target

**Type:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
