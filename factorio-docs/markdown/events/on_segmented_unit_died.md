# on_segmented_unit_died

_event_

Called when a segmented unit dies.

**Filter:** [LuaSegmentedUnitDiedEventFilter](../concepts/LuaSegmentedUnitDiedEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cause](#cause) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [damage_type](#damage-type) | [LuaDamagePrototype](../classes/LuaDamagePrototype.md) | yes |
| [force](#force) | [LuaForce](../classes/LuaForce.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [segmented_unit](#segmented-unit) | [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cause

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity that did the killing if available.

### damage_type

**Type:** [LuaDamagePrototype](../classes/LuaDamagePrototype.md) · _optional_

The damage type if any.

### force

**Type:** [LuaForce](../classes/LuaForce.md) · _optional_

The force that did the killing if any.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### segmented_unit

**Type:** [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md)

The unit that died.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
