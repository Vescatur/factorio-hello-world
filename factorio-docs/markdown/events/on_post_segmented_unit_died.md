# on_post_segmented_unit_died

_event_

Called after a segmented unit dies.

**Filter:** [LuaPostSegmentedUnitDiedEventFilter](../concepts/LuaPostSegmentedUnitDiedEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [damage_type](#damage-type) | [LuaDamagePrototype](../classes/LuaDamagePrototype.md) | yes |
| [force](#force) | [LuaForce](../classes/LuaForce.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [prototype](#prototype) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [segments](#segments) | [PostSegmentDiedData](../concepts/PostSegmentDiedData.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [unit_number](#unit-number) | [uint32](../concepts/uint32.md) |  |

### damage_type

**Type:** [LuaDamagePrototype](../classes/LuaDamagePrototype.md) · _optional_

The damage type that did the killing if any.

### force

**Type:** [LuaForce](../classes/LuaForce.md) · _optional_

The force that did the killing if any.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### prototype

**Type:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md)

The prototype of the unit that died.

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

The quality of the unit that died.

### segments

**Type:** [PostSegmentDiedData](../concepts/PostSegmentDiedData.md)

Information about each of the unit's individual segments when it died.

### surface_index

**Type:** [uint32](../concepts/uint32.md)

The surface the entity was on.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### unit_number

**Type:** [uint32](../concepts/uint32.md)

The unit number of the unit that died.
