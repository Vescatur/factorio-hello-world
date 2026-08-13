# on_post_entity_died

_event_

Called after an entity dies.

**Filter:** [LuaPostEntityDiedEventFilter](../concepts/LuaPostEntityDiedEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [corpses](#corpses) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [damage_type](#damage-type) | [LuaDamagePrototype](../classes/LuaDamagePrototype.md) | yes |
| [force](#force) | [LuaForce](../classes/LuaForce.md) | yes |
| [ghost](#ghost) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [prototype](#prototype) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [unit_number](#unit-number) | [uint32](../concepts/uint32.md) | yes |

### corpses

**Type:** array[[LuaEntity](../classes/LuaEntity.md)]

The corpses created by the entity dying if any.

### damage_type

**Type:** [LuaDamagePrototype](../classes/LuaDamagePrototype.md) · _optional_

The damage type if any.

### force

**Type:** [LuaForce](../classes/LuaForce.md) · _optional_

The force that did the killing if any.

### ghost

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The ghost created by the entity dying if any.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Position where the entity died.

### prototype

**Type:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md)

The entity prototype of the entity that died.

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

The quality of the entity that died.

### surface_index

**Type:** [uint32](../concepts/uint32.md)

The surface the entity was on.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### unit_number

**Type:** [uint32](../concepts/uint32.md) · _optional_

The unit number the entity had if any.
