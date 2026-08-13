# on_entity_damaged

_event_

Called when an entity is damaged. This is not called when an entities health is set directly by another mod.

**Filter:** [LuaEntityDamagedEventFilter](../concepts/LuaEntityDamagedEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cause](#cause) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [damage_type](#damage-type) | [LuaDamagePrototype](../classes/LuaDamagePrototype.md) |  |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [final_damage_amount](#final-damage-amount) | [float](../concepts/float.md) |  |
| [final_health](#final-health) | [float](../concepts/float.md) |  |
| [force](#force) | [LuaForce](../classes/LuaForce.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [original_damage_amount](#original-damage-amount) | [float](../concepts/float.md) |  |
| [source](#source) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cause

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity that originally triggered the events that led to this damage, if available (e.g. the character, turret, etc. that pulled the trigger).

### damage_type

**Type:** [LuaDamagePrototype](../classes/LuaDamagePrototype.md)

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

### final_damage_amount

**Type:** [float](../concepts/float.md)

The damage amount after resistances.

### final_health

**Type:** [float](../concepts/float.md)

The health of the entity after the damage was applied.

### force

**Type:** [LuaForce](../classes/LuaForce.md) · _optional_

The force that did the attacking if any.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### original_damage_amount

**Type:** [float](../concepts/float.md)

The damage amount before resistances.

### source

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity that is directly dealing the damage, if available (e.g. the projectile, flame, sticker, grenade, laser beam, etc.).

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
